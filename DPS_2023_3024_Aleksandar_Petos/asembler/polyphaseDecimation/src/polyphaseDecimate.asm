
	.mmregs 
	
	.sect	".text:fir"
	.align 4

	.def	_polyphaseDecimation

;----------------------------------------------------------------------
;   void polyphaseDecimation(Int16 *x,            => AR0
;                 			Int16 blkSize,       => T0
;                 			Int16 *h,            => AR1
;                 			Int16 order,         => T1
;                 			Int16 *y,            => AR2
;                 			Int16 *w,            => AR3
;                 			Int16 *index)        => AR4
;----------------------------------------------------------------------

_polyphaseDecimation:
   pshm  ST1_55             ; Save ST1, ST2, and ST3
    pshm  ST2_55
    pshm  ST3_55
    
    or    #0x340,mmap(ST1_55); Set FRCT,SXMD,SATD
    bset  SMUL               ; Set SMUL
    mov   XAR1,XCDP          ; CDP as  coefficient pointer 
    mov   XAR1,XAR7			 ; AR5 as soefficient pointer	
    mov   mmap(AR1),BSAC     ; Set up base address for CDP
    mov   mmap(AR1),BSA67    ; Set up base address for AR5  
    mov   mmap(T1),BKC       ; Set the coefficient array size = order
    mov   mmap(T1),BK47      ; Set the coefficient array size = order
    mov   XAR3,XAR1          ; AR1 and AR3 are signal buffer pointers
    mov   mmap(AR3),BSA01    ; Set base address for AR1    
    mov   mmap(AR3),BSA23    ; Set base address for AR3
    mov   #0,CDP             ; Start from the 1st coefficient
    mov   #1,AR7
    mov   mmap(T1),BK03      ; Set signal buffer x[] size as order
    
    mov   *AR4,AR1           ; AR1 = signal buffer index	  
    mov   *AR4,AR3           ; AR3 = signal buffer index

    or    #0x18A,mmap(ST2_55); CDP, AR1, AR3, AR5 circular pointers
    amar  *AR1+              ; AR1 delayline index+1  
    sub   #1,T0              ;   as outer repeat counter
    mov   T0,BRC0            ; Outer loop couter, blkSize-1	
    sfts  T1,#-1             ; Use order/2
    sub   #3,T1,T0           
    mov   T0,BRC1            ;order/2 -2 
    mov   #2,T0
    mov   #0,T1
||  rptblocal sample_loop-1
    mov   *AR0+,*AR1         ; Put new sample to signal buffer x[n]
    mov   *AR0+,*AR3         ; Put next new sample to location x[n+1]

    mpym  *(AR1+T0),*(CDP+T0),AC0    ; Do the 1st operation
    mpym  *(AR3+T0),*(AR7+T0),AC1    ; Do the 1st operation
|| rptblocal filter_loop-1

    macm  *(AR1+T0),*(CDP+T0),AC0
    macm  *(AR3+T0),*(AR7+T0),AC1
filter_loop
	macmr  *AR1,*(CDP+T0),AC0
	mov     hi(AC0),T3
	add     T1,T3
	mov     T3,*AR2+
    macmr  *AR3,*(AR7+T0),AC1
    mov     hi(AC1),T1
    
sample_loop
	
    popm  ST3_55             ; Restore ST1, ST2, and ST3
    popm  ST2_55
    popm  ST1_55
    mov   AR3,*AR4           ; Return signal buffer index
    ret
    .end
