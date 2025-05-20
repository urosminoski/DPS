import numpy as np
from fxpmath import Fxp
import matplotlib.pyplot as plt
import scipy.signal

def remezlp( Fpass, Fstop, deltaPass, deltaStop, forceOrder='none', even_n = False, nPoints=8192, Nmax=200):
    """
    Design low pass FIR filter with given specifications.
    Parameter forceOrder can be used to force even or odd filter order
    """
    
    if (Fpass>Fstop) or (deltaPass<0) or (deltaStop<0):
        # Specifications are not valid
        return np.array([])
    
    remez = scipy.signal.remez
    freqz = scipy.signal.freqz
    
    # Filter order initial guess
    N = int(-20*np.log10(deltaStop)/(23*(Fstop-Fpass)))
    # Scipy Remez uses number of taps instead of filter order.
    if forceOrder == 'even':
        if N%2==0:
            N += 1
    if forceOrder == 'odd':
        if N%2==1:
            N += 1
            
    while N<Nmax:
        # Design the filter.
        b = scipy.signal.remez(N, [0.0, Fpass, Fstop, 0.5], [1,0], weight=[1, deltaPass/deltaStop], fs = 1)
        
        # Check if filter meets specifications
        w, h = freqz(b, 1, worN = nPoints, fs=1)
        H = abs(h)
        specOK = True
        # Check specifications in pass band
        if np.sum(((w<Fpass)*abs(H-1.0))>deltaPass)>0:
            specOK = False
        if np.sum(((w>Fstop)*H)>deltaStop)>0:
            specOK = False
        if even_n == False:
            if N%2 == 0:
                specOK = False
        else:
            if N%2 == 1:
                specOK = False
    
        if specOK:
            return b
        else:
            if (forceOrder == 'even') or (forceOrder == 'odd'):
                N += 2
            else:
                N += 1
    return []

def genTestSpectrum(n, freq, amp, randPhase=False):
    # Generate test spectrum
    # Arguments:
    #    n    - number of samples
    #    freq - tuple of digital frequencies (startFreq, endFreq) in range (0, 0.5)
    #    amp  - tuple of amplitudes (ampStart, ampEnd)
    #    randPhase - if True, assign random phase to each sample
    x = np.zeros(n, dtype='complex128')
    freqStart, freqEnd = freq
    ampStart, ampEnd = amp
    indStart = round(n*freqStart)
    indEnd = round(n*freqEnd)
    x[indStart:indEnd] = ampStart - np.linspace(0, 1, num=indEnd-indStart) * (ampStart-ampEnd)
    if randPhase:
        x[indStart:indEnd] *= np.exp(1j*2*np.pi*np.random.rand(indEnd-indStart)) # randomize phase
    x[0] = abs(x[1])/2
    timeDomain = np.fft.ifft(x)
    return(timeDomain)

def plot_spectrogram(signal, fs, title="Spectrogram", nperseg=128, noverlap=64, 
                     cmap='viridis', y_factor=1.0, y_label='Frequency [Hz]'):
    f, t, Sxx = scipy.signal.spectrogram(signal, fs=fs, nperseg=nperseg, noverlap=noverlap)
    
    # Convert frequency axis
    f_converted = f * y_factor

    plt.figure(figsize=(10, 4))
    plt.pcolormesh(t, f_converted, 10 * np.log10(Sxx + 1e-10), shading='gouraud', cmap=cmap)
    plt.ylabel(y_label)
    plt.xlabel('Time [s]')
    plt.title(title)
    plt.colorbar(label='Power [dB]')
    plt.tight_layout()
    plt.show()


def fftdB(x):
    return 20*np.log10(np.abs(np.fft.fftshift(np.fft.fft(x))) + 1e-15)

def makePolyphase(coeff, M):
    # Split coefficients into polyphase components
    n = int(np.ceil(len(coeff)/M))
    tmp = np.zeros(n*M)
    tmp[:len(coeff)] = coeff
    polyCoeff = np.zeros((M,n))
    for i in range(M):
        polyCoeff[i,:] = tmp[i::M]
    return polyCoeff

def expander(x, I):
    # Upsample the signal by factor I
    #   x - input signal
    #   I - upsampling factor
    nx = len(x)
    xI = np.zeros(nx*I, dtype=complex)
    xI[::I] = x
    return xI

def compressor(x, D):
    # Downsample the signal by factor D
    #   x - input signal
    #   D - downsampling factor
    return x[0::D]

def fir_direct_transposed(x, h):
    N = len(h)
    y = np.zeros(len(x))
    acc = np.zeros(N)  # state of each stage

    for n in range(len(x)):
        wn = h[0] * x[n]
        for i in range(1, N):
            wn += h[i] * x[n - i] if n - i >= 0 else 0.0
        y[n] = wn

    return y

def fir_direct_transposed_Fxp(x, h, n_word=16, n_frac=8):
    N = len(h)
    template1 = Fxp(0.0, signed=True, n_word=n_word, n_frac=n_frac, auto=False)
    template2 = Fxp(0.0, signed=True, n_word=2*n_word, n_frac=2*n_frac, auto=False)
    
    x_fxp = [Fxp(val, like=template1) for val in x]
    h_fxp = [Fxp(val, like=template1) for val in h]
    y_fxp = [Fxp(0.0, like=template2) for _ in range(len(x))]

    for n in range(len(x)):
        wn = Fxp((h_fxp[0] * x_fxp[n]), like=template2)
        for i in range(1, N):
            if n - i >= 0:
                wn = Fxp((wn + h_fxp[i] * x_fxp[n - i]), like=template2)
        y_fxp[n] = Fxp(wn, like=template2)

    return y_fxp

def polyI(x, firCoeff, I):
    polyFIR = makePolyphase(firCoeff, I)
    xPoly = np.zeros(len(x)*I, dtype=x.dtype)
    for i in range(I):
        tmp = scipy.signal.lfilter(polyFIR[i], 1.0, np.concatenate((x, x[:int(len(firCoeff)/I-1)])))
        tmp = tmp[int(len(firCoeff)/I-1):]
        xPoly[i::I] = tmp
    return xPoly

def polyD(x, firCoeff, D):
    polyFIR = makePolyphase(firCoeff, D)
    x_periodic = np.concatenate((x,x[0:len(firCoeff)-1]))
    res = 0
    for i in range(D):
        FIR_in = x_periodic[i::D]
        # tmp = scipy.signal.lfilter(polyFIR[D-1-i], 1.0, FIR_in)
        tmp = fir_direct_transposed(FIR_in, polyFIR[D-1-i])
        tmp = tmp[int(len(firCoeff)/D):]
        res += tmp
    res = np.array(res)
    return res

def polyD_Fxp(x, firCoeff, D, n_word=16, n_frac=8):
    template1 = Fxp(0.0, signed=True, n_word=n_word, n_frac=n_frac, auto=False)
    template2 = Fxp(0.0, signed=True, n_word=2*n_word, n_frac=2*n_frac, auto=False)
    
    polyFIR = makePolyphase(firCoeff, D)
    x_periodic = np.concatenate((x,x[0:len(firCoeff)-1]))
    res = None
    
    for i in range(D):
        FIR_in = x_periodic[i::D]
        tmp = fir_direct_transposed_Fxp(FIR_in, polyFIR[D-1-i], n_word=n_word, n_frac=n_frac)
        tmp = tmp[int(len(firCoeff)/D):]
        
        if res is None:
            res = [Fxp(val, like=template2) for val in tmp]
        else:
            # Element-wise Fxp addition
            res = [Fxp(res[j] + tmp[j], like=template2) for j in range(len(tmp))]
            
    # res = np.array(res)
    return [Fxp(val, like=template1) for val in res]

