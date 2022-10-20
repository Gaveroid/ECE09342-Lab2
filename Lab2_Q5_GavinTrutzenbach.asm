;-------------------------------------------------------------------------------
; IES Lab 2 - Question 5
; Gavin Trutzenbach
; 10-20-2022
;-------------------------------------------------------------------------------
            .cdecls C,LIST,"msp430.h"       ; Include device header file
            
;-------------------------------------------------------------------------------
            .def    RESET                   ; Export program entry-point to
                                            ; make it known to linker.
;-------------------------------------------------------------------------------
            .text                           ; Assemble into program memory.
            .retain                         ; Override ELF conditional linking
                                            ; and retain current section.
            .retainrefs                     ; And retain any sections that have
                                            ; references to current section.

;-------------------------------------------------------------------------------
RESET       mov.w   #__STACK_END,SP         ; Initialize stackpointer
StopWDT     mov.w   #WDTPW|WDTHOLD,&WDTCTL  ; Stop watchdog timer


;-------------------------------------------------------------------------------
; Main loop here
;-------------------------------------------------------------------------------

			cmp.w R4, R5;
			jhs #Greater;
			jhs #Less;

Greater:
			mov.w #1d, 0(R4);
			mov.w #2d, 1(R4);
			mov.w #3d, 2(R4);
			mov.w #4d, 3(R4);
			mov.w #5d, 4(R4);
			add #1d, R4;

Less:
			mov.w #10d, 0(R4);
			mov.w #9d, 1(R4);
			mov.w #8d, 2(R4);
			mov.w #7d, 3(R4);
			mov.w #6d, 4(R4);
			sub #1d, R4;
			
;-------------------------------------------------------------------------------
; Stack Pointer definition
;-------------------------------------------------------------------------------
            .global __STACK_END
            .sect   .stack
            
;-------------------------------------------------------------------------------
; Interrupt Vectors
;-------------------------------------------------------------------------------
            .sect   ".reset"                ; MSP430 RESET Vector
            .short  RESET
            
