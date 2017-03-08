;********** MSYS, LAB1 **********
;******* Henning Hargaard *******
;*******  14.august 2015  *******
;********************************

;********** INITIERING **********
   LDI  R16,HIGH(RAMEND) ;Initialize Stack Pointer
   OUT  SPH,R16
   LDI  R16,LOW(RAMEND)
   OUT  SPL,R16           
   SER  R16              ;PORTB = Outputs
   OUT  DDRB,R16

 ;******************************



 LDI R20,20
 LDI R21,21
 PUSH R21
 PUSH R20
 CALL  NULSTIL
 LDI R20,100
 LDI R21,200
 POP R20
 POP R21
 HER: JMP HER


 NULSTIL: 
 CLR R20
 CLR R21
 RET
