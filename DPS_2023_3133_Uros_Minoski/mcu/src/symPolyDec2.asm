	
	.mmregs 
	
	.sect	".text:fir"
	.align 4

	.def	_sympolyDec2
	
; ----------------------------------------------------------------------
; void polyDec2(Int16 *x,      ; AR0
;               Int16 blkSize, ; T0
;               Int16 *h,      ; AR1
;               Int16 order,   ; T1
;               Int16 *y,      ; AR2
;               Int16 *w,      ; AR3
;               Int16 *index); ; AR4
; ----------------------------------------------------------------------
	
_sympolyDec2:
	pshm 	ST1_55
	pshm 	ST2_55
	pshm 	ST3_55
	
	or 		#0x03C0, mmap(ST1_55)	; Set FRCT (bit10), SXMD (bit9), SATD (bit8) and SMUL (bit7)
	or    	#0x18A,mmap(ST2_55)		; CDP, AR1, AR3, AR5 circular pointers
	
	mov		mmap(T1), BK03 			; AR1 & AR3 buffer sizes
	mov		mmap(T1), BK47 			; AR5 & AR6 buffer sizes
	
	
	; Coeff buffer
	mov		XAR1, XCDP				; CDP - Phase 0 buffer
	mov 	XAR1, XAR7				; AR7 - Phase 1 buffer
	mov 	mmap(AR1), BSAC			; Start address for CDP 
	mov 	mmap(AR1), BSA67		; Start address for AR7
	sfts 	T1, #-1
	mov		mmap(T1), BKC			; CDP buffer size order/2
	mov		mmap(T1), BK47			; AR7 buffer size order/2
	mov		#0, CDP					; CDP starts form 1st coeff
	; mov 	#0, AR7 				; AR7 starts from 2nd coeff
	
	; Data buffer					; AR3 - Phase 1 buffer
	mov 	XAR3, XAR1 				; AR1 - Phase 0 buffer
	mov 	mmap(AR3), BSA01		; Start address for AR1
	mov 	mmap(AR3), BSA23		; Start address for AR3
	; mov		mmap(T1), BK03 			; AR1 & AR3 buffer sizes
	
	
	mov 	T1, T3
	add 	#1, T1, T2
	add		#4, T2, T1
	
	; Outer loop param
	sfts 	T0, #-1
	sub 	#1, T0 					; T0 = blkSize/2-1
	mov 	T0, BRC0				; Initialize outrer loop to BRC0 = blkSize-1
	; Inner loop param
	sfts 	T3, #-1					; T2 = order/4
	sub 	#3, T3, T0 				; T0 = order/4-2-1
	mov 	T0, BRC1 				; Initialize inner loop to BRC1 = blkSize-1
	
	mov 	T2, T0
	
	; T0 = order/2+1
	; T1 = T0 + 4
	
	; Odd samples (-> CDP)
	mov 	*AR4, AR3 		; Buffer HEAD
	mov 	*AR4, AR1 		; Buffer TAIL
	amar	*AR1-
	amar 	*AR1-
	
	; Outer loop
	rptblocal sample_loop-1
	; mov 	*AR0+, *AR3				; First new sample goes to phase 0
	; mov 	*AR0+, *AR1				; Next new sample goes to phase 1
	; mpym	*(AR3+T0), *(CDP+T0), AC0
	; mpym	*(AR1+T0), *(AR7+T0), AC1
	
	mov T0, T2
	mov #3, T0
	
	; Phase 1
	mov 	*AR0+, AC1
	mov		#0, AC0
	mov 	AC1<<#-1, *AR3
	add 	*AR3+, *AR1+, AC1
	; Phase 0
	mov 	*AR0+, AC3
	mov 	#0, AC2
	mov 	AC3<<#-1, *AR3
	add		*AR3+, *(AR1-T0), AC3
	; mov 	T2, T0
	
	; Inner loop
	rptblocal fir_loop-1
	; macm	*(AR3+T0), *(CDP+T0), AC0
	; macm	*(AR1+T0), *(AR7+T0), AC1
	firsadd	*AR3+, *AR1+, *CDP+, AC1, AC0
	firsadd	*AR3+, *(AR1-T0), *CDP+, AC3, AC2
fir_loop
	
	; macm 	*AR3, *(CDP+T0), AC0
	; macm 	*AR1, *(AR7+T0), AC1
	; add 	AC0, AC1
	; mov 	rnd(hi(AC1)), *AR2+
	
	mov 	T2, T0
	firsadd	*AR3+, *AR1+, *CDP+, AC1, AC0
	firsadd	*(AR3-T0), *(AR1-T1), *CDP+, AC3, AC2 
	
	macm 	*CDP+, AC1, AC0
	macm 	*CDP+, AC3, AC2
	
	add 	AC2, AC0
	mov 	rnd(hi(AC0)), *AR2+
	
	
	
	; macmr 	*AR1, *(CDP+T0), AC0
	; mov 	hi(AC0), T3
	; add 	T1, T3
	; mov 	T3, *AR2+
	
	; macmr 	*AR3, *(AR7+T0), AC1
	; mov 	hi(AC1), T1
sample_loop
	
	mov   AR3, *AR4 
	popm  ST3_55             ; Restore ST1, ST2, and ST3
    popm  ST2_55
    popm  ST1_55
	ret
	
	.end
