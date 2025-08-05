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

# def plot_spectrogram(signal, fs, title="Spectrogram", nperseg=128, noverlap=64, 
#                      cmap='viridis', y_factor=1.0, y_label='Frequency [Hz]'):
#     f, t, Sxx = scipy.signal.spectrogram(signal, fs=fs, nperseg=nperseg, noverlap=noverlap)
    
#     # Convert frequency axis
#     f_converted = f * y_factor

#     plt.figure(figsize=(10, 4))
#     plt.pcolormesh(t, f_converted, 10 * np.log10(Sxx + 1e-10), shading='gouraud', cmap=cmap)
#     plt.ylabel(y_label)
#     plt.xlabel('Time [s]')
#     plt.title(title)
#     plt.colorbar(label='Power [dB]')
#     plt.tight_layout()
#     plt.show()

def plot_spectrogram(signal, fs, title="Spectrogram", nperseg=128, noverlap=64,
                     cmap='viridis', y_factor=1.0, y_label='Frequency [Hz]',
                     db_min=-60.0, num_ticks=4):
    """
    db_min: minimum dB (≤ 0) to display after normalizing the peak to 0 dB.
            Values below this floor are clipped to db_min.
    num_ticks: number of ticks on the colorbar (>=2). Use None to keep Matplotlib defaults.
    """

    win = scipy.signal.windows.triang(nperseg)
    f, t, Sxx = scipy.signal.spectrogram(
        signal, fs=fs, window=win, nperseg=nperseg, noverlap=noverlap
    )

    # Frequency axis conversion
    f_converted = f * y_factor

    # Power in dB (normalize so the maximum is 0 dB)
    power_dB = 10 * np.log10(Sxx + 1e-10)
    power_dB -= np.max(power_dB)

    # Validate and apply dB floor
    if db_min is None:
        vmin = float(np.min(power_dB))  # auto
    else:
        if db_min > 0:
            raise ValueError("db_min must be ≤ 0 (it's relative to the peak at 0 dB).")
        vmin = float(db_min)
        power_dB = np.clip(power_dB, vmin, 0.0)

    vmax = 0.0  # top of the scale is always 0 dB (peak)

    plt.figure(figsize=(10, 4))
    mesh = plt.pcolormesh(
        t, f_converted, power_dB, shading='gouraud',
        cmap=cmap, vmin=vmin, vmax=vmax
    )
    plt.ylabel(y_label)
    plt.xlabel('Time [s]')
    plt.title(title)

    # Colorbar with evenly spaced ticks from the floor up to 0 dB
    cbar = plt.colorbar(mesh, label='Power [dB]')
    if num_ticks and num_ticks >= 2:
        tick_vals = np.linspace(vmin, vmax, num_ticks)
        cbar.set_ticks(tick_vals)
        cbar.set_ticklabels([f"{val:.1f}" for val in tick_vals])

    plt.tight_layout()
    plt.show()



def fftdB(x, win=False):
    if win:
        x = x*scipy.signal.windows.hann(len(x), False)
    return 20*np.log10(np.abs(np.fft.fftshift(np.fft.fft(x))) + 1e-15)

def makePolyphase(coeff, M):
    coeff = np.asarray(coeff)   
    # Split coefficients into polyphase components
    n = int(np.ceil(len(coeff)/M))
    tmp = np.zeros(n*M, dtype=coeff.dtype)
    tmp[:len(coeff)] = coeff
    polyCoeff = np.zeros((M,n), dtype=coeff.dtype)
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
    # x_periodic = np.concatenate((x,x[0:len(firCoeff)-1]))
    res = 0
    for i in range(D):
        # FIR_in = x_periodic[i::D]
        FIR_in = x[i::D]
        # tmp = scipy.signal.lfilter(polyFIR[D-1-i], 1.0, FIR_in)
        tmp = fir_direct_transposed(FIR_in, polyFIR[D-1-i])
        # tmp = tmp[int(len(firCoeff)/D):]
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

def float_to_q1n(signal, n_frac):
    # signal /= np.max(n_frac)
    """Convert float list to Q1.n_frac fixed-point signed integers"""
    scale = 1 << n_frac  # 2^n_frac
    max_val = (1 << (n_frac)) - 1  # maximum positive integer value
    min_val = -1 << n_frac         # minimum negative value

    result = []
    for x in signal:
        val = int(x * scale)
        val = min(max(val, min_val), max_val)  # saturate to range
        result.append(val)
    return result


def saturate_qmn(value: int, m_int: int, n_frac: int) -> int:
    """
    Saturate signed fixed-point integer in Qm.n format.

    Args:
        value   : int - raw integer value
        m_int   : int - number of integer bits (includes sign bit)
        n_frac  : int - number of fractional bits

    Returns:
        Saturated integer that fits in Qm.n range
    """
    total_bits = m_int + n_frac
    min_val = -(1 << (m_int - 1)) * (1 << n_frac)         # -2^(m-1) * 2^n = raw int min
    max_val = ((1 << (m_int - 1))) * (1 << n_frac) - 1 # (2^(m-1) - 2^-n) as int
    # print(min_val, max_val)

    return max(min(value, max_val), min_val)

def fir_direct_q1n(x_q, h_q, n_frac, saturate=True):
    """
    Fixed-point Direct FIR filter in Q1.n_frac format (1 integer bit + n_frac fractional).
    
    Parameters:
        x       : input samples (float or int)
        h       : coefficients (float or int)
        n_frac  : number of fractional bits
    Returns:
        y_q1n   : output list of Q1.n_frac integers (saturated)
    """
    N = len(h_q)

    y_q = np.zeros(len(x_q))
    for n in range(len(x_q)):
        acc = 0  # Accumulator in Q2.(2*n_frac)
        for i in range(N):
            if n - i >= 0:
                product = h_q[i] * x_q[n - i]  # Q1.n × Q1.n = Q2.2n
                acc = saturate_qmn(acc+product, m_int=2, n_frac=2*n_frac)
                # acc += product

        # Shift from Q2.2n → Q1.n
        if saturate:
            acc >>= n_frac+1

        # Saturate back to Q1.n range
        # y = saturate_q1n(acc, n_frac)
        y_q[n] = acc

    return y_q

def fir_transposed_q1n(x_q, h_q, n_frac, saturate=True):
    """
    Fixed-point Transposed FIR filter in Q1.n_frac format (1 integer bit + n_frac fractional).
    
    Parameters:
        x       : input samples (float or int)
        h       : coefficients (float or int)
        n_frac  : number of fractional bits
    Returns:
        y_q1n   : output list of Q1.n_frac integers (saturated)
    """
    N = len(h_q)
    # delay_line[i] will hold s_{i+1}[n-1], for i=0..N-2
    delay_line = np.zeros(N-1, dtype="int")
    y_q = np.zeros(len(x_q), dtype="int")

    for n in range(len(x_q)):
        # 1) accumulate tap-0 + the oldest partial sum (delay_line[0])
        acc = saturate_qmn(h_q[0] * x_q[n] + delay_line[0], m_int=2, n_frac=2*n_frac)

        # 2) shift through the rest of the delay line:
        #    new s1 = h[1]*xn + old s2
        #    new s2 = h[2]*xn + old s3
        #    … 
        for i in range(N - 2):
            delay_line[i] = saturate_qmn(h_q[i+1] * x_q[n] + delay_line[i+1], m_int=2, n_frac=2*n_frac)

        # 3) last stage has no following partial sum:
        delay_line[N-2] = h_q[N-1] * x_q[n]

        # 4) bring back from Q2.2n to Q1.n_frac
        if saturate:
            acc >>= n_frac+1

        # 5) saturate into Q1.n_frac range
        y_q[n] = acc #saturate_q1n(acc, n_frac)

    return y_q

def poly_decimation_q1n(x_q, h_q, D, n_frac):
    x_q = np.asarray(x_q)
    pad = (-len(x_q)) % D
    if pad > 0:
        x_q = np.concatenate([x_q, np.zeros(pad, dtype=x_q.dtype)])
        
    poly_h_q = makePolyphase(h_q, D)  # shape: (D, n)

    Nout = int(np.ceil(len(x_q) / D))
    acc = np.zeros(Nout, dtype=x_q.dtype)

    n = poly_h_q.shape[1]  # taps per phase

    for i in range(D):
        # grab every D-th sample starting at offset i
        FIR_in = x_q[i::D]
        # FIR_in = x_q[i::D]
        # filter with the reversed polyphase order
        tmp = fir_transposed_q1n(FIR_in, poly_h_q[D-1-i], n_frac=2*n_frac, saturate=False)

        # clip tmp to avoid overshooting acc length
        # acc = saturate_qmn(acc + tmp, m_int = 2, n_frac=2*n_frac)
        acc += tmp
        # for k in range(len(acc)):
        #     acc[k] = saturate_qmn(acc[k] + tmp[k], m_int=2, n_frac=2*n_frac)

    # shift & saturate
    # for k in range(Nout):
    #     v = acc[k] >> n_frac+1
    #     acc[k] = v

    return acc

