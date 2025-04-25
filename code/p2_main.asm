; ###############################################################
; #                                                             #
; #  p2_main.asm for                                            #
; #  C64 COMAL80 SOURCE CODE                                    #
; #  Version 1.0 (2025.04.09)                                   #
; #  Copyright (c) 2025 Claus Schlereth                         #
; #                                                             #
; #  This version of the source code is under MIT License       #
; #                                                             #
; #  This source code can be found at:                          #
; #  https://github.com/LeshanDaFo/C64-COMAL-2.01               #
; #  This source code is based on the existing Modules          #
; #  found in several locations in the Internet                 #
; #                                                             #
; ###############################################################


;!source "code/c64symb.asm"
;!source "code/def.asm"

!pseudopc $8000 {


    !word COLD      ; $CFAA
    !word WARM      ; $CF70

    !pet "CBM80"


    !pet $01,")" 
    !pet $01,"(" 
    !pet $01,"," 
    !pet $04,"auto"
    !pet $05,"basic"
    !pet $04,"case"
    !pet $05,"chain"
    !pet $03,"chr"
    !pet $05,"close"
    !pet $06,"closed"
    !pet $03,"con"
    !pet $03,"cos"
    !pet $04,"data"
    !pet $02,"at"
    !pet $03,"del"
    !pet $03,"dim"
    !pet $03,"div"
    !pet $02,"do"
    !pet $04,"elif"
    !pet $04,"else"
    !pet $03,"end"
    !pet $07,"endcase"
    !pet $05,"endif"
    !pet $07,"endproc"
    !pet $08,"endwhile"
    !pet $05,"enter"
    !pet $03,"eod"
    !pet $03,"eof"
    !pet $03,"esc"
    !pet $04,"exec"
    !pet $03,"exp"
    !pet $05,"false"
    !pet $03,"for"
    !pet $04,"goto"
    !pet $02,"if"
    !pet $02,"in"
    !pet $05,"input"
    !pet $03,"int"
    !pet $05,"label"
    !pet $03,"len"
    !pet $03,"let"
    !pet $04,"list"
    !pet $04,"load"
    !pet $03,"log"
    !pet $03,"mod"
    !pet $03,"new"
    !pet $04,"next"
    !pet $03,"not"
    !pet $02,"of"
    !pet $04,"open"
    !pet $02,"or"
    !pet $03,"ord"
    !pet $09,"otherwise"
    !pet $06,"output"
    !pet $05,"print"
    !pet $04,"proc"
    !pet $04,"read"
    !pet $03,"ref"
    !pet $04,"page"
    !pet $05,"renum"
    !pet $06,"repeat"
    !pet $07,"restore"
    !pet $03,"rnd"
    !pet $03,"run"
    !pet $04,"save"
    !pet $06,"select"
    !pet $03,"sgn"
    !pet $03,"sin"
    !pet $04,"size"
    !pet $03,"spc"
    !pet $03,"sqr"
    !pet $06,"status"
    !pet $04,"step"
    !pet $04,"stop"
    !pet $03,"tab"
    !pet $03,"tan"
    !pet $04,"then"
    !pet $04,"time"
    !pet $02,"to"
    !pet $04,"trap"
    !pet $04,"true"
    !pet $05,"until"
    !pet $05,"using"
    !pet $04,"when"
    !pet $05,"while"
    !pet $05,"write"
    !pet $04,"zone"
    !pet $04,"edit"
    !pet $03,"cat"
    !pet $06,"append"
    !pet $06,"random"
    !pet $04,"unit"
    !pet $04,"file"
    !pet $04,"poke"
    !pet $04,"peek"
!by $01,$00,$01,$00,$01,$00,$01,$00,$01,$00,$01,$00
    !pet $02,"//"
    !pet $01,"!"
    !pet $02,":="
    !pet $02,":+"
    !pet $02,":-"
    !pet $01,":"
    !pet $01,";"
    !pet $01,"+"
!by $01,$00
    !pet $01,"-"
    !pet $08,"external"
    !pet $03,"dir"
    !pet $09,"randomize"
    !pet $03,"and"
    !pet $03,"abs"
    !pet $03,"atn"
    !pet $01,"*"
    !pet $01,"/"
!by $01,$5e
    !pet $01,"<"
    !pet $02,"<="
    !pet $02,"<>"
    !pet $01,"="
    !pet $01,">"
    !pet $02,">="
    !pet $01,"#"
!by $01,$0d
    !pet $03,"sys"
    !pet $03,"val"
    !pet $03,"str"
    !pet $06,"import"
    !pet $06,"cursor"
    !pet $04,"link"
    !pet $03,"use"
    !pet $05,"merge"
    !pet $03,"get"
    !pet $09,"interrupt"
    !pet $06,"verify"
    !pet $04,"null"
    !pet $07,"setexec"
    !pet $06,"return"
    !pet $04,"pass"
    !pet $06,"delete"
    !pet $04,"func"
    !pet $07,"endfunc"
    !pet $03,"key"
    !pet $04,"loop"
    !pet $04,"exit"
    !pet $07,"endloop"
    !pet $06,"endfor"
    !pet $04,"find"
!by $01,$00
    !pet $04,"main"
    !pet $07,"handler"
    !pet $07,"endtrap"
    !pet $03,"err"
    !pet $06,"report"
    !pet $06,"create"
    !pet $07,"discard"
    !pet $07,"display"
    !pet $04,"scan"
    !pet $04,"copy"
    !pet $06,"rename"
    !pet $07,"errtext"
    !pet $07,"errfile"
    !pet $05,"mount"
    !pet $06,"bitand"
    !pet $05,"bitor"
    !pet $06,"bitxor"
    !pet $05,"trace"
    !pet $02,"pi"
    !pet $06,"change"

.l834E
    !by $00,$00 
    !by $80,$00,$08,$08,$00,$00,$50,$00 
    !by $00,$08,$90,$00,$00,$08,$00,$00 
    !by $00,$00,$00,$00,$00,$00,$00,$00 
    !by $08,$A0,$90,$A0,$00,$90,$A0,$00 
    !by $00,$00,$00,$00,$90,$00,$80,$00 
    !by $08,$08,$90,$00,$08,$00,$80,$00 
    !by $00,$00,$90,$00,$00,$00,$00,$00 
    !by $00,$00,$08,$00,$00,$80,$08,$08 
    !by $00,$90,$90,$08,$50,$90,$60,$00 
    !by $00,$00,$90,$00,$A0,$00,$00,$A0 
    !by $00,$00,$00,$00,$00,$A0,$08,$08 
    !by $00,$00,$60,$00,$00,$90,$80,$80 
    !by $40,$80,$80,$40,$00,$00,$00,$00 
    !by $00,$00,$00,$80,$80,$80,$00,$00 
    !by $00,$00,$90,$90,$00,$00,$00,$00 
    !by $00,$00,$00,$00,$00,$00,$00,$00 
    !by $90,$50,$00,$00,$08,$00,$08,$50 
    !by $00,$08,$00,$08,$00,$00,$00,$00 
    !by $00,$60,$00,$00,$00,$00,$08,$80 
    !by $08,$00,$00,$A0,$00,$00,$08,$08 
    !by $08,$00,$00,$60,$A0,$00,$00,$00 
    !by $00,$08,$A0,$08

P2_83FC
    LDX $89
    LDA $C5E8,X
    INC $89
    STA $8A
    RTS
---------------------------------
.l8406  LDA $8A
    CMP #$20
    BNE +
    JSR P2_83FC
    JMP .l8406
---------------------------------
+   LDX $89
    STX $C7C9
    CMP #$2E
    BEQ +
    JSR .l84FC
    BCC ++
+   JMP .l851D
---------------------------------
++  JSR .l84E4
    BCC +
    JMP .l865F
---------------------------------
+   CMP #$22
    BNE +
    JMP .l8708
---------------------------------
+   TAY
    JSR .l8508
    BCC ++
    ASL
    ASL
    PHA
    JSR P2_83FC
    PLA
    TAX
    CPY $8A
    BEQ +
    TAY
    LDA $8A
    JSR .l8508
    BCC +
    STA $7C
    JSR P2_83FC
    TYA
    ORA $7C
    TAX
    INX
+   LDA .l845A,X
    RTS
---------------------------------
.l845A    !by $79,$00,$7A,$7B,$7C,$7A
.l8460    !by $00,$7E,$7D,$7B,$7E
---------------------------------
++  CMP #$3A
    BNE ++
    JSR P2_83FC
    CMP #$3D
    BNE +
    JSR P2_83FC
    LDA #$68
    RTS
---------------------------------
+   LDA #$6B
    RTS
---------------------------------
++  CMP #$2F
    BNE ++
    JSR P2_83FC
    CMP #$2F
    BNE +
-   JSR P2_83FC
    LDA $4C
    ORA #$10
    STA $4C
    LDA #$80
    RTS
---------------------------------
+   LDA #$77
    RTS
---------------------------------
++  CMP #$21
    BEQ -
    CMP #$24
    BNE +
    JMP .l8752
---------------------------------
+   CMP #$25
    BNE +
    JMP .l8792
---------------------------------
+   LDY #$0A
-   CMP .l84BD,Y
    BEQ +
    DEY
    BPL -
    LDX #$71
    JMP .l84D3
---------------------------------
+   LDA .l84C8,Y
    PHA
    JSR P2_83FC
    PLA
    RTS
---------------------------------
.l84BD  !pet $FF,";+-(),*^#",$0D
.l84C8  !by $AC,$6C,$6D,$6F,$02,$01,$03
.l84CF  !by $76,$78,$7F,$80 
---------------------------------
.l84D3
    LDA $C845                   ; status of comal program
    CMP #$03
    BCC +
    LDA $77
    ORA #$01
    STA $77
    RTS
---------------------------------
+   JMP P2_8827
---------------------------------
.l84E4  CMP #$41
    BCC ++
    CMP #$5E
    BCS +
    SEC
    RTS
---------------------------------
+   CMP #$C1
    BCC ++
    CMP #$DE
    BCS ++
    AND #$7F
    SEC
    RTS
---------------------------------
++  CLC
    RTS
---------------------------------
.l84FC  CMP #$30
    BCC +
    CMP #$3A
    BCS +
    SEC
    RTS
---------------------------------
+   CLC
    RTS
---------------------------------
.l8508  CMP #$3F
    BCS +
    CMP #$3C
    BCC +
    SBC #$3C
    RTS
---------------------------------
+   CLC
    RTS
---------------------------------
--  LDX #$72
    !by $2C
-   LDX #$73
    JMP .l84D3
---------------------------------
.l851D
    LDA #$00
    STA $7D
    STA $61
    STA $66
    LDA #$61
    STA $12
    JSR .l85F3
    BNE +
    LDA #$60
    STA $12
    JSR P2_83FC
    JSR .l85F3
    STA $7D
    BEQ --
    BNE ++
+   LDA $77
    AND #$08
    BEQ +
    JMP .l85C5
---------------------------------
+   LDA $8A
    CMP #$2E
    BNE ++
    LDA #$60
    STA $12
    JSR P2_83FC
    JSR .l85F3
    STA $7D
++  LDA #$00
    STA $7C
    LDA $8A
    JSR .l84E4
    CMP #$45
    BNE .l85AA
    LDA #$60
    STA $12
    LDY #$00
    JSR P2_83FC
    CMP #$2B
    BEQ +
    CMP #$2D
    BNE ++
    INY
+   JSR P2_83FC
++  JSR .l84FC
    BCC -
.l8580
    LDA $7C
    ASL
    BMI .l85EE
    ASL
    BMI .l85EE
    ADC $7C
    BMI .l85EE
    ASL
    BMI .l85EE
    STA $7C
    LDA $8A
    AND #$0F
    ADC $7C
    BMI .l85EE
    STA $7C
    JSR P2_83FC
    JSR .l84FC
    BCS .l8580
    TYA
    BEQ .l85AA
    SBC $7C
    STA $7C
.l85AA
    LDA $7C
    SEC
    SBC $7D
    STA $7C
    BEQ .l85C5
    BPL .l85BE
-   JSR $C8ED
    INC $7C
    BNE -
    BEQ .l85C5
.l85BE  JSR $C8E4
    DEC $7C
    BNE .l85BE
.l85C5  LDX #$4E
    LDY #$00
    JSR $CAA0
    LDA $12
    CMP #$61
    BNE +
    LDA #$DC
    LDY #$9B
    JSR $C96E
    BCC +
    BEQ +
    JSR $C977
    LDA $64
    STA $4E
    LDA $65
    STA $4F
    LDA #$61
    RTS
---------------------------------
+   LDA #$60
    RTS
---------------------------------
.l85EE
    LDX #$02
    JMP $C9FB
---------------------------------
.l85F3  LDA #$00
    STA $7C
    LDA $8A
.l85F9  JSR .l84FC
    BCC +
    INC $7C
    JSR $C8E4
    JSR $C8F9
    LDA $8A
    AND #$0F
    TAY
    LDA #$00
    JSR $C992
    LDA $61
    JSR $C8AE
    JSR P2_83FC
    JMP .l85F9
---------------------------------
+   LDA $7C
    RTS
---------------------------------
P2_861E
    LDX $18
    LDA $19
    STX $45
    STA $46
--  LDY #$00
    LDA ($45),Y
    BEQ +++
    CMP $20
    BNE ++
    LDY #$04
-   LDA ($45),Y
    CMP ($7C),Y
    BNE +
    INY
    CPY $20
    BNE -
.l863D  SEC
    LDA $45
    SBC $18
    STA $C7BD
    LDA $46
    SBC $19
    STA $C7BE
    RTS
---------------------------------
+   LDA $20
++  CLC
    ADC $45
    STA $45
    BCC --
    INC $46
    BCS --
+++ JSR .l863D
    CLC
    RTS
---------------------------------
.l865F  LDX $89
    STA $C5E7,X
    JSR P2_83FC
    JSR .l84E4
    BCS .l865F
    JSR .l84FC
    BCS .l865F
    CMP #$27
    BEQ .l865F
    CMP #$5F
    BEQ .l865F
    CMP #$A4
    BNE +
    LDA #$5F
    BNE .l865F
+   LDA $C845                   ; status of comal program
    CMP #$03
    BCC +
    JMP .l84D3
---------------------------------
+   LDA $C7C9
    CLC
    ADC #$E6
    STA $7C
    LDA #$00
    ADC #$C5
    STA $7D
    SEC
    LDA $89
    SBC $C7C9
    STA $20
    LDX $C84E
    LDA $C84F
    STX $45
    STA $46
    JSR .lA187
    BCS ++
-   JSR .l9136
    CLC
    LDA $20
    ADC #$04
    STA $20
    LDA $7C
    SBC #$02
    STA $7C
    BCS +
    DEC $7D
+   JSR P2_861E
    BCS +

    JSR $CAEE
    !by PAGE1
    !word P1_9404

+   LDA $8A
    CMP #$23
    BNE +
    JSR P2_83FC
    LDA #$64
    RTS
---------------------------------
+   CMP #$24
    BNE +
    JSR P2_83FC
    LDA #$65
    RTS
---------------------------------
+   LDA #$63
    RTS
---------------------------------
++  TAY
    LDA $77
    AND #$08
    BNE +
    LDA .l834E,Y
    AND #$08
    BNE -
+   LDA .l834E,Y
    AND #$40
    BEQ +
    LDA $8A
    CMP #$24
    BNE +
    JSR P2_83FC
+   TYA
    RTS
---------------------------------
.l8708  LDY #$00
--- JSR P2_83FC
    CMP #$0D
    BEQ +++
    CMP #$22
    BNE ++
    JSR P2_83FC
    CMP #$22
    BEQ ++
    JSR .l84FC
    BCC +++
    AND #$0F
--  STA $7C
    JSR P2_83FC
    JSR .l84FC
    BCC +
    CLC
    AND #$0F
    LDX #$0A
-   ADC $7C
    BCS .l8788
    DEX
    BNE -
    BEQ --
+   TAX
    LDA $7C
    STA $C760,Y
    INY
    CPX #$22
    BNE +++
    DEY
++  STA $C760,Y
    INY
    BNE ---
+++ STY $21
    LDA #$62
    RTS
---------------------------------
.l8752  LDY #$00
    STY $4E
    STY $4F
--  JSR P2_83FC
    JSR .l84FC
    BCC +
    SBC #$30
    BCS ++
+   JSR .l84E4
    BCC +
    CMP #$47
    BCS +
    SBC #$36
++  LDX #$03
-   ASL $4F
    ROL $4E
    BCS .l8788
    DEX
    BPL -
    ORA $4F
    STA $4F
    INY
    BNE --
+   LDA #$99
--  CPY #$00
    BEQ .l8788
    RTS
---------------------------------
.l8788  LDA $89
    STA $C7C9
    LDX #$72
    JMP .l84D3
---------------------------------
.l8792
    LDY #$00
    STY $4E
    STY $4F
-   JSR P2_83FC
    CMP #$30
    BEQ +
    CMP #$31
    BNE ++
+   LSR
    ROL $4F
    ROL $4E
    BCS .l8788
    INY
    BNE -
++  LDA #$6E
    BNE --
.l87B1  JSR .l87BD
.l87B4  LDA $C7BD
    JSR .l87BD
    LDA $C7BE
.l87BD  LDX $15
    CPX #$FF
    BCS +
    STA $C661,X
    INC $15
    RTS
---------------------------------
+   JMP .l87E6
---------------------------------
.l87CC  LDA #$33

.l87CE
    JSR $CB5F 
    !by PAGE3
    !word P3_BF39
    JSR $CB5F
    !by PAGE3
    !word P3_BF44

.l87DA  LDX #$65
    BNE P2_8827
.l87DE  LDX #$66
    BNE P2_8827
    LDX #$01
    BNE P2_8827
.l87E6  LDX #$67
    BNE P2_8827
P2_87EA
    CLC
    LDA $C7E4
    ADC #$02
    STA $45
    LDA $C7E5
    ADC #$00
    STA $46
    LDY $C7E6
    JMP $CC9B
---------------------------------
P2_87FF
    STX $3D
    LDA #$01
    JSR P2_8896
    LDX $3D
    CPX #$FF
    BEQ +
P2_880C
    JSR P2_87EA
+   LDY #$00
    LDA $0200
    STA $40
    BEQ +
    STY $0200
-   LDA $0201,Y
    JSR $CE05
    INY
    CPY $40
    BNE -
+   RTS
---------------------------------
P2_8827
    STX $3C
    LDA $C7D1
    CMP #$01
    BEQ ++
    LDA $C845                   ; status of comal program
    CMP #$02
    BNE ++
    LDY #$00
-   LDA $C5E8,Y
    CMP #$0D
    BEQ +
    JSR $CE05
    INY
    BNE -

+   JSR $CAEE
    !by PAGE1
    !word P1_96E6

    JSR $CDF4
++  LDX #$00
    STX $D4
    STX $D8
    JSR P2_BD7D
    LDX $3C
    JSR P2_87FF
-   LDA #$9D
    JSR $CE05
    DEY
    BNE -
-   LDA #$91
    JSR $CE05
    LDY $D3
    BNE -
    LDX $C7C9
-   DEX
    BEQ .l887F
    LDA #$1D
    JSR $CE05
    LDY $D3
    CPY $D5
    BNE -
.l887F  JSR P2_A519
    BCS +
    JMP .l9211
---------------------------------
+   LDA $C845                   ; status of comal program
    SBC #$02
    BNE .l887F
    STA $C845                   ; status of comal program
    LDX $C7BC
    TXS
    RTS
---------------------------------
P2_8896
    STA $9E
    LDX #$00
-   LDA .l88EE,X
    STA $D400,X
    INX
    CPX #$18
    BNE -
    LDY #$41
    LDX #$07
-   STY $D418
    JSR .l88E4
    INY
    DEX
    BNE -
--- LDY #$07
--  LDA .l8905,Y
    STA $D401
    TYA
    LDY #$0F
-   JSR .l88E4
    DEY
    BNE -
    TAY
    DEY
    BNE --
    DEC $9E
    BNE ---
    LDY #$46
    LDX #$07
-   STY $D418
    JSR .l88E4
    DEY
    DEX
    BNE -
    TXA
-   STA $D400,X
    INX
    CPX #$18
    BNE -
    RTS
---------------------------------
.l88E4  PHA
    TXA
    LDX #$00
-   DEX
    BNE -
    TAX
    PLA
    RTS
---------------------------------

.l88EE    !by $00,$00
.l88F0    !by $00,$0A,$21,$0F,$FF,$00,$00,$00
.l88F8    !by $00,$00,$00,$00,$00,$00,$00,$00
.l8900    !by $00,$00,$00,$00,$5A
.l8905    !by $F1,$FF,$BF,$7F,$3F,$7F,$BF,$FF

.l890D  LDX $12
    LDA .l834E,X
    AND #$C0
    BNE +
    LDA #$C8
    JMP .l8EAA
---------------------------------
+   JSR .l8932
    JSR .l8E3F
    LDA $1E
    RTS
---------------------------------
.l8924  LDX $12
    LDA .l834E,X
    AND #$C0
    BNE .l8932
    LDA #$C9
    JMP .l8EAA
---------------------------------
.l8932  LDA #$00
    STA $76
.l8936
    JSR .l8E74
    LDA #$00
    PHA
.l893C  LDA #$00
    PHA
.l893F  LDA #$30
    JSR .l9201
    PHP
    JSR .l8A1B
    LDX $12
    CPX #$24
    BNE +
    LDY $1E
    BMI +++
    CPY #$04
    BCC +++
    BCS ++
+   CPX #$79
    BCC ++++
    CPX #$7F
    BCS ++++
    LDA .l8988,X
    LDY $1E
    BMI +++
    CPY #$04
    BCC +
    ADC #$00
    !by $2C
++  LDA #$36
+   PHA
    JSR .l8E3F
    LDA $1E
    PHA
    JSR .l916C
    JSR .l8A1B
    JSR .l8E3F
    PLA
    CMP $1E
    BEQ .l8988
+++ JMP .l87DE
---------------------------------
.l8988  PLA
    JSR .l87BD
    LDA #$00
    STA $1E
++++PLP
    BNE +
    LDA #$37
    JSR .l8A07
+   PLA
    JSR .l8A07
    CMP #$F1
    BNE +
    PLA
    TAX
    LDA $15
    STA $C661,X
+   LDA #$73
    JSR .l9201
    BNE ++
    LDA #$4D
    JSR .l9201
    BNE +
    LDA #$D2
    JSR .l87BD
    LDA $15
    PHA
    JSR .l87BD
    LDA #$F1
    !by $2C
+   LDA #$38
    PHA
    JSR .l8E26
    JMP .l893F
---------------------------------
++  PLA
    JSR .l8A07
    CMP #$F4
    BNE +
    PLA
    TAX
    LDA $15
    STA $C661,X
+   LDA #$33
    JSR .l9201
    BNE ++
    LDA #$14
    JSR .l9201
    BNE +
    LDA #$F2
    JSR .l87BD
    LDA $15
    PHA
    JSR .l87BD
    LDA #$F4
    !by $2C
+   LDA #$39
    PHA
    JSR .l8E26
    JMP .l893C
---------------------------------
++  RTS
---------------------------------
    ROL
    ROL $2C32
    BMI +++
.l8A07  BEQ +
    JSR .l87BD
    PHA
    JSR .l8E3F
    PLA
    LDX $1E
    CPX #$04
    BCS .l8A18
+   RTS
---------------------------------
.l8A18  JMP .l87DE
---------------------------------
.l8A1B  LDA #$00
    PHA
.l8A1E  LDA #$6D
    JSR .l9201
    BEQ +
    LDA #$6F
    JSR .l9201
    BNE ++
    LDA #$21
    !by $2C
+   LDA #$20
    !by $2C
++  LDA #$00
.l8A34  PHA
    LDA #$00
    PHA
.l8A38  JSR .l8AC6
+++ PLA
    JSR .l8A07
    LDA $12
    CMP #$76
    BEQ +
    CMP #$77
    BEQ ++
    CMP #$11
    BEQ +++
    CMP #$2D
    BNE ++++
    LDA #$26
    !by $2C
+   LDA #$24
    !by $2C
++  LDA #$23
    !by $2C
+++ LDA #$25
    PHA
    JSR .l916C
    JSR .l8E26
    JMP .l8A38
---------------------------------
++++PLA
    BEQ ++
    CMP #$28
    BNE +
    JSR .l8E33
    LDA #$28
    JSR .l87BD
    BCC ++
+   JSR .l8A07
++  LDA #$6D
    JSR .l9201
    BNE +
    JSR .l8E3F
    LDA $1E
    BMI .l8A18
    BEQ ++
    BNE +++
+   LDA #$6F
    JSR .l9201
    BNE +
    JSR .l8E26
    LDA #$29
    !by $2C
++  LDA #$27
    !by $2C
+++ LDA #$28
    JMP .l8A34
---------------------------------
+   PLA
    JSR .l8A07
    LDA $12
    CMP #$A8
    BEQ +
    CMP #$A9
    BEQ ++
    CMP #$AA
    BNE .l8AC5
    LDA #$EE
    !by $2C
+   LDA #$EC
    !by $2C
++  LDA #$ED
    PHA
    JSR .l916C
    JSR .l8E26
    JMP .l8A1E
---------------------------------
.l8AC5
    RTS
---------------------------------
.l8AC6  JSR .l8E74
    LDA #$61
    JSR .l9201
    BNE ++
    LDA $4E
    BEQ +
    LDA #$02
-   JSR .l87BD
    LDA $4E
    !by $2C
+   LDA #$CE
    JSR .l87BD
    LDA $4F
    JSR .l87BD
.l8AE6  LDA #$00
    STA $1E
    JMP .l8CDB
---------------------------------
++  LDA #$99
    JSR .l9201
    BNE +
    LDA #$D9
    BNE -
+   LDA #$6E
    JSR .l9201
    BNE +
    LDA #$D3
    BNE -
+   LDA #$60
    JSR .l9201
    BNE +
    JSR .l8E81
    BEQ .l8AE6
+   JSR .l91F9
    BNE ++
    JSR .l8936
    JSR .l8EA5
    JSR .l8E3F
    LDA #$47
    JSR .l87BD
    LDA $1E
    BMI +
    CMP #$04
    BCC +
    JMP .l8C42
---------------------------------
+   JMP .l8CDB
---------------------------------
++  CMP #$63
    BCC +
    CMP #$66
    BCS +
    JSR .l8D25
    JMP .l8CDB
---------------------------------
+   TAX
    LDA .l834E,X
    AND #$A0
    CMP #$A0
    BNE ++
    CPX #$AC
    BNE +
    LDA #$14
    JSR .l918A
    JMP .l8B65
---------------------------------
+   TXA
    LDY #$07
-   CMP .l8CF1,Y
    BEQ +
    DEY
    BPL -
+   LDA .l8CF9,Y
    JSR .l87BD
.l8B65  JSR .l916C
    JMP .l8AE6
---------------------------------
++  LDA .l834E,X
    AND #$90
    CMP #$90
    BNE +++
    TXA
    PHA
    JSR .l916C
    PLA
    CMP #$34
    BEQ +
    CMP #$82
    BNE ++
    LDA #$E9
    !by $2C
+   LDA #$49
    PHA
    JSR .l8EA2
    JSR .l8A1B
    JSR .l8E33
    JSR .l8EA5
.l8B94  PLA
    JMP .l8BCE
---------------------------------
++  LDY #$0B
-   CMP .l8D01,Y
    BEQ +
    DEY
    BPL -
+   LDA .l8D0D,Y
    PHA
    JSR .l8D19
    JMP .l8B94
---------------------------------
+++ LDA #$3F
    JSR .l9201
    BNE ++
    JSR .l91F9
    BNE +
    JSR .l8936
    JSR .l8E26
    JSR .l8E9F
    JSR .l8D1C
    LDA #$55
    JSR .l87BD
    LDA #$54
    !by $2C
+   LDA #$53
.l8BCE  JSR .l87BD
    JMP .l8AE6
---------------------------------
++  LDA #$28
    JSR .l9201
    BNE ++
    JSR .l8EA2
    JSR .l8A1B
    JSR .l8E36
    LDA $1E
    LSR
    BCS +
    LDA #$50
    !by $2C
+   LDA #$51
    PHA
    JSR .l8EA5
    JMP .l8B94
---------------------------------
++  LDA #$04
    STA $1E
    LDA #$62
    JSR .l9201
    BNE ++
    LDA $21
    CMP #$01
    BNE +
    LDA #$CD
    JSR .l87BD
    LDA $C760
    JSR .l87BD
    BCC .l8C42
+   LDA #$03
    JSR .l87BD
    JSR .lA0AA
    JMP .l8C42
---------------------------------
++  LDA #$48
    JSR .l9201
    BNE +
    LDA #$DE
    JSR .l87BD
    BCC .l8C42
+   LDA #$93
    JSR .l9201
    BEQ +
    LDA #$A5
    JSR .l9201
    BNE .l8C84
    LDA #$17
    !by $2C
+   LDA #$1F
.l8C3F  JSR .l918A
.l8C42  JSR .l91F9
    BNE ++++
    LDA #$F7
    JSR .l87BD
    JSR .l91FC
    BNE +
    LDA #$AD
    BNE +++
+   JSR .l8936
    JSR .l8E26
    JSR .l91FC
    BNE ++
    CMP #$01
    BNE +
    LDA #$AE
    JSR .l87BD
    BCC ++
+   LDA #$1F
+++ JSR .l87BD
    JSR .l8936
    JSR .l8E26
++  JSR .l8EA5
    LDA #$13
    JSR .l87BD
++++LDA #$04
    STA $1E
    BNE .l8CDB
.l8C84  LDA #$08
    JSR .l9201
    BEQ +
    LDA #$46
    JSR .l9201
    BEQ ++
    LDA #$83
    JSR .l9201
    BNE +++
    LDA #$EA
    !by $2C
+   LDA #$4B
    !by $2C
++  LDA #$58
    PHA
    JSR .l8D19
    PLA
-   JSR .l87BD
    BCC .l8C42
+++ LDA #$89
    JSR .l9201
    BNE +
    JSR .l8EA2
    JSR .l8936
    JSR .l8E26
    JSR .l8E9F
    JSR .l8D1C
    LDA #$55
    JSR .l87BD
    LDA #$D5
    BNE -
+   LDA #$5C
    JSR .l9201
    BNE +
    LDA #$2E
    JMP .l8C3F
---------------------------------
+   LDA #$CA
    JMP .l8EAA
---------------------------------
.l8CDB  LDA #$78
    JSR .l9201
    BNE +
    JSR .l8E26
    JSR .l8AC6
    LDA #$22
    JSR .l87BD
    JMP .l8E26
---------------------------------
+   RTS
---------------------------------
.l8CF1
    !by $1B,$1D,$20,$4E,$51,$57,$9D,$A6   ; .. NQW.,
.l8CF9
    !by $5C,$4D,$44,$5B,$43,$45,$FE,$5E   ; \MD[CE.^
.l8D01
    !by $74,$75,$0C,$1C,$1F,$26,$2C   ; .....&,
    !by $43,$44,$47,$4C,$5F   ; CDGL_
.l8D0D
    !by $48,$4A,$4C   ; HJL
    !by $5D,$4E,$4F,$52,$56,$57,$59,$5A   ; ]NORVWYZ

    CLD
.l8D19  JSR .l8EA2
.l8D1C  JSR .l8936
    JSR .l8E26
    JMP .l8EA5
---------------------------------
.l8D25  LDA $C7BE
    PHA
    LDA $C7BD
    PHA
    LDA $12
    SEC
    SBC #$63
    PHA
    JSR .l916C
    JSR .l91F9
    BEQ +
    LDA $15
    STA $76
    PLA
    TAY
    CLC
    ADC #$07
.l8D44  JSR .l87BD
    PLA
    JSR .l87BD
    PLA
    JSR .l87BD
    TYA
    PHA
.l8D51  PLA
    SEC
    ROL
    STA $1E
    RTS
---------------------------------
+   CMP #$03
    BEQ +
    CMP #$01
    BNE ++
+   LDA $15
    STA $76
    PLA
    PHA
    ADC #$7A
    JSR .l87BD
    LDA #$00
    PHA
-   PLA
    CLC
    ADC #$01
    PHA
    JSR .l91FF
    BEQ -
    JSR .l8FDB
    PLA
    TAX
    PLA
    ORA #$40
    TAY
    TXA
    JMP .l8D44
---------------------------------
++  PLA
    TAY
    CLC
    ADC #$0A
    JSR .l87BD
    PLA
    JSR .l87BD
    PLA
    JSR .l87BD
    TYA
    PHA
    CMP #$02
    BNE ++++
    JSR .l91FC
    BNE +
--  LDA #$AD
    BNE ++
+   JSR .l8936
    JSR .l91FC
    BNE .l8DD8
-   JSR .l8E26
    LDA $12
    CMP #$01
    BNE +
    LDA #$AE
    JSR .l87BD
    BCC +++
+   LDA #$1F
++  JSR .l87BD
    JSR .l8936
    JSR .l8E29
+++ JSR .l8EA5
.l8DC9  LDA $15
    STA $76
    JSR .l8E19
    ADC #$0C
    JSR .l87BD
    JMP .l8D51
---------------------------------
.l8DD8  JSR .l91FF
    BNE +
    JSR .l8E15
    JSR .l87BD
++++JSR .l8936
    JMP .l8DD8
---------------------------------
+   JSR .l8FDB
    PLA
    PHA
    CMP #$02
    BNE .l8DC9
    JSR .l91F9
    BNE .l8DC9
    JSR .l8E15
    JSR .l87BD
    LDA #$80
    JSR .l87BD
    JSR .l91FC
    BEQ --
    JSR .l8936
    JSR .l91FC
    BEQ -
    JSR .l8EA5
    JMP .l8DC9
---------------------------------
.l8E15  LDA #$00
    STA $76
.l8E19  LDA $1E
    AND #$7F
    LSR
    BCS +
    ADC #$0D
    RTS
---------------------------------
+   ADC #$0F
    RTS
---------------------------------
.l8E26  JSR .l8E3F
.l8E29  LDA $1E
    CMP #$04
    BCS .l8E30
    RTS
---------------------------------
.l8E30  JMP .l87DE
---------------------------------
.l8E33  JSR .l8E3F
.l8E36  LDA $1E
    BMI .l8E30
    CMP #$04
    BCC .l8E30
    RTS
---------------------------------
.l8E3F  LDA $76
    BEQ ++++
    LDA $1E
    LSR
    BCC +++
    ASL
    STA $1E
    CMP #$02
    BNE .l8E53
    LDA #$00
    STA $1E
.l8E53
    LDX $76
    LDA $C661,X
    CMP #$0A
    BCS +
-   SEC
    SBC #$03
    BNE ++
+   CMP #$1F
    BCS -
    SEC
    SBC #$06
++  STA $C661,X
    LDA #$00
    STA $76
    RTS
---------------------------------
+++ ASL
    STA $1E
++++RTS
---------------------------------
.l8E74  TSX
    CPX #$28
    BCC +
    RTS
---------------------------------
+   LDX $C7BC
    TXS
    JMP .l87E6
---------------------------------
.l8E81  LDA #$01
    JSR .l87BD
    LDY #$00
-   LDA $004E,Y
    JSR .l87BD
    INY
    CPY #$05
    BNE -
    RTS
---------------------------------
.l8E94  JSR .l9171
    BEQ +
    LDA #$80
    !by $2C
.l8E9C  LDA #$6B
    !by $2C
.l8E9F  LDA #$03
    !by $2C
.l8EA2  LDA #$02
    !by $2C
.l8EA5  LDA #$01
    !by $2C
.l8EA8  LDA #$62
.l8EAA  CMP $12
    BNE ++
.l8EAE  CMP #$80
    BEQ +
    JMP .l916C
---------------------------------
+   RTS
---------------------------------
++  CMP #$80
    BNE +
    LDA $12
    LDX #$E2
    JSR .l8EDA
.l8EC1  LDX #$FF
    JMP P2_8827
---------------------------------
+   LDX $12
    CPX #$80
    BNE +
    JSR .l8ED8
    JMP .l8EC1
---------------------------------
+   JSR .l8EE4
    JMP .l8EC1
---------------------------------
.l8ED8  LDX #$E3
.l8EDA  STX $9E
    JSR .l8EEE
    LDA $9E
    JMP .l8EF3
---------------------------------
.l8EE4  LDX #$E4
    JSR .l8EDA
    LDA $12
    JMP .l8EF3
---------------------------------
.l8EEE  LDX #$00
    STX $0200
.l8EF3  TAX
    CMP #$C0
    BCS +++
    CMP #$6E
    BEQ ++
    CMP #$99
    BEQ +
    CMP #$60
    BCC .l8F50
    CMP #$66
    BCS .l8F50
    ADC #$85
    !by $2C
+   LDA #$F3
    !by $2C
++  LDA #$D6
+++ SEC
    SBC #$C0
    STA $47
    LDY #$00
    STY $48
    LDX $C7E4
    LDA $C7E5
    STX $07
    STA $08
    LDA $C7E6
    STA $09
    JSR $CB66
    STA $45
    INY
    JSR $CB66
    LDX $45
-   STX $07
    STA $08
    LDY $47
    CPY $48
    BEQ +
    LDY #$00
    JSR $CB66
    ADC $07
    TAX
    LDA $08
    ADC #$00
    INC $48
    BNE -
+   JMP .l8F7D
---------------------------------
.l8F50  LDX #$00
    STX $89
    STA $38
    TYA
    PHA
    JSR .l8FA2
    JSR .lBA23
    JSR .l8F67
    JSR .l8FA2
    PLA
    TAY
    RTS
---------------------------------
.l8F67  LDY #$01
-   LDA $C660,Y
    JSR .l8FA4
    INY
    CPY $89
    BCC -
    LDA #$00
    STA $C661
    STA $C662
    RTS
---------------------------------
.l8F7D  STX $07
    STA $08
    LDY #$00
    JSR $CB66
    STA $47
.l8F88  CPY $47
    BCS ++
    INY
    JSR $CB66
    CMP #$5F
    BCC +
    SBC #$5E
    JSR .l8F50
    JMP .l8F88
---------------------------------
+   JSR .l8FA4
    JMP .l8F88
---------------------------------
.l8FA2  LDA #$22
.l8FA4  LDX $0200
    CPX #$4F
    BCS ++
    STA $0201,X
    INC $0200
++  RTS
---------------------------------
.l8FB2  LDA $12
    SEC
    SBC #$63
    CMP #$03
    BCS ++
    BCC +
.l8FBD  LDA $12
    SEC
    SBC #$63
    CMP #$02
    BCS +++
+   PHA
    JSR .l916C
    PLA
    CLC
    RTS
---------------------------------
++  LDA #$CB
    !by $2C
+++ LDA #$CC
    JMP .l8EAA
---------------------------------
.l8FD5  JSR .l9171
    BNE +
    RTS
---------------------------------
.l8FDB  LDX #$C2
    LDA #$01
.l8FDF  CMP $12
    BNE +
    JMP .l8EAE
---------------------------------
+   TXA
    JMP .l8EAA
---------------------------------
.l8FEA  LDA #$63
    LDX #$D7
    BNE .l8FDF
.l8FF0  SEC
    LDA $3C
    STA $3E
    LDA $3B
    SBC .lB002,X
    STA $3D
    BCS +
    DEC $3E
+   LDY .lB002,X
    DEY
    TXA
    CMP ($3D),Y
    RTS
---------------------------------
.l9008  LDX #$09
.l900A  JSR .l8FF0
    BNE +
    LDY #$00
    RTS
---------------------------------
+   STX $45
    LDA ($3D),Y
    STA $46
    BNE +++
    JSR .l9054
    CMP #$92
    BNE +
    LDA #$91
    BNE ++
+   LDA .l909F-1,X
++  PHA
    LDA $12
.l902B  LDX #$EC
    JSR .l8EDA
    PLA
    JSR .l8EF3
    JMP .l904F
---------------------------------
+++ LDY #$02
    LDA ($31),Y
    BNE +
    JSR .l9074
    JSR .l8ED8
    JMP .l904F
---------------------------------
+   JSR .l9054
    JSR .l9074
-   JSR .l8EE4
.l904F  LDX #$FF
    JMP .lB129
---------------------------------
.l9054  LDY #$03
    LDA ($31),Y
    TAY
    CMP #$8D
    BCC +
    CMP #$90
    BCC ++
+   LDA .lB4CD,Y
    !by $2C
++  LDA #$10
    STA $12
    RTS
---------------------------------
.l906A  TAY
    BNE .l9008
    JSR .l9054
    LDA #$EE
    BNE -
.l9074  LDX $46
    JSR .l8FF0
    LDA .l90A7-1,X
    LDY #$00
    CPX #$01
    BNE +
-   CLC
    ADC ($3D),Y
    RTS
---------------------------------
+   CPX #$02
    BNE ++
    TAX
    LDA ($3D),Y
    AND #$7F
    STA ($3D),Y
    BEQ +
    INX
+   TXA
    RTS
---------------------------------
++  CPX #$08
    BEQ -
    CPX #$06
    BEQ -
    RTS
---------------------------------
.l909F !by $23,$38,$21,$3D,$55,$06,$94,$50  ; #8!=U..P
.l90A7 !by $D8,$DA,$DC,$DD,$DE,$DF,$ED,$C0  ; .......

.l90AF  JSR .l9054
    LDX #$EB
    BNE ++
.l90B6  CLC
    LDA $45
    ADC $18
    STA $45
    LDA $46
    ADC $19
    STA $46
    LDY #$01
    LDA ($45),Y
    BNE +
    RTS
---------------------------------
.l90CA  LDA #$C3
    !by $2C
+   LDA #$C4
    LDX #$00
    JSR .l90F9
    JMP .l904F
---------------------------------
.l90D7  JSR .l8EEE
    JMP .l904F
---------------------------------
.l90DD  LDY #$F0
-   TAX
    TYA
++  JSR .l8EDA
    JMP .l904F
---------------------------------
.l90E7  JSR .l9054
    LDY #$F1
    BNE -
P2_90EE
    JSR .l90F9
    LDX #$FF

    JSR $CB5F
    !by PAGE3
    !word P3_BF44

.l90F9  LDY #$00
    STY $0200
    STY $89
    STX $38
    PHA
    LDA $C7CC
    BNE +
    LDA $45
    STA $43
    LDA $46
    STA $44
    LDA $38
    AND #$03
    TAX
    JSR .lBA91
    JSR .l8F67
    LDA #$3A
    JSR .l8FA4
    LDA #$20
    JSR .l8FA4
+   PLA
    JMP .l8EF3
---------------------------------
.l9129  LDY #$4C
    STY $45
    STX $46
    STA $47
    LDA #$01
    JMP .l9B34
---------------------------------
.l9136  LDA $C7CC
    BNE +
    RTS
---------------------------------
+   LDX #$70
    !by $2C
-   LDX #$68
    JMP P2_8827
---------------------------------
.l9144  LDA $4C
    AND #$01
    BNE -
    RTS
---------------------------------
.l914B  JSR .l9136
    JMP .l916C
---------------------------------
.l9151  JSR .l9144
    JMP .l916C
---------------------------------
.l9157  JSR .l95D7
    JMP .l916C
---------------------------------
.l915D  JSR .l87BD
.l9160  JSR .l9163
.l9163  LDA #$00
    JMP .l87BD
---------------------------------
.l9168  CMP $12
    BNE .l9171
.l916C  JSR .l8406
    STA $12
.l9171  LDA $4C
    AND #$42
    CMP #$42
    BNE +
    LDA $12
    CMP #$52
    BEQ ++
+   LDA $12
    CMP #$80
++  RTS
---------------------------------
.l9184  JSR .l87BD
    JMP .l916C
---------------------------------
.l918A  PHA
    LDA #$FF
    JSR .l87BD
    PLA
    JMP .l87BD
---------------------------------
.l9194  JSR .l91E3
    BEQ .l91A8
    JSR .l91ED
    CMP #$04
    BNE +
    RTS
---------------------------------
+   STX $C7C9
    LDA #$CD
    STA $12
.l91A8  LDA #$CE
    JMP .l8EAA
---------------------------------
.l91AD  JSR .l9136
.l91B0  JSR .l916C
.l91B3  JSR .l91E3
    BEQ ++
    JSR .l91ED
    BNE +
    RTS
---------------------------------
+   STX $C7C9
    LDA #$CE
    STA $12
++  LDA #$CD
    JMP .l8EAA
---------------------------------
.l91CA  LDA $12
    CMP #$63
    BCC +
    CMP #$66
    BCS +
    LDX #$00
    STX $76
    JSR .l8D25
    LDA $1E
    RTS
---------------------------------
+   LDA #$C9
    JMP .l8EAA
---------------------------------
.l91E3  LDX $12
    LDA .l834E,X
    AND #$F7
    CMP #$00
    RTS
---------------------------------
.l91ED  LDA $C7C9
    PHA
    JSR .l890D
    PLA
    TAX
    LDA $1E
    RTS
---------------------------------
.l91F9  LDA #$02
    !by $2C
.l91FC  LDA #$6B
    !by $2C
.l91FF  LDA #$03
.l9201  CMP $12
    PHP
    BNE +
    JSR .l916C
+   LDA $12
    PLP
    RTS
---------------------------------
P2_920D
    TSX
    STX $C7BC
.l9211  LDX $C7BC
    TXS
    LDA #$00
    STA $15
    STA $89
    STA $4C
    JSR P2_83FC
    LDA #$08
    STA $77
    JSR .l916C
    LDA #$00
    STA $77
    LDA $12
    CMP #$61
    BNE +
    JSR .lA164
    PHA
    TXA
    JSR .l87BD
    PLA
    JSR .l87BD
    JSR .l9184
    JSR .l9136
    JMP .l9251
---------------------------------
+   LDA #$00
    JSR .l915D
    LDA $4C
    ORA #$01
    STA $4C
.l9251  LDX $12
    LDA .l9EFC-1,X
    PHA
    LDA .l9FA8,X
    PHA
    RTS
---------------------------------
    JSR .l916C
    LDA #$01
    !by $2C
    LDA #$00
    STA $43
    LDA $12
    LDX #$00
    STX $41
.l926C  CMP #$1E
    BNE +
    LDA $43
    BNE ++
    LDA #$02
    STA $43
    JSR .l916C
    CMP #$63
    BNE +++
+   CMP #$63
    BCC ++
    CMP #$66
    BCC +
++  LDA #$C9
    !by $2C
+++ LDA #$63
    JMP .l8EAA
---------------------------------
-   JMP .l87DA
---------------------------------
+   LDA $15
    STA $42
    JSR .l91CA
    BPL +
    JMP .l87DE
---------------------------------
+   LDA $12
    CMP #$7C
    BNE +
    LDA #$68
    STA $12
+   LDA $43
    CMP #$02
    BEQ ++++
    LDA $12
    CMP #$6B
    BNE ++
    LDA $8A
    CMP #$2B
    BNE +++
    LDA #$69
    BNE +
+++ CMP #$2D
    BNE ++
    LDA #$6A
+   STA $12
    JSR P2_83FC
++  LDA $12
    SEC
    SBC #$68
    CMP #$03
    BNE +
    JSR .l95D7
    LDA $43
    BNE -
    LDA $1E
    CMP #$01
    BNE .l92FE
    LDA $15
    CMP #$06
    BNE .l92FE
    LDA #$9C
    STA $C664
    JSR .l9160
    JSR .l916C
    JMP .l93C1
---------------------------------
+   BCC ++
    JSR .l9171
    BEQ ++++
    CMP #$6C
    BEQ ++++
.l92FE  LDA #$CF
    JMP .l8EAA
---------------------------------
++++LDA $43
    CMP #$01
    BEQ -
    LDA #$02
    STA $43
    LDA $1E
    LSR
    BNE .l92FE
    LDX $42
    LDA $C661,X
    CMP #$07
    BNE +
    LDA #$81
    STA $C661,X
    JMP .l93A5
---------------------------------
+   LDA #$1A
    STA $C661,X
    JSR .l8E53
    JMP .l93A5
---------------------------------
++  STA $3F
    LDA #$00
    STA $44
    LDA $43
    CMP #$02
    BEQ +++
    LDA $1E
    LSR
    STA $40
    CMP #$02
    BNE +
    LDA $3F
    CMP #$02
    BNE +
    LDA #$D1
    JMP .l8EAA
---------------------------------
+   LDA $3F
    BNE +
    LDX $42
    LDA $C661,X
    CMP #$0A
    BCS +
    LDA $C663,X
    PHA
    LDA $C662,X
    PHA
    INC $44
    STX $15
+   JSR .l916C
    LDA $40
    CMP #$02
    BEQ +
    JSR .l91B3
    JMP .l9379
---------------------------------
+   JSR .l9194
.l9379  LDA $44
    BEQ ++
    LDA $40
    CMP #$02
    BCS +
    ADC #$FA
    !by $2C
+   LDA #$F8
    JSR .l87BD
    PLA
    JSR .l87BD
    PLA
    JSR .l87BD
    BCC +
++  LDA $3F
    ASL
    ADC $3F
    ADC $40
    ADC #$3A
    JSR .l87BD
+   LDA #$01
    STA $43
.l93A5  LDA $41
    BEQ +
    LDA #$42
    JSR .l87BD
+   INC $41
    JSR .l9171
    BEQ .l93C1
+++ LDA #$6C
    JSR .l8EAA
    LDX #$00
    STX $43
    JMP .l926C
---------------------------------
.l93C1  JMP .lA062
---------------------------------
    JSR .l91AD
    LDA #$46
    JMP .l9B86
---------------------------------
    LDA #$5F
    JSR .l9184
    JSR .lA06D
    BEQ +
    LDA #$0E
    JSR .l9201
    BNE +
    JSR .l91B3
    JSR .l8E9F
    JSR .l91B3
    JSR .l8E9C
    LDA #$DC
    JSR .l87BD
+   LDA #$53
    JSR .l9201
    BNE ++++
    JSR .l9194
    JSR .l8E9C
    LDA #$62
    JSR .l87BD
-   JSR .l91B3
    JSR .l91FF
    BNE +
    JSR .l9171
    BEQ ++
    LDA #$D6
    JSR .l87BD
    BCC -
+   LDA #$6C
    JSR .l9201
    BEQ +
    JSR .l9171
    BEQ +++
--- LDA #$D0
    JMP .l8EAA
---------------------------------
++  LDA #$61
    !by $2C
+   LDA #$CB
    !by $2C
+++ LDA #$60
    PHA
    LDA #$D7
    JSR .l87BD
    PLA
    JMP .l9B86
---------------------------------
++++JSR .l9171
    BEQ +++
--  LDA #$4B
    JSR .l9201
    BNE +
    JSR .l8EA2
    JSR .l91B3
    JSR .l8EA5
    LDA #$63
    JSR .l87BD
    BCC ++
+   JSR .l890D
    BMI ++++
    LSR
    LSR
    LSR
    ADC #$64
    JSR .l87BD
++  JSR .l9171
    BEQ +++
    JSR .l91FF
    BNE +
    JSR .l9171
    BEQ ++
    LDA #$66
-   JSR .l87BD
    BCC --
+   LDA #$6C
    JSR .l9201
    BNE ---
    JSR .l9171
    BEQ +
    LDA #$67
    BNE -
+++ LDA #$60
    !by $2C
++  LDA #$61
    !by $2C
+   LDA #$CB
    JMP .l9B86
---------------------------------
++++JMP .l87DE
---------------------------------
    LDA #$68
    JSR .l87BD
    JSR .l91B0
    LDA #$4D
    JSR .l9168
    BEQ +
    LDA #$6A
    JSR .l87BD
    JSR .l95DA
    LDA $4C
    ORA #$22
    STA $4C
    JMP .l9E99
---------------------------------
+   JSR .l95D7
    LDA #$69
    BNE .l94D4
    LDA #$6D
    JSR .l915D
    JSR .l95D7
    JSR .l91B0
    LDX #$4D
    JSR .l8FD5
    LDA #$69
    BNE .l94D4
    JSR .l9157
    LDA #$6E
.l94D4  JSR .l915D
    JMP .lA062
---------------------------------
    JSR .l9157
    LDA #$6F
    JMP .l9B86
---------------------------------
    LDA #$70
    !by $2C
    LDA #$E3
    STA $41
    LDA #$00
    STA $42
    JSR .l9157
    LDX $41
    CPX #$70
    BNE +
    LDA #$63
    JSR .l8EAA
    LDA #$00
    BEQ ++
+   JSR .l8FB2
++  CLC
    ADC $41
    JSR .l87B1
    JSR .l95A7
    JSR .l9160
    JSR .l9160
    LDA $15
    STA $3F
    LDA #$00
    JSR .l87BD
    LDA $12
    CMP #$02
    BEQ .l9523
    JMP .l9572
---------------------------------
.l9523  LDA #$72
    STA $14
    JSR .l916C
    CMP #$3A
    BNE +
    LDA #$75
    STA $14
    JSR .l916C
+   JSR .l8FB2
    ADC $14
    STA $14
    JSR .l95A7
    LDA $12
    CMP #$02
    BNE +
    LDA $14
    ADC #$05
    JSR .l87BD
    LDA #$00
    STA $14
-   JSR .l916C
    INC $14
    CMP #$03
    BEQ -
    JSR .l8FDB
+   LDA $14
    JSR .l87B1
    LDX $3F
    INC $C661,X
    LDA $12
    CMP #$03
    BNE +
    JMP .l9523
---------------------------------
+   JSR .l8FDB
.l9572  JSR .l9171
    BEQ ++
    CMP #$0A
    BEQ +
    CMP #$70
    BEQ +++
    LDA #$F2
    JMP .l8EAA
---------------------------------
+   JSR .l916C
    LDA #$7F
    JSR .l915D
    JSR .l9160
    JMP .lA062
---------------------------------
++  LDA #$7E
    JMP .l94D4
---------------------------------
+++ LDA #$F5
    JSR .l87BD
    JSR .l916C
    JSR .l9194
    LDA #$F6
    JMP .l9B86
---------------------------------
.l95A7  LDX $42
    LDA $C7BD
    STA $C760,X
    LDA $C7BE
    STA $C761,X
    INC $42
    INC $42
-   DEX
    DEX
    BMI +
    LDA $C7BD
    CMP $C760,X
    BNE -
    LDA $C7BE
    CMP $C761,X
    BNE -
    LDA #$C4
    JSR .l8EEE
    LDX #$FF
    BNE ++
+   RTS
---------------------------------
.l95D7  JSR .l9144
.l95DA  LDA $4C
    AND #$6C
    BNE +
    RTS
---------------------------------
+   LDX #$6D
++  JMP P2_8827
---------------------------------
    JSR .l95D7
    LDA #$0E
    JSR .l9184
    BEQ .l95FB
    LDA #$63
    JSR .l8EAA
-   JSR .l87B4
    JMP .lA062
---------------------------------
.l95FB  LDA #$FF
    JSR .l87BD
    JMP .l9B86
---------------------------------
    JSR .l9157
    BEQ +
    JSR .l8FB2
    ADC #$E6
    JSR .l87BD
    BCC -
+   LDA #$E6
    JSR .l87BD
    BCC .l95FB
    LDA #$00
    STA $41
    STA $43
    LDA $12
    JMP .l926C
---------------------------------
    JSR .l95DA
    JSR .l916C
    JSR .l8FBD
    ADC #$82
    JSR .l87B1
    JSR .l9160
    LDA #$7C
    LDX #$68
    JSR .l8FDF
    JSR .l91B3
    LDA #$4F
    JSR .l8EAA
    LDA #$84
    JSR .l87BD
    JSR .l91B3
    LDA #$85
    JSR .l87BD
    LDA $12
    CMP #$49
    BNE +
    JSR .l91B0
    LDA #$86
    JSR .l87BD
+   LDA #$12
    JSR .l9168
    BEQ +
    LDA $4C
    ORA #$0A
    STA $4C
    LDA #$88
    JSR .l87BD
    LDA $15
    STA $C667
    JMP .l9E99
---------------------------------
+   JSR .l9144
    LDA #$87
    JMP .l9B86
---------------------------------
    JSR .l9157
    BEQ +
    JSR .l8FBD
    ADC #$8A
    JSR .l87B1
    JSR .l9160
    JMP .lA062
---------------------------------
+   LDA #$8A
    JSR .l87BD
    LDA #$FF
    JSR .l87BD
    JMP .l94D4
---------------------------------
    JSR .l95DA
    LDA #$00
    STA $3F
.l96A8  JSR .l916C
    JSR .l8FB2
    STA $41
    ADC #$8D
    JSR .l87B1
    LDA $15
    STA $40
    LDA #$00
    JSR .l87BD
    LDA $12
    CMP #$02
    BEQ .l96CF
    LDA $41
    CMP #$02
    BEQ ++
    LDA #$02
    JMP .l8EAA
---------------------------------
.l96CF  JSR .l91B0
    LDA $12
    CMP #$6B
    BNE +
    LDA #$90
    JSR .l87BD
    JSR .l91B0
    LDA $12
+   LDX $40
    INC $C661,X
    CMP #$03
    BNE +
    LDA #$91
    JSR .l87BD
    BCC .l96CF
+   JSR .l8FDB
    LDA #$92
    JSR .l87BD
++  LDA $41
    CMP #$02
    BNE +
    LDA #$76
    LDX #$31
    JSR .l8FDF
    JSR .l91B3
    LDA #$93
    JSR .l87BD
+   LDA $3F
    BEQ +
    LDA #$94
    JSR .l87BD
+   INC $3F
    LDA $12
    CMP #$03
    BNE +
    JMP .l96A8
---------------------------------
+   LDA #$8C
    BNE +
    JSR .l916C
    CMP #$80
    BNE ++
    JSR .l95D7
    LDA #$95
+   JMP .l9B86
---------------------------------
++  JSR .l95DA
    LDA $4C
    ORA #$42
    STA $4C
    LDA $12
    CMP #$52
    BNE +
    LDA #$CF
    JSR .l87BD
    JMP .l9E99
---------------------------------
+   JMP .l9251
---------------------------------
    JSR .l95D7
    LDA #$DA
    JSR .l87BD
    JSR .l91B0
    JSR .l8E94
    LDA #$96
    JSR .l915D
    JMP .l9E99
---------------------------------
    JSR .l95DA
    LDA #$97
    JSR .l87BD
    JSR .l91B0
    LDA #$12
    JSR .l9168
    BEQ +
    LDA #$99
    JSR .l87BD
    LDA $4C
    ORA #$06
    STA $4C
    JMP .l9E99
---------------------------------
+   LDA #$98
    JSR .l915D
    JSR .l9144
    JMP .l9E99
---------------------------------
    JSR .l9157
    LDA #$9B
    JMP .l94D4
---------------------------------
    JSR .l9157
    JSR .l8FEA
    LDA #$9C
    JSR .l87B1
    JSR .l9160
    JMP .lA062
---------------------------------
    JSR .l9151
    JSR .l8FEA
    LDA #$9D
    JSR .l87B1
    JMP .l9B86
---------------------------------
    JSR .l9151
    BNE +
    LDA #$9F
    JMP .l9B86
---------------------------------
+   LDA #$38
    BNE +
    JSR .l9151
    BEQ ++
    LDA #$30
+   PHA
    JSR .l9194
    PLA
    JMP .l9B34
---------------------------------
++  LDA #$A0
    JMP .l9B86
---------------------------------
-   JMP .l87DE
---------------------------------
    JSR .l95D7
    LDA #$A1
    JSR .l9184
    JSR .l890D
    BMI -
    CMP #$04
    BEQ +
    LDA #$A2
    !by $2C
+   LDA #$A3
    JSR .l915D
    LDX #$31
    JSR .l8FD5
    JMP .lA062
---------------------------------
    JSR .l9157
    LDA #$A4
    JSR .l915D
    JSR .l890D
    BMI -
    STA $3F
.l980D  JSR .l9171
    BEQ ++
    LDA $1E
    BNE +
    LDA #$A5
    !by $2C
+   LDA #$A7
    JSR .l87BD
    JSR .l8E9F
    LDA $1E
    BNE +
    JSR .l91B3
    JMP .l980D
---------------------------------
+   JSR .l9194
    JMP .l980D
---------------------------------
++  LDA $1E
    BNE +
    LDA #$A6
    !by $2C
+   LDA #$AC
    JMP .l94D4
---------------------------------
    JSR .l9157
    LDA #$A8
    JMP .l94D4
---------------------------------
    JSR .l9157
    LDA #$A9
    JMP .l9B86
---------------------------------
    JSR .l95D7
    LDA #$AA
    JSR .l87BD
.l9855
    JSR .l916C
    LDX #$00
    STX $3F
    CMP #$6D
    BNE +
    LDA #$40
    STA $3F
    BNE ++
+   CMP #$6F
    BNE +
    LDA #$80
    STA $3F
++  JSR .l916C
+   CMP #$60
    BNE ++
    LDA $3F
    BPL +
    EOR $4F
    STA $4F
+   JSR .l8E81
    JMP .l98DC
---------------------------------
++  CMP #$61
    BNE +++
    LDA $3F
    BPL +
    SEC
    LDA #$00
    SBC $4F
    STA $4F
    LDA #$00
    SBC $4E
    STA $4E
+   LDA $4E
    BNE +
    LDA #$CE
    BNE ++
+   LDA #$02
-   JSR .l87BD
    LDA $4E
++  JSR .l87BD
    LDA $4F
    JSR .l87BD
    BCC .l98DC
+++ CMP #$62
    BEQ ++
    LDX #$D9
    CMP #$99
    BEQ +
    LDX #$D3
    CMP #$6E
    BEQ +
    LDA #$D4
    JMP .l8EAA
---------------------------------
+   LDA $3F
    BNE .l98CD
    TXA
    BNE -
.l98CD  JMP .l87DA
---------------------------------
++  LDA $3F
    BNE .l98CD
    LDA #$03
    JSR .l87BD
    JSR .lA0AA
.l98DC  JSR .l916C
    CMP #$03
    BNE +
    JMP .l9855
---------------------------------
+   LDA #$AB
    JMP .l94D4
---------------------------------
    LDA #$AF
    JSR .l9184
    JSR .lA06D
    BNE .l98F5
.l98F5  JSR .l91CA
    AND #$7F
    LSR
    CLC
    ADC #$B0
    JSR .l87BD
    LDA $12
    CMP #$03
    BNE +
    JSR .l916C
    JMP .l98F5
---------------------------------
+   LDA #$B3
    JMP .l9B86
---------------------------------
    JSR .l914B
    BEQ +
    JSR .l8FEA
    LDA #$F0
    JSR .l87B1
    JMP .lA062
---------------------------------
    !by $2C
+   LDA #$B4
    JMP .l9B86
---------------------------------
    LDA #$B5
    JSR .l87BD
    LDA #$00
    STA $3F
    STA $41
    JSR .l916C
    JSR .lA06D
    BEQ ++
    LDA #$0E
    JSR .l9201
    BNE .l9966
    JSR .l91B3
    JSR .l8E9F
    JSR .l91B3
    JSR .l91FF
    BNE +
    JSR .l91B3
    LDA #$1D
    JSR .l918A
+   JSR .l8E9C
    LDA #$DC
    JSR .l87BD
    BCC .l9966
++  INC $41
    INC $3F
.l9966  LDA $41
    BNE +
    LDA $3F
    BEQ ++
+   JSR .l91CA
    JMP .l99A8
---------------------------------
++  JSR .l8924
    LDA $3F
    BNE .l99A8
    LDA $1E
    CMP #$04
    BNE +
    JSR .l8E9C
    JMP .l999F
---------------------------------
+   LDA $12
    CMP #$6B
    BNE .l99A8
    LDA $1E
    LSR
    BCC +
    JSR .l8E53
    LDA $1E
    LSR
+   CMP #$02
    BNE ++++
    JSR .l916C
.l999F  LDA #$B7
    JSR .l87BD
    INC $3F
    BCC .l9966
.l99A8  LDA $1E
    BMI ++++
    LSR
    BCC +++
    CLC
    ADC #$B8
    JSR .l87BD
    INC $3F
    LDA $12
    CMP #$03
    BNE ++
    JSR .l916C
    BNE +
    LDA $41
    BNE .l99DB
    LDA #$34
    JMP .l9B34
---------------------------------
+   JMP .l9966
---------------------------------
++  LDA #$6C
    JSR .l9201
    BNE .l99DB
    LDA #$BC
    LDX $41
    BEQ +
.l99DB  LDA #$BB
+   JMP .l9B86
---------------------------------
+++ JMP .l87DA
---------------------------------
++++JMP .l87DE
---------------------------------
    LDA #$BD
    JSR .l9184
    LDA #$25
    JSR .l9201
    BNE +
    JSR .l9194
    LDA #$CC
    BNE ++
+   LDA #$36
    JSR .l9168
    JSR .l9194
    LDA #$BE
    BNE ++
    JSR .l916C
    BEQ +++
    LDA #$BF
    JSR .l87BD
    LDA #$C0
    JSR .l87BD
    LDA #$1D
    JSR .l8EAA
    LDA #$6D
    JSR .l9201
    BEQ +
    LDA #$6F
    LDX #$D2
    JSR .l8FDF
    LDA #$C2
    !by $2C
+   LDA #$C1
++  JMP .l9B86
---------------------------------
+++ JSR .l95D7
    LDA #$F9
    JMP .l94D4
---------------------------------
    JSR .l9157
    LDA #$FC
    JMP .l94D4
---------------------------------
    JSR .l9157
    LDA #$FD
    JMP .l9B86
---------------------------------
    JSR .l916C
    BEQ +
    JSR .l91B3
    JSR .l91FF
    BNE ++
    JSR .l9194
    LDA #$3F
    !by $2C
+   LDA #$32
    !by $2C
++  LDA #$3C
    JMP .l9B34
---------------------------------
    LDA #$C3
    JSR .l9184
    JSR .lA06D
    BEQ +
    LDA #$5D
    JMP .l8EAA
---------------------------------
-   JSR .l916C
+   JSR .l8924
    LDA $1E
    AND #$7F
    LSR
    BCS +
    ADC #$2A
    JSR .l918A
    JMP .l9A8B
---------------------------------
+   ADC #$C3
    JSR .l87BD
.l9A8B  LDA $12
    CMP #$03
    BEQ -
    LDA #$C7
    JMP .l9B86
---------------------------------
    JSR .l916C
    JSR .lA09D
    JSR .l91B3
    LDA #$20
    JSR .l918A
    JSR .l8E9F
    JSR .l9194
    JSR .l9171
    BEQ +
    LDA #$22
    JSR .l918A
    JSR .l8E9F
    LDA #$39
    JSR .l9201
    BEQ ++
    LDA #$56
    JSR .l9201
    BEQ +++
    LDA #$5A
    JSR .l9201
    BEQ ++++
    LDA #$5B
    JSR .l9201
    BEQ .l9AD8
    LDA #$D3
    JMP .l8EAA
---------------------------------
.l9AD8  JSR .l91B3
    LDA #$26
    !by $2C
+   LDA #$1B
    !by $2C
++  LDA #$23
    !by $2C
+++ LDA #$24
    !by $2C
++++LDA #$25
    JMP .l9B34
---------------------------------
    JSR .l916C
    BEQ +
    JSR .lA09D
    LDA #$18
    JSR .l918A
    JSR .l91B3
    LDA #$19
    !by $2C
+   LDA #$1A
    JMP .l9B34
---------------------------------
    JSR .l916C
    JSR .l9194
    JSR .l91FF
    BNE +
    JSR .l91B3
    LDA #$37
    !by $2C
+   LDA #$35
    JMP .l9B34
---------------------------------
    LDA #$39
    !by $2C
    LDA #$1C
    PHA
    JSR .l916C
    JSR .l9194
    PLA
    BNE .l9B34
    JSR .l91AD
    JSR .l8E9F
    JSR .l91B3
    LDA #$2B
.l9B34  JSR .l918A
    JMP .lA062
---------------------------------
    JSR .l91AD
    LDA #$2D
    BNE .l9B34
    JSR .l9157
    LDA #$EB
    JSR .l915D
--  JSR .l8FB2
    ADC #$72
    STA $14
    JSR .l91F9
    BNE ++
    LDA $14
    CLC
    ADC #$06
    JSR .l87BD
    LDA #$01
    STA $14
-   JSR .l91FF
    BNE +
    INC $14
    BNE -
+   JSR .l8FDB
++  LDA $14
    JSR .l87B1
    JSR .l91FF
    BEQ --
    LDA #$EF
    BNE .l9B86
    JSR .l91B0
    JSR .l8E9F
    JSR .l91B3
    LDA #$F3
.l9B86  JSR .l87BD
    JMP .lA062
---------------------------------
    JSR .l916C
    LDA #$16
    BNE +
    JSR .l914B
    JSR .l9194
    LDA #$05
+   JMP .l9B34
---------------------------------
    JSR .l916C
    LDA #$63
    JSR .l8EAA
    LDA #$D4
-   JSR .l87B1
    JMP .lA062
---------------------------------
    JSR .l914B
    BEQ +
    LDA #$63
    JSR .l8EAA
    LDA #$DB
    BNE -
+   LDA #$DD
    BNE +
    JSR .l9157
    LDA #$6B
+   JMP .l9B86
---------------------------------
    JSR .l9151
    BEQ +
    LDA #$D0
    JSR .l87BD
    LDA #$54
    JSR .l8EAA
    JSR .l91B3
    LDA #$D1
    !by $2C
+   LDA #$6C
    JSR .l915D
    JMP .l9B86
---------------------------------
    JSR .l9157
    LDA #$9E
    JMP .l94D4
---------------------------------
    JSR .l916C
    JSR .l9194
    JSR .l8E9F
    JSR .l91B3
    JSR .l8E9F
    JSR .l91B3
    LDA #$55
    JSR .l87BD
    LDA #$3D
    BNE .l9C1B
    LDA #$29
    !by $2C
    LDA #$3E
    PHA
    JSR .l916C
    JSR .l9194
    JSR .l8E9F
    JSR .l9194
    PLA
.l9C1B  JMP .l9B34
---------------------------------
    JSR .l916C
    LDA #$15
    BNE .l9C1B
    JSR .l916C
    BEQ +
    JSR .l91B3
    LDA #$3A
    !by $2C
+   LDA #$3B
    JMP .l9B34
---------------------------------
    JSR .l916C
    BEQ +
    JSR .l9194
    LDA #$28
    !by $2C
+   LDA #$27
-   JMP .l9B34
---------------------------------
    JSR .l916C
    JSR .l9194
    LDA #$1E
    BNE -
    JSR .l916C
    BEQ +
    JSR .l9194
    LDA #$21
    !by $2C
+   LDA #$36
    JMP .l9B34
---------------------------------
    JSR .l914B
    BNE +
    LDX #<P1_986B
    LDA #>P1_986B
    BNE .l9C8C
+   JSR .l8EA8
    LDX #<P1_9865
    LDA #>P1_9865
    BNE .l9C8C
    JSR .l914B
    JSR .l9E62
    JSR .l8EA8
    LDX #<P1_964E
    LDA #>P1_964E
    BNE .l9C8C
    JSR .l916C
    JSR .l8EA8
    LDX #<P1_9654
    LDA #>P1_9654
.l9C8C  JMP .l9129
---------------------------------
    JSR .l914B
    JSR .lA0C0
    BCS +
    LDX #<P1_9180
    LDA #>P1_9180
    BNE .l9C8C
+   JMP .lA159
---------------------------------
    JSR .l914B
    JSR .l9E62
    LDX #<P1_95E2
    LDA #>P1_95E2
    BNE .l9C8C

.l9CAC  !by $27,$11,$27,$1A,$00

---------------------------------
    ASL
    JSR .l914B
    TAY
    LDX #$05
-   LDA .l9CAC,X
    STA $3F,X
    DEX
    BPL -
    CPY #$61
    BNE +
    JSR .lA164
    STX $41
    STA $42
    JSR .l916C
    LDA #$6C
    JSR .l9201
    BNE +
    LDA $41
    STA $3F
    LDA $42
    STA $40
    JSR .lA15E
    STX $41
    STA $42
    CMP $40
    TXA
    SBC $3F
    BCC ++
    JSR .l916C
+   JSR .l91FF
    BNE +
    JSR .lA15E
    LDX $45
    LDA $46
    STX $43
    STA $44
    JSR .l916C
+   LDX #<P1_9107
    LDA #>P1_9107
    BNE .l9D55
++  JMP .l87DA
---------------------------------
    JSR .l914B
    JSR .lA0C0
    LDA #$00
    STA $C000
.l9D15
    STA $C07F
    LDX #<P1_91BA
    LDA #>P1_91BA
    BNE .l9D55
    LDX #$02
    !by $2C
    LDX #$00
    STX $C7B1
    JSR .l914B
    JSR .lA0C0
    JSR .l9171
    BNE ++
    LDA #$01
    LDX $C7DD
    BNE +
    INC $C7B1
    LDA #$00
+   STA $3A
    LDX #<P1_9714
    LDA #>P1_9714
    BNE .l9D55
++  LDA #$4F
    JSR .l9168
    JSR .l8EA8
    LDA #$01
    STA $3A
    LDX #<P1_970E
    LDA #>P1_970E
.l9D55  JMP .l9129
---------------------------------
    LDA #$07
    !by $2C
    LDA #$08
    PHA
    JSR .l916C
    JSR .l8EA8
    PLA
    JMP .l9B34
---------------------------------
    JSR .l916C
    JSR .l8EA8
    LDX #<P1_8E77
    LDA #>P1_8E77
    BNE .l9D55
    JSR .l916C
    LDX #<P1_95DC
    LDA #>P1_95DC
    BNE .l9D55
;9d7d
    LDA #$0A
    !by $2C
    LDA #$04
    !by $2C
    LDA #$03
    !by $2C
    LDA #$0C
    PHA
    JSR .l916C
    PLA
    JMP .l9B34
---------------------------------
    JSR .l916C
    BEQ +
    JSR .l9194
    LDA #$1C
    !by $2C
+   LDA #$0E
    JMP .l9B34
---------------------------------
    JSR .l914B
    LDX #<P1_8E41
    LDA #>P1_8E41
    JMP .l9129
---------------------------------
    LDA #$5F
    JSR .l87BD
    LDA #$DE
    JSR .l87BD
    LDA #$65
    JSR .l87BD
    LDA #$60
    JMP .l9E0D
---------------------------------
    JSR .l91AD
    LDA #$31
    JMP .l9B34
---------------------------------
    JSR .l916C
    TAX
    LDA $C7D8
    CPX #$6D
    BNE +
    ORA #$08
    BNE ++
+   CPX #$6F
    BNE +
    AND #$F7
++  PHA
    JSR .lA056
    PLA
    STA $C7D8
    JMP .l9E99
---------------------------------
+   LDA #$D2
    JMP .l8EAA
---------------------------------
    JSR .l9151
    BEQ ++
    LDA #$E1
    JSR .l87BD
    JSR .l890D
    LDA $1E
    BMI +++
    CMP #$04
    BEQ +
    LDA #$DF
    !by $2C
+   LDA #$14
    !by $2C
++  LDA #$E2
    JMP .l9B86
---------------------------------
    LDA #$71
.l9E0D  JSR .l87BD
    JSR .lA056
    JMP .l9E99
---------------------------------
+++ JMP .l87DE
---------------------------------
    JSR .l9E21
    LDA #$00
.l9E1E  JMP .l9D15
---------------------------------
.l9E21  JSR .l914B
    JSR .lA0C0
    JSR .l8EA8
    LDX $21
    STX $C000
    BEQ +
-   LDA $C75F,X
    STA $C000,X
    DEX
    BNE -
+   STX $C080
    RTS
---------------------------------
    JSR .l9E21
    JSR .l8E9F
    JSR .l8EA8
    LDX $21
    STX $C080
    BEQ +
-   LDA $C75F,X
    STA $C080,X
    DEX
    BNE -
+   LDA #$80
    LDX $C000
    BNE +
    TXA
+   JMP .l9D15
---------------------------------
.l9E62  LDX #$FF
    STX $C7B3
    LDA $12
    CMP #$61
    BNE +
    JSR .lA164
    STX $C7B3
    STA $C7B4
    JSR .l916C
+   LDX #$00
    STX $C7B5
    LDX #$0A
    STX $C7B6
    JSR .l91FF
    BNE +
    JSR .lA15E
    LDX $45
    LDA $46
    STX $C7B5
    STA $C7B6
    JMP .l916C
---------------------------------
+   RTS
---------------------------------
.l9E99  LDA #$02
    BIT $4C
    BEQ ++
    EOR $4C
    STA $4C
    AND #$40
    BEQ +
    EOR $4C
    STA $4C
    LDA #$52
    JSR .l8EAA
    JSR .l91B3
    LDA #$2F
    JMP .l9B34
---------------------------------
+   JMP .l9251
---------------------------------
++  LDA $4C
    AND #$08
    BEQ +
    LDA #$89
    JSR .l87BD
    BCC ++
+   LDA $4C
    AND #$04
    BEQ ++
    LDA #$9A
    JSR .l87BD
++  LDA $4C
    AND #$01
    BEQ +
    LDA #$33
    JSR .l918A
+   LDA $4C
    AND #$10
    BEQ +
    JSR .l9163
.l9EE7  LDA $8A
    CMP #$0D
    BEQ +
    JSR .l87BD
    JSR P2_83FC
    JMP .l9EE7
---------------------------------
+   RTS
---------------------------------
    LDX #$6E
    JMP P2_8827
---------------------------------
.l9EFC    !by $9E,$9E,$9E,$9C 
.l9F00    !by $9B,$97,$9B,$9E,$9A,$9E,$9D,$9E 
.l9F08    !by $98,$9E,$9C,$96,$9E,$9E,$94,$94 
.l9F10    !by $97,$98,$94,$95,$97,$9C,$9E,$9E 
.l9F18    !by $9E,$96,$9E,$9E,$96,$97,$94,$9E 
.l9F20    !by $99,$9E,$97,$87,$92,$9D,$9D,$9E 
.l9F28    !by $9E,$9D,$96,$9E,$9E,$9A,$9E,$9E 
.l9F30    !by $98,$9E,$93,$94,$98,$9E,$9C,$9C 
.l9F38    !by $97,$99,$9E,$9D,$9D,$99,$9E,$9E 
.l9F40    !by $9D,$9E,$9E,$9D,$9E,$97,$93,$9E 
.l9F48    !by $9E,$9D,$9E,$9A,$9E,$97,$9E,$97 
.l9F50    !by $97,$9A,$93,$9D,$9C,$9E,$9E,$9C 
.l9F58    !by $9E,$9B,$9E,$9E,$9E,$9E,$92,$92 
.l9F60    !by $92,$9E,$9E,$9E,$9E,$9E,$9E,$93 
.l9F68    !by $9E,$9E,$9E,$9E,$9C,$9C,$9E,$9E 
.l9F70    !by $9E,$9E,$9E,$9E,$9E,$9E,$9E,$9E 
.l9F78    !by $9E,$9E,$9E,$9E,$9B,$9E,$9E,$9B 
.l9F80    !by $9B,$9B,$9B,$9C,$9E,$9B,$9D,$9E 
.l9F88    !by $9D,$9D,$9B,$9B,$94,$96,$9E,$9B 
.l9F90    !by $9B,$9B,$96,$9E,$9E,$9D,$9A,$9A 
.l9F98    !by $9E,$9A,$9B,$9D,$9D,$9D,$9C,$9C 
.l9FA0    !by $9E,$9E,$9C,$9E,$9E,$9E,$9C,$9E 
.l9FA8    !by $9E,$F6,$F6,$F6,$9F,$8B,$DC,$1C 
.l9FB0    !by $F6,$EB,$F6,$85,$F6,$4C,$F6,$8E 
.l9FB8    !by $A0,$F6,$F6,$BA,$CE,$B7,$44,$D9
.l9FC0    !by $E5,$90,$81,$F6,$F6,$F6,$18,$F6 
.l9FC8    !by $F6,$23,$A9,$93,$F6,$27,$F6,$98 
.l9FD0    !by $D9,$5B,$20,$57,$F6,$F6,$7F,$80 
.l9FD8    !by $F6,$F6,$95,$F6,$F6,$3C,$F6,$CB 
.l9FE0    !by $E1,$EA,$F6,$1D,$B1,$26,$11,$F6 
.l9FE8    !by $8F,$67,$E5,$F6,$F6,$73,$F6,$F6 
.l9FF0    !by $A9,$F6,$C5,$C3,$F6,$F6,$BD,$F6 
.l9FF8    !by $04,$F6,$4F,$F6,$FD,$65,$61,$C3 
.lA000    !by $09,$34,$F6,$F6,$44,$F6,$28,$F6 
.lA008    !by $F6,$F6,$F6,$61,$61,$61,$F6,$F6 
.lA010    !by $F6,$F6,$F6,$F6,$CB,$F6,$F6,$F6 
.lA018    !by $F6,$34,$24,$F6,$F6,$F6,$F6,$F6 
.lA020    !by $F6,$F6,$F6,$F6,$F6,$F6,$F6,$F6 
.lA028    !by $98,$39,$F6,$F6,$40,$7A,$92,$9D 
.lA030    !by $72,$F6,$AD,$5A,$0A,$C5,$EA,$03 
.lA038    !by $19,$E4,$02,$F6,$BF,$C7,$E4,$80 
.lA040    !by $18,$F6,$82,$36,$3E,$F6,$46,$EC 
.lA048    !by $9F,$1D,$7C,$07,$0A,$F6,$F6,$4E 
.lA050    !by $F6,$F6,$F6,$5E,$F6,$3D

.lA056  JSR .l9171
    BEQ +
    JSR .l916C
    JMP .l8E94
---------------------------------
+   RTS
---------------------------------
.lA062  JSR .l9171
    BEQ +
    JSR .l8E94
+   JMP .l9E99
---------------------------------
.lA06D  JSR .lA09D
    BNE ++++
    JSR .l91B3
    JSR .l91FF
    BNE +++
    JSR .l91B3
    JSR .l91FF
    BNE ++
    JSR .l91B3
    LDA #$55
    JSR .l87BD
    LDA #$C8
    BNE +
++  LDA #$C9
    BNE +
+++ LDA #$CA
+   JSR .l87BD
    JSR .l8E9C
    LDA #$00
++++RTS
---------------------------------
.lA09D  LDA #$7F
    JSR .l9201
    BEQ +
    LDA #$5D
    JMP .l9201
---------------------------------
+   RTS
---------------------------------
.lA0AA  LDA $21
    JSR .l87BD
    TAY
    BEQ +
    LDY #$00
-   LDA $C760,Y
    JSR .l87BD
    INY
    CPY $21
    BNE -
+   RTS
---------------------------------
.lA0C0  LDA #$00
    STA $02DF
    STA $02DE
-   LDA $02DE
    CMP #$20
    BCS +++
    LDA $12
    SEC
    SBC #$63
    CMP #$03
    BCS +
    STA $41
    JSR .lB32E
    JMP .lA12D
---------------------------------
+   LDA #$27
    STA $3F
    LDA #$11
    STA $40
    LDA #$4E
    STA $41
    LDA #$1F
    STA $42
    LDA $12
    CMP #$61
    BNE +
    JSR .lA164
    STX $3F
    STA $40
    JSR .l916C
    JSR .lA13D
    BEQ ++
    LDA $3F
    STA $41
    LDA $40
    STA $42
    JMP .lA130
---------------------------------
+   JSR .lA13D
    BEQ ++
    LDX $02DE
    BNE .lA159
    JSR .lA144
    SEC
    RTS
---------------------------------
++  JSR .l916C
    CMP #$61
    BNE .lA130
    JSR .lA164
    STX $41
    STA $42
.lA12D  JSR .l916C
.lA130  JSR .lA144
    JSR .l91FF
    BEQ -
    CLC
    RTS
---------------------------------
+++ JMP .l87E6
---------------------------------
.lA13D  CMP #$6F
    BEQ +
    CMP #$6B
+   RTS
---------------------------------
.lA144  LDX $02DE
    LDY #$00
-   LDA $003F,Y
    STA $02E0,X
    INX
    INY
    CPY #$04
    BNE -
    STX $02DE
    RTS
---------------------------------
.lA159
    LDA #$D5
    JMP .l8EAA
---------------------------------
.lA15E  LDA $12
    CMP #$61
    BNE .lA159
.lA164  LDA $4F
    STA $46
    TAX
    ORA $4E
    BEQ +
    CPX #$10
    LDA $4E
    STA $45
    TAY
    SBC #$27
    BCS +
    TXA
    ADC #$10
    PHA
    TYA
    ADC #$27
    TAX
    PLA
    RTS
---------------------------------
+   LDX #$6A
    JMP P2_8827
---------------------------------
.lA187  LDX #$01
--  LDY #$00
    LDA ($45),Y
    BEQ ++
    CMP $20
    BNE +
    TAY
-   LDA ($45),Y
    CMP ($7C),Y
    BNE +
    DEY
    BNE -
    TXA
    SEC
    RTS
---------------------------------
+   INX
    SEC
    LDY #$00
    LDA ($45),Y
    ADC $45
    STA $45
    BCC --
    INC $46
    BCS --
++  CLC
    TXA
    RTS

---------------------------------
.lA1B3   !by $00,$08,$04,$08
.lA1B7   !by $05,$08,$61,$C6 
---------------------------------

P2_A1BB
    LDX #$01
-   LDA .lA1B7,X
    STA $2D,X
    LDA $C84B,X
    STA $2F,X
    STA $1C,X
    LDA .lA1B7+2,X
    STA $0250,X
    STA $31,X
    DEX
    BPL -
    LDX #$06
-   LDA .lA277-1,X
    STA $07FF,X
    LDA .lA1B3-1,X
    STA $15,X
    DEX
    BNE -
    STX $4D
    STX $2B
    STX $2C
    STX $11
    STX $0F
    STX $35
    STX $C7D9
    STX $0285
    STX $0255
    STX $C7CC
    TXA
    LDY #$0A
-   STA $C7BE,Y
    DEY
    BNE -
    LDA #$E0
    STA $C840
    LDA #$08
    STA $C7D7
    STY $C7D3
    STY $C7D4
    STY $C7D5
    STY $C842
    STY $54
.lA21D  LDA #$03

    JSR $CAEE
    !by PAGE3
    !word P3_8295

    LDA #$00
    STA $3B
    STA $3C
-   LDY $3B
    CPY $C7EF
    BEQ +
    INC $3B
    LDX $C7F0,Y
    LDA $C7FA,Y
    STX $07
    STA $08
    LDA $C804,Y
    STA $09
    LDY #$00
    JSR $CB66
    AND #$10
    BEQ -
    LDX $07
    LDY $08
    JSR ++
    LDY $3B
    LDX $3C
    LDA $C7EF,Y
    STA $C7F0,X
    LDA $C7F9,Y
    STA $C7FA,X
    LDA $C803,Y
    STA $C804,X
    INC $3C
    BNE -
+   LDA $3C
    STA $C7EF
    LDA #$01
    STA $88
    RTS

---------------------------------
.lA277    !by $00,$00,$00,$9F,$00
---------------------------------
P2_A27C
++  TYA
    BMI ++
    CPX $1C
    SBC $1D
    BCS ++
    TXA
    BNE +
    DEY
+   DEX
    STX $1C
    STY $1D
    STX $2F
    STY $30
++  RTS
---------------------------------

.lA293
    !word P3_A176
    !word P3_BBDF
    !word $CA2F

!if VER_NEW = 1 {
    !by $58
}
!if VER_OLD = 1 {
    !by $57         ; e6
}
    !by $AB,$80     ; 82 94
    !word P2_A51F
    !word $CA2F     ;c58c
    !word $CA2F     ;c593
    !word P2_A5EE   ;c59a

P2_A2A4
    LDX $C84B
    LDA $C84C
    STX $1C
    STA $1D
    JSR .lA21D

    JSR $CAEE
    !by PAGE3
    !word P3_BCA1

    RTS
---------------------------------
.lA2B8  STY $08
    LDA #$00
    STA $07
    LDY #$04
-   JSR $CB66
    CMP .lA2DD-4,Y
    BNE +
    INY
    CPY #$0E
    BNE -
    JSR $CB66
    CMP $08
    BNE +
    INY
    JSR $CB66
    AND #$EF
    CMP $09
+   RTS
---------------------------------
.lA2DD  !pet "CBM80comal"

.lA2E7  JSR .lA2B8
    BNE +
    LDY $C7EF
    LDA #$0F
    STA $C7F0,Y
    LDA $08
    STA $C7FA,Y
    LDA $09
    STA $C804,Y
    INC $C7EF
+   RTS
---------------------------------
.lA302
    STA $09                     ; pagex
    LDY #$80                    ; $8000
    JSR .lA2E7
    LDY #$90                    ; $9000
    JSR .lA2E7
    LDY #$A0                    ; $A000
    JSR .lA2E7
    LDY #$B0                    ; $B000
    JMP .lA2E7
---------------------------------
.lA318  JSR $CAEE
    !by PAGE3
    !word P3_8287

    RTS
---------------------------------
!if VER_NEW = 1 {
.lA31F    !pet $0D," $$$ Commodore-64 COMAL 80 rev 2.01 $$$",$0D
         !pet $0D,"    (C) 1984 by UniComal & Commodore ",$0D
         !pet $0D,"           "
.lA37B    !by $00,$02,$00,$4C,$09,$80
} 
!if VER_OLD = 1 {
.lA31F    !pet $0D," $$$ Commodore-64 COMAL 80 rev 2.01 $$$",$0D
         !pet $0D,"   Copyright (C) 1984 by UniComal ApS",$0D
         !pet $0D,"           "
.lA37B    !by $00,$02,$00,$49,$09,$80
}
.lA381  !by $42,$07,$04

P2_A384
    LDX #$03
-   LDA .lA37B,X
    STA $C7CC,X
    LDA .lA381-1,X
    STA $C846,X
    DEX
    BNE -
    INX
-   LDA $D020,X
    AND #$0F
    STA $C850,X
    STA $C853,X
    LDA .lA381-2,X
    STA $C84E,X
    DEX
    BPL -
    LDA $0286
    STA $C852
    LDY #$11
-   LDA .lA293-1,Y
    STA $C7DD,Y
    DEY
    BNE -
    STY $C7DD
    STY $0200
    STY $C84D
    STY $C7EF
    TYA
    LDX $0258
    CPX #$49
    BEQ +
    LDA #$32
+   STA $C84A
    LDA #$80
    STA $C7D8
    LDA #$30
    STA $C7DB
    INY
    STY $C7DA
    JSR P2_A1BB
    LDA #$9A
    LDX #$A5
    STA $C7F0                   ; liblo
    STX $C7FA                   ; libhi
    LDA #$80
    STA $C804                   ; libpag
    INC $C7EF
; check for additional extensions on Pages

    LDA #$83                    ; check PAGE4 (belongs to COMAL main part)
    JSR .lA302
    LDA #$84                    ; check PAGE5 (1st 16kb)
    JSR .lA302
    LDA #$85                    ; check PAGE6 (2nd 16kb)
    JSR .lA302

; patch page limit
; a possible patch could be as following:
; replace the upper part with the following

;    LDA #$83                    ; first page to check
;-   PHA                         ; save page
;    JSR .lA302                  ; check page for extension
;    PLA                         ; get page back
;    CLC
;    ADC #$01                    ; increase page counter
;    CMP #$87                    ; cmp with max. page (there is a hardware limit)
;    BCC -                       ; next page
;    NOP                         ; fillbyte
; patch end

    LDA #$00
    JSR .lA318
    CLI
    LDA #$01
    JSR .lA318
    LDA $C84D
    BNE P2_A446
    LDA #$03
    JSR P2_8896
    LDX #<.lA31F
    LDA #>.lA31F
    STX $7C
    STA $7D
    JSR P2_A86C
    SEC
    LDA $2F
    SBC $2D
    STA $65
    LDA $30
    SBC $2E
    STA $64

.lA433
    JSR $CAEE
    !by PAGE3
    !word P3_BFC5

    DEC $7C
    JSR P2_A86C
    LDX #$E8
    JSR P2_880C
    JSR $CDF4
P2_A446
    LDX #$FF
    TXS
    INX
    STX $C7D1
    LDY $C7BF
    BEQ .lA4A8
    CLC
    LDA $C7C0
    STA $65
    STA $C662
    TAX
    ADC $C7C2
    STA $C7C0
    TYA
    STA $64
    STA $C661
    ADC $C7C1
    STA $C7BF
    CPX #$20
    LDA $64
    SBC #$4E
    BCC .lA486
    LDA #$00
    STA $C7BF
    LDX #$6F
    JSR P2_87FF
    JSR $CDF4
    JMP .lA4A8
---------------------------------
.lA486
    JSR $CAEE
    !by PAGE3
    !word P3_BFC5

    JSR $CAEE
    !by PAGE1
    !word P1_943F

    LDA $27
    STA $C7
    LDY #$01
-   LDA $0100,Y
    BEQ +
    JSR $CE05
    INY
    BNE -
+   STA $C7
    JSR $CE03
.lA4A8
    LDA #$01
    STA $C845                   ; status of comal program
    JSR P2_A519
    BCS P2_A446
    JSR P2_920D
    LDA #$00
    STA $54
    STA $4D
    LDA $15
    STA $C663
    LDA $4C
    AND #$01
    BNE ++
    LDA $C7BF
    BEQ +
    CLC
    LDX #$01
-   LDA $C661,X
    ADC $C7C1,X
    STA $C7BF,X
    DEX
    BPL -
+   JSR P2_A832
    JMP P2_A446
---------------------------------
P2_A4E0
++  LDX #$FF
    TXS
    INX
    STX $C7BF
    LDY $15
-   LDA .lA502,X
    STA $C661,Y
    INX
    INY
    CPX #$05
    BNE -
    JSR $CA36
    LDA $D3
    BEQ +
    JSR $CDF4
+   JMP P2_A446

---------------------------------
.lA502  !by $00,$00,$05,$FF,$33
---------------------------------

.lA507  LDA $D018
    AND #$02
    BEQ +
    LDA $C7D8
    BNE ++
+   LDA #$00
++  STA $C7D2
    RTS
---------------------------------
P2_A519  JMP ($C7E7)
---------------------------------
.lA51C  JMP ($C7ED)
---------------------------------
P2_A51F
    LDX #$00
    STX $54
    STX $90
.lA525  JSR .lA7C0
    LDA #$01
    STA $0292
    JSR .lA507
    BIT $54
    BPL +
    LDX #$01
    STX $C6
    DEX
    STX $0292
    JSR P2_BDF4
-   JMP .lA5C8
---------------------------------
+   LDA $0277
    CMP #$0D
    BEQ -
    LDY #$00
-   CMP .lA5A9,Y
    BEQ +
    INY
    CPY #$1F
    BNE -
    BEQ ++
+   JSR .lBDBC
    LDX $0277
    JSR .lA51C
    BCS .lA5C8
    JMP .lA599
---------------------------------
++  JSR $FFE4
    CLI
    PHA
    CMP #$94
    BEQ ++
    CMP #$9D
    BEQ +
    CMP #$14
    BNE +++
    LDY $D3
    BNE +
    INC $D3
+   LDY $D3
    BEQ ++
    BNE +
+++ LDY $D3
    CPY $D5
    BEQ ++
    AND #$7F
    CMP #$13
    BEQ ++
    CMP #$11
    BNE +
++  JSR .lBDBC
+   PLA
    JSR $CE05
.lA599  LDA $C7D8
    AND #$02
    BNE +
    LDA #$00
    STA $D4
    STA $D8
+   JMP .lA525
---------------------------------
.lA5A9    !by $00,$01,$02,$04,$06,$07,$0A 
.lA5B0    !by $0B,$0C,$0F,$10,$15,$16,$17,$18 
.lA5B8    !by $19,$1A,$1B,$80,$82,$83,$84,$85 
.lA5C0    !by $86,$87,$88,$89,$8A,$8B,$8C,$8F
---------------------------------
.lA5C8  JSR .lBDBC
    CLI
    LDA #$0D
    STA $0277
    LDA #$00
    STA $D3
    JSR P2_A806
    JSR $CDF4
    LDA #$00
    BIT $54
    STA $D4
    STA $D8
    STA $54
    BPL +
    STA $C7BF
    SEC
    RTS
---------------------------------
+   CLC
    RTS
---------------------------------
P2_A5EE
    CPX #$10
    BNE +
    JSR $FFE4

    JSR $CAEE
    !by PAGE1
    !word P1_A95D

    CLC
    RTS
---------------------------------
+   CPX #$06
    BNE +
    LDY $D3
-   CPY $D5
    BEQ .lA60F
    JSR .lA7E9
    BEQ .lA60F
    INY
    BNE -
.lA60F  CPY $D5
    BEQ .lA61B
    JSR .lA7E9
    BNE .lA61B
    INY
    BNE .lA60F
.lA61B  CPY $D3
    BEQ .lA663
    LDA #$1D
    JSR .lA7A2
    JMP .lA61B
---------------------------------
+   CPX #$02
    BNE ++
    LDY $D3
-   DEY
    BMI +
    JSR .lA7E9
    BEQ -
-   JSR .lA7E9
    BEQ +
    DEY
    BPL -
+   INY
.lA63E  CPY $D3
    BEQ .lA663
    LDA #$9D
    JSR .lA7A2
    JMP .lA63E
---------------------------------
++  CPX #$17
    BNE +
    LDY #$0F
    LDX #$0B
    LDA #$00
-   STA $0286
    STY $C854
--- STX $C853

--  JSR $CAEE
    !by PAGE1
    !word P1_AA14

.lA663  JMP .lA785
---------------------------------
+   CPX #$16
    BNE +
    LDY #$06
    LDX #$06
    LDA #$01
    BNE -
+   CPX #$18
    BNE +
    JSR .lA7AB
    BCS ---
-   JMP .lA788
---------------------------------
+   CPX #$19
    BNE +
    JSR .lA7AB
    BCC -
    STX $C854
    BCS --
+   CPX #$1A
    BNE +
    LDA $C853
    STA $C850
    LDA $C854
    STA $C851
    LDA $0286
    STA $C852
    BCS .lA663
+   CPX #$01
    BEQ +
    JMP .lA73E
---------------------------------
+   LDA $D3
    PHA
    LDY #$00
    STY $22
    STY $23
--  LDA ($D1),Y
    AND #$7F
    CMP #$3A
    BCS +
    SBC #$2F
    BCC +
    TAX
    LDA #$0A
    STA $9E
    LDA #$00
-   PHA
    TXA
    CLC
    ADC $22
    TAX
    PLA
    ADC $23
    DEC $9E
    BNE -
    STA $23
    STX $22
    INY
    CPY #$04
    BNE --
+   LDA $22
    CLC
    ADC #$10
    STA $C662
    LDA $23
    ADC #$27
    STA $C661

    JSR $CAEE
    !by PAGE1
    !word P1_943F

    LDA $27
    BEQ ++
.lA6F6  LDY $D3
    BEQ +
    LDA #$9D
    JSR .lA7A2
    JMP .lA6F6
---------------------------------
+   LDX $7A
    LDA $7B
    STX $31
    STA $32
    JSR P2_B624

    JSR $CAEE
    !by PAGE1
    !word P1_92D4

    JSR $CAEE
    !by PAGE1
    !word P1_96E6

    LDA $89
    BEQ ++
-   LDA #$9D
    JSR .lA7A2
    DEC $89
    BNE -
++  PLA
.lA727  STA $22
.lA729  LDA $D3
    CMP $22
    BEQ ++
    LDA #$9D
    BCS +
    LDA #$1D
+   JSR .lA7A2
    JMP .lA729
---------------------------------
++  JMP .lA785
---------------------------------
.lA73E  CPX #$83
    BNE ++
    LDY $D5
-   LDA ($D1),Y
    CMP #$20
    BNE .lA785
    DEY
    BPL -
    CLI
    LDY #$00
-   LDA .lA78A,Y
    BEQ +
    JSR .lA7D9
    JSR $CE05
    INY
    BNE -
+   SEC
    RTS
---------------------------------
++  CPX #$0B
    BNE +

    JSR $CAEE
    !by PAGE1
    !word P1_96E6

    JMP .lA785
---------------------------------
+   CPX #$0C
    BNE .lA785
    LDY $D5
-   LDA ($D1),Y
    CMP #$20
    BNE +
    DEY
    BPL -
+   CPY $D5
    BEQ +
    INY
+   TYA
    JMP .lA727
---------------------------------
.lA785  JSR $FFE4
.lA788  CLC
    RTS
---------------------------------
.lA78A   !by $D2,$D5,$CE,$20,$22,$2A,$22,$00   ; ... "*".
.lA792   !by $90,$05,$1C,$9F,$9C,$1E,$1F,$9E
.lA79A   !by $81,$95,$96,$97,$98,$99,$9A,$9B 

.lA7A2  LDX #$00
    STX $D8
    STX $D4
    JMP $FFD2
---------------------------------
.lA7AB  JSR $FFE4
    JSR .lA7C0
    LDA $0277
    LDX #$0F
-   CMP .lA792,X
    BEQ +
    DEX
    BPL -
    CLC
+   RTS
---------------------------------
.lA7C0  LDA $C865
    BEQ .lA7D2
    JSR .lA7D2
    LDA $0277
    JSR .lA7D9
    STA $0277
    RTS
---------------------------------
.lA7D2
    JSR $CAEE
    !by PAGE3
    !word P3_B42D
    RTS
---------------------------------
.lA7D9  BIT $C7D2
    BMI +
    CMP #$C1
    BCC +
    CMP #$DE
    BCS +
    AND #$7F
+   RTS
---------------------------------
.lA7E9  LDA ($D1),Y
    LDX #$0F
-   CMP .lA7F7-1,X
    BEQ +
    DEX
    BNE -
    DEX
+   RTS
---------------------------------
.lA7F7  !pet " ()+-*^:,;=<>/",$22

P2_A806
    LDA #$00
    STA $89
-   BIT $90
    BVS +
    JSR $CE4E
    CMP #$0A
    BEQ -
    CMP #$0D
    BEQ +
    LDX $89
    CPX #$78
    BCS -
    STA $C5E8,X
    INC $89
    BCC -
+   LDX $89
    LDA #$0D
    STA $C5E8,X
    LDA #$00
    STA $89
    RTS
---------------------------------
P2_A832
    LDA $15
    CMP #$03
    BNE +
    LDA #$04
    STA $C663
    LDX #$CF
    STX $C664
    STA $15

+   JSR $CAEE
    !by PAGE1
    !word P1_943F

    LDA $15
    SEC
    SBC $27
    STA $27
    BCS +
    DEC $26
+   LDA #$01
    STA $28

    JSR $CAEE
    !by PAGE1
    !word P1_9477

    LDY #$00
-   LDA $C661,Y
    STA ($7A),Y
    INY
    CPY $15
    BNE -
    RTS
---------------------------------
P2_A86C
    LDY #$00
-   LDA ($7C),Y
    BEQ +
    JSR $CE05
    INY
    BNE -
+   RTS
---------------------------------
P2_A879
    LDA $2D
    STA $3B
    LDA $2E
    STA $3C
    LDX #$00
    JSR .lAFD3
    LDA #$00
    STA $C7C3
    STA $C7C4
    STA $02
    STA $03
    STA $04
    STA $C7B0
    STA $41
    STA $42
    STA $C7B1
    LDA #$82
    STA $09
    LDA $16
    STA $31
    LDA $17
    STA $32
    LDY #$02
    LDA ($31),Y
    BNE .lA8B3
    JMP .lAFBD
---------------------------------
.lA8B3  CLC
    ADC $31
    STA $3F
    LDA $32
    ADC #$00
    STA $40
    LDY #$02
    LDA ($3F),Y
    STA $1F
    BNE +
    DEY
    LDA ($31),Y
    STA ($3F),Y
    DEY
    LDA ($31),Y
    STA ($3F),Y
+   LDY #$03
    STY $15
.lA8D4  JSR .lAFC5
    CMP #$68
    BNE ++
-   JSR .lB0D4
    CMP #$69
    BEQ +
    CMP #$B6
    BEQ +
    CMP #$6A
    BNE -
    JMP .lA8D4
---------------------------------
+   LDA #$69
    DEY
    STA ($31),Y
    LDX #$01
    JSR .lAFD3
    TYA
    STA ($3D),Y
    INY
.lA8FB  JSR .lB00C
    LDA #$00
    STA ($3D),Y
    INY
    STA ($3D),Y
    INY
    STA ($3D),Y
    JMP .lAFA3
---------------------------------
++  CMP #$6D
    BNE ++
    LDX #$01
    JSR .l900A
    LDA ($3D),Y
    CMP #$01
    BNE +
    JMP .l9008
---------------------------------
+   INY
    JSR .lB054
    JSR .lB020
-   JSR .lB0D4
    CMP #$69
    BEQ +
    CMP #$B6
    BNE -
+   LDA #$69
    DEY
    STA ($31),Y
    LDY #$01
    JSR .lB00C
    JMP .lAFA3
---------------------------------
++  CMP #$6E
    BNE ++
    LDX #$01
    JSR .l900A
    LDA ($3D),Y
    CMP #$01
    BNE +
    JMP .l9008
---------------------------------
+   LDA #$01
    STA ($3D),Y
    INY
    JSR .lB072
    DEY
    DEY
    LDA #$B6
    STA ($45),Y
    LDY #$04
    JSR .lB020
    JMP .lAFA3
---------------------------------
++  CMP #$6F
    BNE ++
    LDX #$01
    JSR .l900A
    LDA ($3D),Y
    BNE +
    INY
    JSR .lB072
    DEY
    DEY
    LDA #$B6
    STA ($45),Y
+   LDY #$04
    JSR .lAD8A
    LDX #$01
    JSR .lB0A6
    JMP .lAFA3
---------------------------------
++  CMP #$70
    BEQ ++
    CMP #$E3
    BEQ +
    CMP #$E4
    BEQ +
    CMP #$E5
    BEQ +
    JMP .lAA8C
---------------------------------
+   LDX #$E2
    !by $2C
++  LDX #$70
    STX $44
    SEC
    SBC $44
    STA $43
    JSR .lAE02
    LDX #$02
    JSR .lAFD3
    LDA $43
    STA ($3D),Y
    JSR .lAFC5
    STA $45
    JSR .lAFC5
    STA $46
    LDY #$02
    STA ($3D),Y
    LDA $45
    DEY
    STA ($3D),Y
    LDY #$03
    JSR .lB00C
    LDA $04
    BEQ +
    JSR .lB0B3
    JMP .lAA0D
---------------------------------
+   JSR .l90B6
    LDA #$03
    JSR $C9F2
    LDX $2F
    LDA $30
    STX $07
    STA $08
    LDY #$03
    LDA #$00
    JSR $CB8E
    DEY
    LDA $32
    JSR $CB8E
    DEY
    LDA $31
    JSR $CB8E
    LDA $43
    ORA #$14
    STA ($45),Y
    INY
    CLC
    LDA $2F
    ADC #$01
    STA ($45),Y
    INY
    LDA $30
    ADC #$00
    STA ($45),Y
.lAA0D  LDY #$0B
-   STY $15
    LDA ($31),Y
    CMP #$78
    BCC +
    CMP #$7E
    BCS ++
    INY
+   INY
    INY
    INY
    BNE -
++  TAX
    CMP #$F5
    BEQ ++
    LDY #$06
    LDA $02
    STA ($3D),Y
    INY
    LDA $03
    STA ($3D),Y
    INY
    LDA $04
    STA ($3D),Y
    LDA $31
    STA $02
    LDA $32
    STA $03
    LDY $15
    INY
    STY $04
    LDA #$00
    STA ($31),Y
    INY
    STA ($31),Y
    CPX #$7E
    BEQ +
    INY
    TYA
    LDY #$09
    STA ($3D),Y
    INY
    LDA $41
    STA ($3D),Y
    LDA $42
    INY
    STA ($3D),Y
    INY
    LDA $C7C3
    STA ($3D),Y
    INY
    LDA $C7C4
    STA ($3D),Y
    LDA #$00
    STA $42
    STA $C7C4
    JMP .lAFA3
---------------------------------
+   LDA $43
    ORA #$80
    LDY #$00
    STA ($3D),Y
    JMP .lAFA3
---------------------------------
++  LDY #$03
    JSR .lB072
    LDX #$02
    JSR .lB0A6
    JMP .lAFA3
---------------------------------
.lAA8C  CMP #$0E
    BEQ +++
    CMP #$E6
    BEQ +
    CMP #$E7
    BEQ +
    CMP #$E8
    BNE ++
+   JSR .lAB5D
    BCS +
-   JMP .l9008
---------------------------------
++  JMP .lAB6B
---------------------------------
+++ JSR .lAB5D
    BCS -
    LDX #$0E
    !by $2C
+   LDX #$E5
    STX $44
    SEC
    SBC $44
    STA $43
    LDX #$02
    JSR .l900A
    LDY $15
    INY
    LDA ($31),Y
    TAY
    INY
    BNE +
    DEC $15
    LDA ($3D),Y
    AND #$7F
    CLC
    ADC $44
    JSR .lAFCC
    LDY #$01
    LDA ($3D),Y
    JSR .lAFCC
    LDY #$02
    LDA ($3D),Y
    JSR .lAFCC
    JMP .lAB08
---------------------------------
+   JSR .lAFC5
    LDY #$01
    CMP ($3D),Y
    BNE +
    JSR .lAFC5
    LDY #$02
    CMP ($3D),Y
    BEQ ++
+   JMP .l90E7
---------------------------------
++  LDY #$00
    LDA ($3D),Y
    AND #$7F
    CMP $43
    BEQ .lAB08
.lAB02  JSR .l9054
    JMP .l90DD
---------------------------------
.lAB08  LDY #$03
    JSR .lB072
    LDY #$06
    LDA ($3D),Y
    STA $02
    INY
    LDA ($3D),Y
    STA $03
    INY
    LDA ($3D),Y
    STA $04
    LDY #$00
    LDA ($3D),Y
    BMI .lAB55
    LDY #$03
    LDA ($3D),Y
    STA $43
    INY
    LDA ($3D),Y
    STA $44
    LDY #$09
    LDA ($3D),Y
    TAY
    LDA $C7C3
    STA ($43),Y
    LDA $C7C4
    INY
    STA ($43),Y
    LDY #$0A
    LDA ($3D),Y
    STA $41
    INY
    LDA ($3D),Y
    STA $42
    INY
    LDA ($3D),Y
    STA $C7C3
    INY
    LDA ($3D),Y
    STA $C7C4
.lAB55  LDX #$02
    JSR .lB0A6
    JMP .lAFA3
---------------------------------
.lAB5D  PHA
    LDX #$02
    JSR .l900A
    LDA ($3D),Y
    AND #$7F
    CMP #$01
    PLA
    RTS
---------------------------------
.lAB6B  CMP #$82
    BEQ +
    CMP #$83
    BNE ++
+   AND #$01
    STA $43
    LDX #$03
    JSR .lAFD3
    INC $C7B0
    LDA $43
    STA ($3D),Y
    JSR .lAFC5
    LDY #$01
    STA ($3D),Y
    JSR .lAFC5
    LDY #$02
    STA ($3D),Y
    INY
    JSR .lB00C
-   JSR .lB0D4
    CMP #$88
    BEQ +
    CMP #$87
    BNE -
    JMP .lAFA3
---------------------------------
+   INC $C7B1
    LDX #$03
    JSR .lB0A6
    JMP .lA8D4
---------------------------------
++  CMP #$8A
    BEQ +
    CMP #$8B
    BNE +++
+   SEC
    SBC #$8A
    STA $43
    LDX #$03
    JSR .l900A
    LDY $15
    INY
    LDA ($31),Y
    TAY
    INY
    BNE +
    DEC $15
    LDA ($3D),Y
    CLC
    ADC #$8A
    JSR .lAFCC
    LDY #$01
    LDA ($3D),Y
    JSR .lAFCC
    LDY #$02
    LDA ($3D),Y
    JSR .lAFCC
    JMP .lAC04
---------------------------------
+   JSR .lAFC5
    LDY #$01
    CMP ($3D),Y
    BNE ++
    JSR .lAFC5
    LDY #$02
    CMP ($3D),Y
    BEQ +
++  JMP .l90E7
---------------------------------
+   LDY #$00
    LDA $43
    CMP ($3D),Y
    BEQ .lAC04
    JMP .lAB02
---------------------------------
.lAC04  LDY #$03
    JSR .lB089
    LDY #$03
    JSR .lB072
    LDX #$03
    JSR .lB0A6
    DEC $C7B0
    JMP .lAFA3
---------------------------------
+++ CMP #$95
    BNE +
    LDX #$04
    JSR .lAFD3
    JSR .lB00C
    JMP .lAFA3
---------------------------------
+   CMP #$DA
    BNE +
    LDX #$04
    JSR .l900A
-   JSR .lB0D4
    CMP #$96
    BNE -
    LDY #$00
    JSR .lB089
    LDX #$04
    JSR .lB0A6
    JMP .lAFA3
---------------------------------
+   CMP #$97
    BNE ++
-   JSR .lB0D4
    CMP #$98
    BEQ +
    CMP #$99
    BNE -
    JMP .lA8D4
---------------------------------
+   LDX #$05
    JSR .lAFD3
    JSR .lB00C
    JMP .lAFA3
---------------------------------
++  CMP #$9B
    BNE +
    LDX #$05
    JSR .l900A
    JSR .lB072
    LDY #$00
    LDA ($3D),Y
    JSR .lAFCC
    LDY #$01
    LDA ($3D),Y
    JSR .lAFCC
    LDX #$05
    JSR .lB0A6
    JMP .lAFA3
---------------------------------
+   CMP #$9C
    BNE ++
    JSR .lAFC5
    STA $45
    JSR .lAFC5
    STA $46
    LDX $04
    BNE +
    JSR .l90B6
    LDA #$13
    STA ($45),Y
    LDA #$02
    JSR $C9F2
    LDX $2F
    LDA $30
    STX $07
    STA $08
    LDY #$01
    LDA $3F
    JSR $CB8E
    INY
    LDA $40
    JSR $CB8E
    CLC
    LDA $2F
    ADC #$01
    STA ($45),Y
    INY
    LDA $30
    ADC #$00
    STA ($45),Y
+   JSR .lB0B3
    JMP .lAFA3
---------------------------------
++  CMP #$A1
    BNE ++
-   JSR .lB0D4
    CMP #$A2
    BEQ +
    CMP #$A3
    BNE -
+   SEC
    SBC #$A2
    STA $43
    LDX #$06
    JSR .lAFD3
    LDA #$00
    STA ($3D),Y
    INY
    LDA $43
    STA ($3D),Y
    INY
    JSR .lB00C
    LDA #$00
-   STA ($3D),Y
    INY
    CPY #$08
    BNE -
    JMP .lAFA3
---------------------------------
++  CMP #$A4
    BNE ++
    LDX #$06
    JSR .l900A
    LDA ($3D),Y
    CMP #$02
    BEQ .lAD53
    LDA #$01
    STA ($3D),Y
    LDY #$02
    JSR .lB054
    JSR .lB020
-   JSR .lB0D4
    CMP #$A6
    BEQ +
    CMP #$AC
    BNE -
    LDA #$01
    !by $2C
+   LDA #$00
    LDY #$01
    CMP ($3D),Y
    BNE +
    INY
    JSR .lB00C
    DEC $15
    DEC $15
    LDA #$00
    JSR .lAFCC
    JSR .lAFCC
    JMP .lAFA3
---------------------------------
+   JMP .lAB02
---------------------------------
++  CMP #$A8
    BNE ++
    LDX #$06
    JSR .l900A
    LDA ($3D),Y
    CMP #$01
    BEQ +
.lAD53  JMP .l906A
---------------------------------
+   LDA #$02
    STA ($3D),Y
    LDY #$02
    JSR .lB054
    JSR .lB020
    LDY #$02
    LDA #$00
-   STA ($3D),Y
    INY
    CPY #$05
    BNE -
    JMP .lAFA3
---------------------------------
++  CMP #$A9
    BNE ++
    LDX #$06
    JSR .l900A
    LDA ($3D),Y
    BEQ .lAD53
    LDY #$05
    JSR .lAD8A
    LDX #$06
    JSR .lB0A6
    JMP .lAFA3
---------------------------------
.lAD8A  LDA ($3D),Y
    STA $43
    INY
    LDA ($3D),Y
    STA $44
    INY
    LDA ($3D),Y
    TAY
-   LDA $44
    BEQ +
    LDA ($43),Y
    PHA
    INY
    LDA ($43),Y
    TAX
    LDA $40
    STA ($43),Y
    DEY
    LDA $3F
    STA ($43),Y
    PLA
    STA $43
    STX $44
    LDY #$00
    BEQ -
+   RTS
---------------------------------
++  CMP #$AA
    BNE ++
    JSR .lAE02
    LDA $C7C4
    BNE +
    CLC
    LDA $31
    ADC #$04
    STA $C7C3
    LDA $32
    ADC #$00
    STA $C7C4
+   LDA $42
    BEQ .lADE4
    LDY #$00
    CLC
    LDA $31
    ADC #$04
    STA ($41),Y
    INY
    LDA $32
    ADC #$00
    STA ($41),Y
.lADE4  JSR .lB0D4
    CMP #$AB
    BNE .lADE4
    TYA
    CLC
    ADC $31
    STA $41
    LDA $32
    ADC #$00
    STA $42
    LDA #$00
    TAY
    STA ($41),Y
    INY
    STA ($41),Y
    JMP .lAFA3
---------------------------------
.lAE02  DEC $3C
    LDY #$FF
    LDA ($3B),Y
    INC $3C
    CMP #$00
    BEQ +
    CMP #$02
    BEQ +
    JMP .l90AF
---------------------------------
+   RTS
---------------------------------
++  CMP #$8D
    BCC +
    CMP #$90
    BCS +
    JSR .lAE02
    JMP .lAFA3
---------------------------------
+   CMP #$9D
    BNE +
    JSR .lAFC5
    STA $C7BD
    JSR .lAFC5
    STA $C7BE
    JSR .lB1AA
    JMP .lAFA3
---------------------------------
+   CMP #$EB
    BNE ++
    JSR .lAE02
    LDX #$02
    JSR .l8FF0
    BNE +
    LDY #$00
    LDA ($3D),Y
    BMI +
    JSR .lB0B3
    JMP .lAFA3
---------------------------------
+   LDA #$EF
    JMP .l90D7
---------------------------------
++  CMP #$E1
    BNE ++
-   JSR .lB0D4
    CMP #$DF
    BEQ +
    CMP #$14

    BEQ +++
    CMP #$E0
    BNE -
+   JSR .lAE9B
    BEQ ++++
    CMP #$03
    BEQ .lAE8B
    CLC
    ADC #$DE
    DEC $15
    JSR .lAFCC
-   JMP .lAFA3
---------------------------------
++  CMP #$E2
    BNE ++
    JSR .lAE9B
    BEQ -
    BNE ++++
.lAE8B  LDA #$8E
    JMP .l90DD
---------------------------------
+++ JSR .lAE9B
    BEQ ++++
    CMP #$03
    BNE .lAE8B
    BEQ -
.lAE9B  LDA $3B
    STA $3D
    LDA $3C
    STA $3E
-   DEC $3E
    LDY #$FF
    LDA ($3D),Y
    BEQ ++++
    CMP #$02
    BEQ +
    TAX
    LDA $3D
    SEC
    SBC .lB002,X
    STA $3D
    BCC -
    INC $3E
    BCS -
+   LDY #$F1
    LDA ($3D),Y
    AND #$7F
    RTS
---------------------------------
++++DEC $15
    JSR .lAFC5
    CMP #$E2
    BEQ +
    LDA #$91
    !by $2C
+   LDA #$38
    PHA
    LDA #$8E
    JMP .l902B
---------------------------------
++  CMP #$6B
    BNE +
    LDX #$07
    JSR .lAFD3
    JMP .lA8FB
---------------------------------
+   CMP #$6C
    BEQ +
    CMP #$D0
    BNE ++++
-   JSR .lB0D4
    CMP #$D1
    BNE -
+   LDA $C7B1
    STA $43
    LDA $3B
    STA $3D
    LDA $3C
    STA $3E
-   DEC $3E
    LDY #$FF
    LDA ($3D),Y
    BEQ +++
    CMP #$03
    BEQ +
    CMP #$08
    BNE ++
+   INC $43
++  CMP #$07
    BEQ +
    TAX
    LDA $3D
    SEC
    SBC .lB002,X
    STA $3D
    BCC -
    INC $3E
    BCS -
+++ LDA #$94
    PHA
    LDA #$95
    JMP .l902B
---------------------------------
+   LDA $43
    JSR .lAFCC
    LDY #$FC
    JSR .lB020
    JMP .lAFA3
---------------------------------
++++CMP #$9E
    BNE +
    LDX #$07
    JSR .l900A
    JSR .lB089
    LDY #$03
    JSR .lAD8A
    LDX #$07
    JSR .lB0A6
    JMP .lAFA3
---------------------------------
+   CMP #$F9
    BNE +
    LDX #$08
    JSR .lAFD3
    TYA
    STA ($3D),Y
    INY
    JSR .lB00C
    INC $C7B0
    JMP .lAFA3
---------------------------------
+   CMP #$FC
    BNE ++
    LDX #$08
    JSR .l900A
    LDA ($3D),Y
    BEQ +
-   JMP .l9008
---------------------------------
+   LDA #$01
    STA ($3D),Y
    INY
    JSR .lB072
    LDY #$01
    JSR .lB00C
    JMP .lAFA3
---------------------------------
++  CMP #$FD
    BNE .lAFA3
    LDX #$08
    JSR .l900A
    LDA ($3D),Y
    BEQ -
    INY
    JSR .lB072
    LDX #$08
    JSR .lB0A6
    DEC $C7B0
.lAFA3  LDX $C7B1
    BEQ +
    DEC $C7B0
    DEC $C7B1
+   LDX $3F
    LDA $40
    STX $31
    STA $32
    LDA $1F
    BEQ .lAFBD
    JMP .lA8B3
---------------------------------
.lAFBD  LDX #$00
    JSR .l900A
    JMP .lB0A6
---------------------------------
.lAFC5  LDY $15
    LDA ($31),Y
    INC $15
    RTS
---------------------------------
.lAFCC  LDY $15
    STA ($31),Y
    INC $15
    RTS
---------------------------------
.lAFD3  LDA $3B
    STA $3D
    LDA $3C
    STA $3E
    LDA .lB002,X
    TAY
    CLC
    ADC $3B
    STA $3B
    BCC +
    INC $3C
+   LDA $3C
    CMP $30
    BCC ++
    BEQ +
-   LDX #$34
    JMP .lB129
---------------------------------
+   LDA $3B
    CMP $2F
    BCS -
++  DEY
    TXA
    STA ($3D),Y
    LDY #$00
    RTS
---------------------------------
.lB002  !by $01,$08,$0F,$07,$04,$04 
.lB008  !by $09,$07,$05,$01 

.lB00C  LDA $31
    STA ($3D),Y
    INY
    LDA $32
    STA ($3D),Y
    INY
    LDA $15
    STA ($3D),Y
    INY
    INC $15
    INC $15
    RTS
---------------------------------
.lB020  STY $47
    LDA ($3D),Y
    STA $45
    INY
    LDA ($3D),Y
    STA $46
    INY
    LDA ($3D),Y
    CLC
    ADC $45
    BCC +
    INC $46
+   LDY $15
    STA ($31),Y
    INY
    LDA $46
    STA ($31),Y
    INY
    LDX $15
    STY $15
    LDY $47
    LDA $31
    STA ($3D),Y
    INY
    LDA $32
    STA ($3D),Y
    INY
    TXA
    STA ($3D),Y
    INY
    RTS
---------------------------------
.lB054  LDA ($3D),Y
    STA $45
    INY
    LDA ($3D),Y
    STA $46
    INY
    LDA ($3D),Y
    INY
    STY $47
    TAY
    BEQ +
    LDA $31
    STA ($45),Y
    INY
    LDA $32
    STA ($45),Y
+   LDY $47
    RTS
---------------------------------
.lB072  LDA ($3D),Y
    STA $45
    INY
    LDA ($3D),Y
    STA $46
    INY
    LDA ($3D),Y
    TAY
    LDA $3F
    STA ($45),Y
    INY
    LDA $40
    STA ($45),Y
    RTS
---------------------------------
.lB089  LDA ($3D),Y
    STA $45
    INY
    LDA ($3D),Y
    STA $46
    LDY #$02
    LDA ($45),Y
    CLC
    ADC $45
    PHP
    JSR .lAFCC
    PLP
    LDA $46
    ADC #$00
    JSR .lAFCC
    RTS
---------------------------------
.lB0A6  SEC
    LDA $3B
    SBC .lB002,X
    STA $3B
    BCS +
    DEC $3C
+   RTS
---------------------------------
.lB0B3  LDY $04
    BEQ +
    LDA $31
    STA ($02),Y
    INY
    LDA $32
    STA ($02),Y
    LDY $15
    LDA #$00
    STA ($31),Y
    STY $04
    INY
    STA ($31),Y
    LDA $31
    STA $02
    LDA $32
    STA $03
+   RTS
---------------------------------
.lB0D4  LDY $15
    LDA $31
    STA $7C
    LDA $32
    STA $7D
    JSR .lB0E4
    STY $15
    RTS
---------------------------------
.lB0E4  LDA ($7C),Y
    INY
    CMP #$01
    BNE +
    INY
    INY
---  INY
--  INY
-   INY
    RTS
---------------------------------
+   CMP #$02
    BEQ --
    CMP #$03
    BNE +
    TAX
    TYA
    ADC ($7C),Y
    TAY
    TXA
    RTS
---------------------------------
+   CMP #$0D
    BCC --
    CMP #$78
    BCC +
    CMP #$7E
    BCC ---
    CMP #$CD
.lB10E
    BEQ -
    CMP #$FF
    BEQ -
    CMP #$CE
    BEQ -
    CMP #$D2
    BEQ -
    CMP #$F2
    BEQ -
    CMP #$D9
    BEQ --
    CMP #$D3
    BEQ --
+   RTS
---------------------------------
.lB129  STX $3D
    LDA #$05
    STA $C845                   ; status of comal program

.lB130
    JSR $CAEE
    !by PAGE3
    !word P3_BCA1
    LDA #$02
    STA $88
    LDX $3D
    JSR $CB5F
    !by PAGE3
    !word P3_BF44
    RTS

.lB143    !by $02,$83,$31,$60,$00 
.lB148    !by $00,$00,$00,$00,$00,$00,$00,$66 
.lB150    !by $00,$00,$00,$11,$80,$00,$00,$00 
.lB158    !by $02,$06,$00,$01,$88,$10,$02,$00 
.lB160    !by $30,$00,$31,$80,$00,$00,$00,$00 
.lB168    !by $00,$00,$00,$00,$00,$00,$00,$00 
.lB170    !by $00,$00,$00,$00,$00,$00,$80,$00 
.lB178    !by $80,$00,$00,$10,$00,$00,$08,$86 
.lB180    !by $66,$11,$10,$08,$00,$00,$00,$00 
.lB188    !by $00,$00,$02,$00,$31,$00

.lB18E  CMP #$68
    BCC ++
    LSR
    TAX
    LDA .lB10E,X
    BCS +
    LSR
    LSR
    LSR
    LSR
+   AND #$0F
    RTS
---------------------------------
++  CMP #$0E
    BNE +
    LDA #$01
    RTS
---------------------------------
+   LDA #$00
    RTS
---------------------------------
.lB1AA  LDA #$00
    STA $4A
    STA $43
    STA $49
    STA $45
    STA $46
    LDX $3B
    LDA $3C
    STX $3D
    STA $3E
-   DEC $3E
    LDX $4A
    STX $AE
    LDY #$FF
    LDA ($3D),Y
    BNE +
    LDX $16
    LDA $17
    STX $7C
    STA $7D
    JMP .lB205
---------------------------------
+   CMP #$02
    BNE +
    LDY #$F4
    LDA ($3D),Y
    STA $7C
    INY
    LDA ($3D),Y
    STA $7D
    JMP .lB1F8
---------------------------------
+   DEC $4A
    TAX
    LDA $3D
    SEC
    SBC .lB002,X
    STA $3D
    BCC -
    INC $3E
    BCS -
.lB1F8  LDY #$02
    LDA ($7C),Y
    CLC
    ADC $7C
    STA $7C
    BCC .lB205
    INC $7D
.lB205
    LDY #$02
    LDA ($7C),Y
    BNE +
-   LDA $C7BD
    CLC
    ADC $18
    STA $45
    LDA $C7BE
    ADC $19
    STA $46
    JMP .l90CA
---------------------------------
+   INY
    LDA ($7C),Y
    STA $14
    JSR .lB18E
    LSR
    BCC +++
    DEC $4A
    LDX $4A
    CPX $AE
    BMI -
    LDY $43
    BPL +
    CPX $3E
    BMI .lB287
    BPL ++
+   BEQ ++
    CPX $45
    BPL ++
    STX $45
++  LDY $46
    BEQ +
    CPX $48
    BPL +
    DEC $46
+   LDX $14
    CPX #$8A
    BEQ +
    CPX #$8B
    BEQ +
    CPX #$FD
    BNE +++
+   DEC $49
+++ LSR
    BCC +
    INC $4A
    LDX $14
    CPX #$F9
    BNE +
    INC $49
+   LSR
    BCC +++
    LDA $14
    JSR .lB2C6
-   LDA $7C
    CMP $31
    BNE .lB283
    LDA $7D
    CMP $32
    BNE .lB283
    LDA $43
    BNE ++
    INC $43
.lB283  JMP .lB1F8
---------------------------------
++  RTS
---------------------------------
.lB287  LDA #$F4
    JMP .l90D7
---------------------------------
+++ LDA $43
    BMI -
    LDA $46
    BNE -
    LDA $14
    CMP #$9C
    BNE -
    LDY #$04
    LDA ($7C),Y
    CMP $C7BD
    BNE .lB283
    INY
    LDA ($7C),Y
    CMP $C7BE
    BNE .lB283
    LDA $C7B0
    SEC
    SBC $49
    JSR .lAFCC
    LDA $4A
    STA $3E
    LDX $43
    BNE +
    DEC $43
    JMP .lB1F8
---------------------------------
+   CMP $45
    BNE .lB287
    RTS
---------------------------------
.lB2C6  CMP #$82
    BEQ +
    CMP #$83
    BNE ++
+   LDY #$08
-   JSR .lB0E4
    CMP #$88
    BEQ +++
    CMP #$87
    BNE -
    INC $49
    BCS ++++
++  CMP #$97
    BNE +
    LDY #$04
-   JSR .lB0E4
    CMP #$99
    BEQ +++
    CMP #$98
    BNE -
    BCS ++++
+   CMP #$68
    BNE +
    LDY #$04
-   JSR .lB0E4
    CMP #$6A
    BEQ +++
    CMP #$69
    BEQ ++++
    CMP #$B6
    BNE -
    BEQ ++++
+   LDY #$0B
-   LDA ($7C),Y
    CMP #$78
    BCC +
    CMP #$7E
    BCS ++
    INY
+   INY
    INY
    INY
    BNE -
++  CMP #$F5
    BEQ +++
    LDA $46
    BNE ++++
    INC $46
    LDA $4A
    STA $48
    BCC ++++
+++ DEC $4A
++++RTS
---------------------------------
.lB32E  LDA #$00
    STA $42
    STA $4A
    LDX $16
    LDA $17
.lB338  STX $7C
    STA $7D
    LDY #$02
    LDA ($7C),Y
    BEQ ++
.lB342  LDY #$03
    LDA ($7C),Y
    LDX $42
    BNE +
    CMP #$70
    BEQ +++
    CMP #$E3
    BEQ +++
    CMP #$E4
    BEQ ++++
    CMP #$E5
    BEQ .lB39B
    BNE .lB377
+   JSR .lB18E
    LSR
    BCC +
    DEC $4A
    BEQ .lB3BD
+   LSR
    BCC +
    INC $4A
+   LSR
    BCC .lB377
    LDA ($7C),Y
    JSR .lB2C6
    LDA $4A
    BEQ .lB3BD
.lB377  CLC
    LDA $7C
    LDY #$02
    ADC ($7C),Y
    TAX
    LDA $7D
    ADC #$00
    JMP .lB338
---------------------------------
++  LDA $42
    BNE +
    LDX #$6C
    JMP P2_8827
---------------------------------
+   LDX #$4E
    LDA #$1F
    BNE ++
+++ LDA #$00
    !by $2C
++++LDA #$01
    !by $2C
.lB39B  LDA #$02
    CMP $41
    BNE .lB377
    INY
    LDA $C7BD
    CMP ($7C),Y
    BNE .lB377
    INY
    LDA $C7BE
    CMP ($7C),Y
    BNE .lB377
    INC $42
    JSR +
    STX $3F
    STA $40
    JMP .lB342
---------------------------------
.lB3BD  JSR +
++  STX $41
    STA $42
    RTS
---------------------------------
+   LDY #$00
    LDA ($7C),Y
    TAX
    INY
    LDA ($7C),Y
    RTS
---------------------------------

.lB3CE    !by $01,$02 
.lB3D0    !by $02,$02,$05,$05,$05,$05,$05,$05 
.lB3D8    !by $08,$09,$0A,$0B,$23,$0B,$0B,$0B 
.lB3E0    !by $0B,$0B,$0F,$0B,$0B,$0B,$0B,$0B 
.lB3E8    !by $25,$0B,$0B,$0B,$0B,$0B,$0C,$0C 
.lB3F0    !by $0D,$0D,$0D,$0E,$0E,$0D,$0D,$0D 
.lB3F8    !by $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D 
.lB400    !by $0D,$0D,$0D,$0D,$0E,$0F,$0E,$0E 
.lB408    !by $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D 
.lB410    !by $10,$11,$11,$11,$0F,$12,$13,$13 
.lB418    !by $13,$14,$13,$11,$13,$13,$13,$13 
.lB420    !by $13,$11,$13,$0D,$13,$13,$14,$13 
.lB428    !by $13,$11,$11,$13,$11,$15,$00,$1E 
.lB430    !by $1A,$1B,$0B,$0B,$1E,$1E,$15,$AF 
.lB438    !by $1C,$18,$D1,$96,$97,$16,$21,$11 
.lB440    !by $05,$05,$05,$05,$05,$05,$36,$36 
.lB448    !by $36,$36,$36,$36,$39,$B9,$3D,$07 
.lB450    !by $A7,$A8,$0D,$0E,$0E,$1F,$20,$00 
.lB458    !by $A3,$A4,$0F,$48,$49,$4A,$0B,$0B 
.lB460    !by $0B,$29,$10,$18,$8B,$15,$AF,$1C 
.lB468    !by $00,$96,$BA,$67,$96,$15,$15,$15 
.lB470    !by $AF,$AF,$97,$0B,$8B,$0B,$97,$16 
.lB478    !by $15,$AC,$8B,$1E,$2A,$15,$0B,$0B 
.lB480    !by $0B,$19,$15,$15,$AF,$3B,$0B,$0B 
.lB488    !by $0B,$19,$1D,$11,$0E,$15,$1E,$1E 
.lB490    !by $1E,$15,$0B,$0B,$0B,$19,$31,$31 
.lB498    !by $1A,$1E,$0E,$02,$02,$11,$11,$CE 
.lB4A0    !by $46,$02,$27,$14,$0B,$0B,$13,$02 
.lB4A8    !by $16,$27,$31,$15,$3C,$0F,$0F,$00 
.lB4B0    !by $11,$21,$22,$03,$23,$24,$04,$13 
.lB4B8    !by $14,$33,$0E,$0E,$0E,$19,$27,$0E 
.lB4C0    !by $46,$32,$0E,$26,$0B,$1E,$2D,$98 
.lB4C8    !by $2D,$2D,$97,$16,$11
.lB4CD    !by $66,$00,$01 
.lB4D0    !by $02,$00,$01,$02,$00,$01,$02,$02 
.lB4D8    !by $02,$02,$03,$18,$03,$03,$03,$03 
.lB4E0    !by $01,$8E,$01,$01,$01,$01,$01,$1E 
.lB4E8    !by $01,$01,$01,$01,$6B,$6D,$6F,$78 
.lB4F0    !by $77,$76,$11,$2D,$6D,$6D,$6F,$79 
.lB4F8    !by $79,$7C,$7C,$7A,$7A,$7D,$7D,$7B 
.lB500    !by $7B,$7E,$7E,$24,$30,$73,$33,$68 
.lB508    !by $68,$68,$69,$69,$69,$6A,$6A,$6C 
.lB510    !by $51,$20,$57,$57,$02,$74,$34,$75 
.lB518    !by $08,$0C,$1D,$1F,$26,$28,$28,$2C 
.lB520    !by $3F,$3F,$03,$43,$44,$46,$47,$4C 
.lB528    !by $4E,$1B,$1C,$A6,$37,$00,$03,$53 
.lB530    !by $4B,$00,$00,$03,$6C,$23,$4D,$4D 
.lB538    !by $94,$95,$13,$14,$17,$38,$8C,$00 
.lB540    !by $01,$02,$00,$01,$02,$00,$01,$02 
.lB548    !by $00,$01,$02,$00,$0A,$00,$1E,$21 
.lB550    !by $21,$68,$4F,$49,$12,$12,$00,$97 
.lB558    !by $97,$10,$02,$02,$02,$6B,$03,$01 
.lB560    !by $31,$03,$3D,$00,$55,$12,$12,$00 
.lB568    !by $19,$6B,$22,$96,$15,$4A,$06,$31 
.lB570    !by $31,$54,$03,$00,$03,$35,$16,$0D 
.lB578    !by $00,$00,$6B,$00,$39,$03,$03,$03 
.lB580    !by $00,$3E,$25,$4D,$00,$03,$03,$03 
.lB588    !by $00,$6C,$42,$36,$50,$1D,$6D,$6F 
.lB590    !by $56,$03,$03,$03,$00,$5D,$5D,$5D 
.lB598    !by $6C,$25,$05,$03,$00,$95,$54,$73 
.lB5A0    !by $06,$87,$89,$03,$00,$5F,$04,$52 
.lB5A8    !by $8A,$0E,$8A,$48,$8E,$8E,$00,$8E 
.lB5B0    !by $91,$91,$91,$92,$92,$92,$82,$83 
.lB5B8    !by $84,$A8,$A9,$AA,$00,$3E,$4D,$33 
.lB5C0    !by $85,$14,$70,$00,$02,$02,$50,$00 
.lB5C8    !by $01,$9B,$9C,$9D,$11,$11,$00,$3C 
.lB5D0    !by $11,$0E,$11,$32,$0F,$0D,$0F,$3C 
.lB5D8    !by $0F,$0F,$3E,$1E,$1E,$1E,$10,$11 
.lB5E0    !by $0F,$32,$0B,$32
.lB5E4    !by $0B,$0F,$3C,$2E 
.lB5E8    !by $0F,$0F,$11,$00,$00,$0F,$11,$32 
.lB5F0    !by $0F,$0F,$0F,$11,$0F,$32,$32,$32 
.lB5F8    !by $AC,$3B,$00,$A5,$09,$5D,$09,$32 
.lB600    !by $07,$03,$5C,$93,$5D,$A7,$32,$39 
.lB608    !by $56,$5A,$5B,$71,$71,$A3,$03,$5E 
.lB610    !by $03,$81,$5C,$52,$4A,$4E,$9E,$00 
.lB618    !by $00,$8F,$A7,$8F,$15,$90,$72,$72 
.lB620    !by $9E,$9F 

    LDY $9E
P2_B624
    JSR .lA507
    LDA #$00
    STA $89
    STA $12
    STA $C846
    LDY #$02
    LDA ($31),Y
    STA $1F
    INY
    STY $33
.lB639  LDY $33
    CPY $1F
    BCC ++
    LDA $C846
    AND #$04
    BEQ +
    JSR .lB9F2
+   LDX $89
    LDA #$00
    STA $C660,X
    LDA $12
    CMP #$01
    BNE +
    RTS
---------------------------------
+   JMP .l87CC
---------------------------------
++  LDA #$B9
    PHA
    LDA #$DD
    PHA
    LDA ($31),Y
    INC $33
    CMP #$FF
    BEQ +
    TAX
    TAY
    LDA .lB4CD,Y
    STA $38
    LDA .lB3CE,Y
.lB672  STA $14
    AND #$3F
    TAY
    LDA .lB960,Y
    PHA
    LDA .lB99F,Y
    PHA
    RTS
---------------------------------
+   INY
    LDA ($31),Y
    INC $33
    TAY
    LDA .lB5E4,Y
    STA $38
    LDA .lB5B8,Y
    JMP .lB672
---------------------------------
    RTS
---------------------------------
    LDA $89
    BEQ ++
    JSR .lBCE3
    CMP #$20
    BEQ +
    TAY
    JSR .lBCB9
+   JSR .lBCAE
    JSR .lBA21
    JSR .lB9F2
    JMP .lB6B0
---------------------------------
++  JSR .lBA21
.lB6B0  LDA #$00
    STA $39
    LDX $89
    LDY $33
    INC $12
-   CPY $1F
    BCS +
    LDA ($31),Y
    STA $C661,X
    INX
    INY
    INC $39
    BNE -
+   STY $33
    LDA $39
    STA $C661,X
    INX
    STX $89
    JMP .lB9F2
---------------------------------
    LDX $38
    JMP .lBB1C
---------------------------------
    LDX $38
    JMP .lBA77
---------------------------------
    LDA $C7D8
    AND #$08
    BEQ +
    JSR .lB75C
    JSR +
    JMP .lB9F2
---------------------------------
+   LDX #$00
    JMP .lBA77
---------------------------------
.lB6F5  LDX #$00
    !by $2C
    LDX #$01
    !by $2C
    LDX #$02
    JSR .lBA77
    JMP .lB706
---------------------------------
    JSR .lB9F2
.lB706  JSR .lBA21
    JMP .lB9F2
---------------------------------
.lB70C  JSR .lBA21
    JMP .lB9EF
---------------------------------
    JSR .lB70C
    JMP .lB9F2
---------------------------------
.lB718  JSR .lB75C
    JSR .lBCCE
    JSR .lB9EF
    JMP .lB9F2
---------------------------------
.lB724  JSR .lB75C
    JMP .lB9EF
---------------------------------
.lB72A  JSR .lB724
    JMP .lB9F2
---------------------------------
    JMP .lBA21
---------------------------------
    JSR .lBA21
    JSR .lB9EF
    JMP .lBCB7
---------------------------------
    JSR .lBA21
    JMP .lB745
---------------------------------
    JSR .lB949
.lB745  JSR .lBCB4
    JSR .lB9EF
    JMP .lBCB7
---------------------------------
    LDA #$02
    !by $2C
    LDA #$03
    !by $2C
    LDA #$01
    ORA $C846
    STA $C846
.lB75C  JSR .lBA21
    JMP .lBCAE
---------------------------------
    JMP .lBCE3
---------------------------------
.lB765  JSR .lB724
    JSR .lB9F2
    LDY #$3A
    JSR .lBCB9
    JMP .lBCAE
---------------------------------
    JSR .lBA21
    JSR .lB745
    JMP .lB9F2
---------------------------------
    JSR .lB9F2
    JMP .lB799
---------------------------------
    JSR .lBCE3
.lB785  JSR .lBA21
    JMP .lB9F2
---------------------------------
.lB78B  LDA $C846
    ORA #$01
    STA $C846
.lB793  JSR .lBCAE
    JMP .lB785
---------------------------------
.lB799  LDA $C846
    ORA #$04
    STA $C846
    JSR .lB793
    JMP .lBCAE
---------------------------------
    LDX #$00
    !by $2C
    LDX #$01
    !by $2C
    LDX #$02
    STX $40
    LDA $C846
    ORA #$01
    STA $C846
    JSR .lB75C
    LDX $40
    JSR .lBA77
    LDA $33
    CLC
    ADC #$05
    STA $33
    JSR .lB9F2
    JSR .lBCB4
.lB7CE  LDY $33
    LDA ($31),Y
    CMP #$7E
    BCS ++
    INC $33
    SEC
    SBC #$72
    TAX
    CMP #$06
    BCC +
    SBC #$06
    TAX
    INY
    LDA ($31),Y
    INC $33
    !by $2C
+   LDA #$00
    PHA
    CPX #$03
    BCC +
    TXA
    SEC
    SBC #$03
    PHA
    LDA #$3A
    STA $38
    JSR .lBA21
    JSR .lB9F2
    JSR .lBCAE
    PLA
    TAX
+   JSR .lBA77
    JSR .lB9F2
    PLA
    BEQ +
    STA $40
    JSR .lB917
+   JSR .lBCB1
    JMP .lB7CE
---------------------------------
++  RTS
---------------------------------
    LDX #$00
    !by $2C
    LDX #$01
    !by $2C
    LDX #$02
    STX $40
    LDA $C846
    ORA #$02
    STA $C846
    LDA $38
    CMP #$97
    BNE .lB83C
    LDA $C7D8
    AND #$04
    BEQ .lB83C
    LDA #$2F
    STA $38
.lB83C  JSR .lB75C
    LDX $40
    JSR .lBA77
    JMP .lB9F2
---------------------------------
    LDA $C7D8
    AND #$08
    BEQ +
    JSR .lB75C
    LDX #$00
    JSR .lBA77
    JSR .lB9F2
    JMP .lBCB4
---------------------------------
+   LDX #$00
    JSR .lBA77
    JMP .lBCB4
---------------------------------
    LDA #$10
    STA $C846
    JSR .lB92B
    JMP .lBCAE
---------------------------------
    LDA #$00
    !by $2C
    LDA #$01
    STA $40
    JMP .lB83C
---------------------------------
    LDX $89
    TXA
    SEC
    SBC $C660,X
    TAX
    LDA $C65E,X
    CMP #$28
    BNE +
    LDA #$20
    STA $C65E,X
    JMP .lB72A
---------------------------------
+   JMP .lB718
---------------------------------
    JSR .lB9F2
    LDY #$3A
    JSR .lBCB9
    JMP .lBA21
---------------------------------
    LDX $89
    LDA $C660,X
    STA $39
-   LDY #$02
    CPY $12
    BCS +
    TAY
    DEC $12
    TXA
    SBC $39
    TAX
    LDA $C660,X
    STA $39
    LDA #$2C
    STA $C660,X
    TYA
    LDY $89
    ADC $39
    STA $C660,Y
    BNE -
+   JMP .lB9F2
---------------------------------
    LDX $38
    JSR .lBA77
    LDX #$68
    STX $38
    JSR .lBA21
    JSR .lB9F2
    JMP .lB9EF
---------------------------------
    JSR .lB718
    LDA #$3D
    STA $38
    JMP .lB724
---------------------------------
    JSR .lB9F2
    JMP .lB78B
---------------------------------
    JSR .lBCCB
    JSR .lB9F2
    JMP .lB765
---------------------------------
.lB8F4  JSR .lBCCB
    JSR .lB9F2
    JMP .lB724
---------------------------------
    JSR .lBA21
    JSR .lBCAE
    INC $33
    INC $33
    JMP .lB7CE
---------------------------------
    LDY $33
    LDA ($31),Y
    INC $33
    STA $40
    LDX $38
    JSR .lBA77
.lB917  JSR .lBCB4
.lB91A  DEC $40
    BEQ +
    JSR .lBCB1
    JMP .lB91A
---------------------------------
+   JMP .lBCB7
---------------------------------
    INC $33
    INC $33
.lB92B  JSR .lBCE3
    CMP #$2C
    BNE +
    JSR .lBCB7
+   JSR .lBCAE
    JSR .lBA21
    JMP .lB9F2
---------------------------------
    LDA $C846
    ORA #$08
    STA $C846
    JMP .lB6F5
---------------------------------
.lB949  JSR .lBA21
    LDY #$24
    JMP .lBCB9
---------------------------------
    JSR .lBCE3
    JSR .lBCB7
    JMP .lBCB4
---------------------------------
    JSR .lB8F4
    JMP .lBCB1
---------------------------------
.lB960    !by $B6,$B6,$B6,$B7,$B8,$B6,$B7,$B6 
.lB968    !by $B6,$B6,$B6,$B7,$B7,$B7,$B7,$B7 
.lB970    !by $B7,$B7,$B7,$B7,$B7,$B7,$B7,$B7 
.lB978    !by $B7,$B7,$B7,$B7,$B7,$B7,$B7,$B7 
.lB980    !by $B7,$B7,$B7,$B8,$B8,$B8,$B8,$B8 
.lB988    !by $B8,$B8,$B8,$87,$B8,$B8,$B8,$B8 
.lB990    !by $87,$B8,$B8,$B8,$87,$87,$B9,$87 
.lB998    !by $87,$B9,$B9,$B7,$B9,$B9,$B9
.lB99F    !by $90 
.lB9A0    !by $91,$D5,$AC,$1E,$DA,$92,$DF,$F4 
.lB9A8    !by $F7,$FA,$02,$0B,$11,$17,$23,$29 
.lB9B0    !by $2F,$32,$3B,$41,$5B,$4D,$50,$53 
.lB9B8    !by $61,$64,$72,$7B,$81,$84,$8A,$98 
.lB9C0    !by $A6,$A9,$18,$1B,$46,$63,$6E,$71 
.lB9C8    !by $78,$92,$CB,$9D,$C8,$DA,$E4,$CB 
.lB9D0    !by $EA,$F3,$FC,$CB,$CB,$09,$CB,$CB 
.lB9D8    !by $26,$3D,$67,$48,$50,$59,$A5,$14 
.lB9E0    !by $29,$C0,$4A,$4A,$4A,$4A,$4A,$4A 
.lB9E8    !by $65,$33,$85,$33 

    JMP .lB639
---------------------------------
.lB9EF  JSR .lBAD2
.lB9F2  DEC $89
    DEC $12
    BEQ ++
    LDX $89
    LDA $C661,X
    BEQ +
    TAY
    STA $39
    TXA
    SEC
    SBC $39
    TAX
    CLC
    TYA
    ADC $C660,X
    STA $39
-   LDA $C661,X
    STA $C660,X
    INX
    DEY
    BNE -
    LDA $39
    STA $C660,X
+   RTS
---------------------------------
++  JMP .l87CC
---------------------------------
.lBA21  INC $12
.lBA23  LDA $38
    BNE .lBA31
.lBA27  LDX $89
    INC $89
    LDA #$00
    STA $C661,X
    RTS
---------------------------------
.lBA31  LDX $C84E
    STX $43
    LDX $C84F
    STX $44
    TAX
    LDY #$00
-   DEX
    BEQ +
    SEC
    LDA $43
    ADC ($43),Y
    STA $43
    BCC -
    INC $44
    BCS -
+   LDA ($43),Y
    STA $42
    PHA
    LDX $89
-   INY
    LDA ($43),Y
    BIT $C7D2
    BPL +
    CMP #$41
    BCC +
    CMP #$5E
    BCS +
    ORA #$80
+   STA $C661,X
    INX
    DEC $42
    BNE -
    PLA
    STA $C661,X
    INX
    STX $89
    RTS
---------------------------------
.lBA77  INC $12
    LDY $33
    INC $33
    INC $33
    LDA ($31),Y
    CLC
    ADC $18
    STA $43
    INY
    LDA ($31),Y
    TAY
    ADC $19
    STA $44
    INY
    BEQ .lBA27
.lBA91  LDY #$00
    LDA ($43),Y
    STA $42
    STX $41
    LDX $89
    LDY #$04
-   LDA ($43),Y
    CMP #$5F
    BNE +
    LDA #$A4
+   BIT $C7D2
    BVC +
    CMP #$41
    BCC +
    ORA #$80
+  STA $C661,X
    INX
    INY
    CPY $42
    BNE -
    TYA
    SBC #$04
    STA $C661,X
    INX
    STX $89
    LDX $41
    BEQ ++
    DEX
    BEQ +
    LDY #$24
    !by $2C
+   LDY #$23
    JSR .lBCB9
++  RTS
---------------------------------
.lBAD2  LDX $89
    LDA $C660,X
    STA $43
    SEC
    TXA
    SBC $43
    TAX
    LDA $C65F,X
    CLC
    ADC $43
    STA $39
    LDA $89
    SEC
    SBC $39
    SBC #$02
    STA $44
    CLC
    LDA $39
    ADC #$02
    STA $41
    LDA $89
    TAX
    DEX
    ADC $43
    TAY
-   LDA $C661,X
    STA $C661,Y
    DEX
    DEY
    DEC $41
    BNE -
    LDY $44
    LDX $89
    INC $43
-   LDA $C661,X
    STA $C661,Y
    INX
    INY
    DEC $43
    BNE -
    RTS
---------------------------------
.lBB1C  INC $12
    TXA
    BNE +
    CLC
    LDA $31
    ADC $33
    TAX
    LDA $32
    ADC #$00
    TAY
    TXA
    JSR $CBE7
    CLC
    LDA $33
    ADC #$05
    STA $33
    JMP .lBBEE
---------------------------------
+   DEX
    BEQ +++
    DEX
    BNE +
-   JMP .lBC19
---------------------------------
+   DEX
    BEQ ++
    DEX
    BNE +
    JMP .lBBB6
---------------------------------
+   DEX
    BEQ -
    JMP .lBC7F
---------------------------------
++  LDY $33
    LDX #$00
    BEQ +
+++ LDY $33
    LDA ($31),Y
    TAX
    INY
+   LDA ($31),Y
    INY
    STY $33
.lBB63  STX $66
    STX $64
    STA $65
    TXA
    BPL .lBB79
    SEC
    LDA #$00
    SBC $65
    STA $65
    LDA #$00
    SBC $64
    STA $64

.lBB79
    JSR $CAEE
    !by PAGE3
    !word P3_BFC5

    LDA #$00
    STA $43
    LDY $89
    LDA $66
    BPL +
    LDA #$2D
    STA $C661,Y
    INY
    INC $43
+   LDX #$00
-   LDA $0100,X
    CMP #$30
    BNE .lBB9F
    INX
    CPX #$04
    BCC -
.lBB9F  LDA $0100,X
    STA $C661,Y
    INC $43
    INY
    INX
    CPX #$05
    BCC .lBB9F
    LDA $43
    STA $C661,Y
    INY
    STY $89
    RTS
---------------------------------
.lBBB6  LDX $89
    LDA #$00
    STA $C661,X
    INC $89
    LDY #$24
    JSR .lBCB9
    LDY $33
    INC $33
    LDA ($31),Y
    BEQ +
    JSR .lBBD5
+   LDY $33
    INC $33
    LDA ($31),Y
.lBBD5  PHA
    LSR
    LSR
    LSR
    LSR
    JSR .lBBE0
    PLA
    AND #$0F
.lBBE0  CMP #$0A
    BCC +
    ADC #$36
    BNE ++
+   ADC #$30
++  TAY
    JMP .lBCB9
---------------------------------
.lBBEE  JSR $C99B
    LDX #$00
    LDA $0100
    CMP #$2D
    BEQ +
    INX
+   LDY $89
-   LDA $0100,X
    BEQ +
    STA $C661,Y
    INX
    INY
    BNE -
+   LDA $0100
    CMP #$2D
    BEQ +
    DEX
+   TXA
    STA $C661,Y
    INY
    STY $89
    RTS
---------------------------------
.lBC19  LDA $38
    CMP #$05
    BNE +
    LDA #$01
    BNE ++
+   LDY $33
    LDA ($31),Y
    INC $33
++  STA $38
P2_BC2B
    JSR .lBA27
    JSR .lBCAB
    LDA $38
    BEQ ++++
-   LDY $33
    LDA ($31),Y
    TAY
    CMP #$22
    BEQ +++
    LDA $C7D8
    LSR
    BCS ++
    CPY #$20
    BCC +
    CPY #$60
    BCC ++
    CPY #$A1
    BCC +
    CPY #$DE
    BEQ +
    CPY #$E0
    BCC ++
    CPY #$FF
    BCS ++
+   TYA
    PHA
    JSR .lBCAB
    INC $12
    LDX #$00
    PLA
    JSR .lBB63
    JSR .lB9F2
    LDY #$22
    BNE ++
+++ JSR .lBCAB
++  JSR .lBCB9
    INC $33
    DEC $38
    BNE -
++++JMP .lBCAB
---------------------------------
.lBC7F  JSR .lBA27
    LDY #$25
    JSR .lBCB9
    LDY $33
    INC $33
    LDA ($31),Y
    BEQ +
    JSR .lBC98
+   LDY $33
    INC $33
    LDA ($31),Y
.lBC98  LDY #$08
    STY $38
-   ASL
    PHA
    LDA #$18
    ROL
    TAY
    JSR .lBCB9
    PLA
    DEC $38
    BNE -
    RTS
---------------------------------
.lBCAB  LDY #$22
    !by $2C
.lBCAE  LDY #$20
    !by $2C
.lBCB1  LDY #$2C
    !by $2C
.lBCB4  LDY #$28
    !by $2C
.lBCB7  LDY #$29
.lBCB9  LDX $89
    CLC
    LDA $C660,X
    ADC #$01
    STA $C661,X
    TYA
    STA $C660,X
    INC $89
    RTS
---------------------------------
.lBCCB  LDA #$2C
    !by $2C
.lBCCE  LDA #$20
    LDX $89
    STA $C661,X
    INX
    LDA #$01
    STA $C661,X
    INX
    STX $89
    INC $12
    JMP .lB9EF
---------------------------------
.lBCE3  LDX $89
    SEC
    LDA $C660,X
    SBC #$01
    TAY
    LDA $C65F,X
    PHA
    TYA
    STA $C65F,X
    PLA
    DEC $89
    RTS
---------------------------------
P2_BCF8
    LDA #$00
    STA $89
    LDA #$00
    STA $77
    STA $39
    JSR P2_83FC
-   JSR .l916C
    LDA $77
    AND #$01
    BNE ++++
    LDA $12
    CMP #$6F
    BNE +
    LDA $39
    BNE ++++
    INC $39
    BNE -
+   CMP #$6D
    BNE +
    LDA $39
    BNE ++++
    LDA #$02
    STA $39
    BNE -
+   CMP #$61
    BNE +
    LDX $4F
    LDA $4E
    JSR $C9CE
    JMP .lBD59
---------------------------------
+   CMP #$60
    BNE +
    LDX #$4E
    LDA #$00
    JSR $C9C5
    JMP .lBD59
---------------------------------
+   CMP #$99
    BEQ +
    CMP #$6E
    BNE +++
+   LDA $39
    BNE ++++
    LDX $4E
    LDA $4F
    JSR $C9D7
.lBD59  LDA $39
    CMP #$01
    BNE ++
    DEC $2E
    LDY #$FB
    LDA ($2D),Y
    BEQ +
    INY
    LDA ($2D),Y
    EOR #$80
    STA ($2D),Y
+   INC $2E
++  LDA #$00
    RTS
---------------------------------
+++ CMP #$80
    BNE ++++
    LDA #$02
    RTS
---------------------------------
++++LDA #$01
    RTS
---------------------------------
P2_BD7D
    LDA #$11
    JSR $FFD2
    LDA #$91
    JSR $FFD2
    LDA $D1
    STA $C7D0
    STA $47
    LDA $D2
    STA $C7D1
    AND #$03
    ORA #$D8
    STA $48
    LDX $D6
    STX $C6B1
    LDA $D9,X
    STA $C6B2
    LDA $DA,X
    STA $C6B3
    LDY #$4F
-   LDA ($D1),Y
    STA $C661,Y
    LDA #$20
    STA ($D1),Y
    LDA ($47),Y
    STA $C6B7,Y
    DEY
    BPL -
    RTS
---------------------------------
.lBDBC  LDA $C7D1
    CMP #$02
    BCC +
    STA $4A
    AND #$03
    ORA #$D8
    STA $48
    LDA $C7D0
    STA $49
    STA $47
    LDX $C6B1
    LDA $C6B2
    STA $D9,X
    LDA $C6B3
    STA $DA,X
    LDY #$4F
-   LDA $C661,Y
    STA ($49),Y
    LDA $C6B7,Y
    STA ($47),Y
    DEY
    BPL -
+   LDA #$01
    STA $C7D1
    RTS
---------------------------------
P2_BDF4
    LDA #$FD
    STA $B8
    LDA #$00
    STA $C865
    STA $C868
    JMP $CCEB
---------------------------------
P2_BE03
    JSR .lBF84

    JSR $CAEE
    !by PAGE1
    !word P1_96F6

    JMP .lBE1C
---------------------------------
P2_BE0F
    JSR .lBF84
    LDA $C7DD
    BEQ .lBE1C
    LDX #$FF
    JSR $CDDF
.lBE1C  LDX #$01
-   LDA $18,X
    STA $43,X
    LDA $16,X
    STA $49,X
    DEX
    BPL -
    LDA #$F4
    STA $3A
    LDX $0250
    LDA $0251
    JSR .lBF20
    LDX $0254
    LDA $0255
    BEQ ++
-   STX $7A
    STA $7B
    LDY #$02
    LDA ($7A),Y
    CMP #$0C
    BNE +++
    JSR .lBE94
    BMI ++
    LDY #$03
    LDA ($7A),Y
    BPL +
    DEC $4A
    LDY #$F5
    LDA ($49),Y
    STA $31
    INY
    LDA ($49),Y
    STA $32
    LDY #$FA
    LDA ($49),Y
    STA $44
    DEY
    LDA ($49),Y
    STA $43
    DEY
    LDA ($49),Y
    TAX
    DEY
    LDA ($49),Y
    STX $4A
    STA $49
    JSR .lBF3E
+   JSR .lBF18
    BMI ++
+++ LDY #$00
    LDA ($7A),Y
    TAX
    INY
    LDA ($7A),Y
    BNE -
++  JSR $CDD6
    LDX #$FE
    STX $B8
    JMP $CCEB
---------------------------------
.lBE94  LDA #$00
    STA $38
    LDX $49
    LDA $4A
.lBE9C  STX $45
    STA $46
    CPX $31
    SBC $32
    BCS .lBEFE
    LDY #$02
    LDA ($45),Y
    BEQ .lBEFE
    TAX
    INY
    LDA ($45),Y
    CMP #$0E
    BEQ ++++
    CMP #$70
    BEQ +
    CMP #$E3
    BCC +++
    CMP #$E6
    BCC +
    CMP #$E9
    BCC ++++
    BCS +++
+   LDY #$0B
-   LDA ($45),Y
    CMP #$78
    BCC ++
    CMP #$7E
    BCS +
    INY
++  INY
    INY
    INY
    BNE -
+   CMP #$F5
    BEQ +++
    LDY $38
    LDA $45
    STA $C661,Y
    INY
    LDA $46
    STA $C661,Y
    INY
    STY $38
    BNE +++
++++DEC $38
    DEC $38
+++ CLC
    TXA
    ADC $45
    TAX
    LDA $46
    ADC #$00
    JMP .lBE9C
---------------------------------
.lBEFE  LDX $38
    BEQ +
    LDA $C65F,X
    STA $31
    LDA $C660,X
    STA $32
    LDX #$F6

    JSR $CAEE
    !by PAGE3
    !word P3_8D04

    JSR .lBF3E
+   RTS
---------------------------------
.lBF18  LDY #$04
    LDA ($7A),Y
    TAX
    INY
    LDA ($7A),Y
.lBF20  STX $31
    STA $32
    CPX #$61
    BNE +
    CMP #$C6
    BEQ ++
+   LDY #$02
    LDA ($31),Y
    BEQ ++
    LDX $3A

    JSR $CAEE
    !by PAGE3
    !word P3_8D04

    LDA #$F5
    STA $3A
.lBF3E
    LDA $18
    PHA
    LDA $19
    PHA
    LDA $43
    STA $18
    LDA $44
    STA $19
    JSR P2_B624
    LDA $18
    STA $43
    LDA $19
    STA $44
    PLA
    STA $19
    PLA
    STA $18

    JSR $CAEE
    !by PAGE1
    !word P1_92D4

    JSR $CDF4
    BIT $54
    BMI ++
    LDA $C7DD
    BNE ++
    JSR $FFE4
    CMP #$20
    BNE ++
-   JSR $FFE4
    BIT $54
    BMI ++
    CMP #$20
    BNE -
++  BIT $54
    RTS
---------------------------------
.lBF84  LDA $88
    AND #$02
    BNE +
    RTS
---------------------------------
+   LDX #$3B
    JMP $C9FB
---------------------------------
P2_BF90
    LDX #$F3
    JSR P2_880C
    LDA $18
    SEC
    SBC $16
    TAX
    LDA $19
    SBC $17
    TAY
    TXA
    SBC #$04
    TAX
    TYA
    SBC #$00
    JSR .lBFDD
    LDA $1C
    CLC
    SBC $2F
    STA $65
    LDA $1D
    SBC $30
    STA $64
    SEC
    LDA $2D
    SBC $18
    TAX
    LDA $2E
    SBC $19
    TAY
    TXA
    CLC
    ADC $65
    TAX
    TYA
    ADC $64
    JSR .lBFDD
    LDA $2F
    SEC
    SBC $2D
    TAX
    LDA $30
    SBC $2E
    JSR .lBFDD
    JMP $CDF4
---------------------------------
.lBFDD  STA $64
    STX $65
    JSR $CAEE
    !by PAGE3
    !word P3_BFC5

    DEC $7C
    JSR P2_A86C
    JMP $CE03
---------------------------------
!if VER_NEW = 1 {
.lBFEF    !by $4B,$4B,$45
}
!if VER_OLD = 1 {
.lBFEF    !by $4B,$45,$20
}
.lBFF3    !by $20,$20,$20,$20,$20,$20 
.lBFF8    !by $20,$20,$20,$20,$20,$20,$20,$20
}