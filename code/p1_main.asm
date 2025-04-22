; ###############################################################
; #                                                             #
; #  p1_main.asm for                                            #
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


    !word .l8787
    !word WARM      ; $CF70

    !pet "CBM80"

.l8009

!pseudopc $C87B {

; COMAL80-JumpTables located in $C87B to $CFF4
StartJumpTable
;$C87b - $CFF4

; $C87B
    JMP .lCFAA
; $C87E
    JMP .lCF70
; $C881
    JMP .lCAEE
; $C884
    JMP .lCB5F
; $C887
    JMP .lCB66
; $C88A
    JMP .lCB8E
; $C88D
    JMP .lCBBC
; $C890
    JMP .lCBE7
; $C893
    JMP .lCC0C
; $C896
    JMP .lCC37

.lC899
    JSR .lCF4E
    JSR P3_82F4
    JMP .lCF62

.lC8A2
    JSR .lCF4E
    JSR P3_8324
    JMP .lCF62

; $C8AB
    JSR .lCC0C
    JSR .lCFB1
    JSR P1_9C03
    JMP .lCF62

; $C8B7
    JSR .lCFB1
    JSR P1_9BE2
    JMP .lCF62

; $C8C0
    JSR .lCC0C
    JSR .lCFB1
    JSR P1_9BEC
    JMP .lCF62

; $C8CC
    JSR .lCC0C
    JSR .lCFB1
    JSR P1_9DBF
    JMP .lCF62

; $C8D8
    JSR .lCC0C
    JSR .lCFB1
    JSR P1_9E7B
    JMP .lCF62

; $C8E4
    JSR .lCFB1
    JSR P1_9E4B
    JMP .lCF62

; $C8ED
    JSR .lCFB1
    JSR P1_9E67
    JMP .lCF62

; $C8F6
    JMP .lCAA0
---------------------------------
; $C8F9
    JSR .lCFB1
    JSR P1_9F38
    JMP .lCF62
---------------------------------
; $C902
    JSR .lCFB1
    JSR P1_9F1B
    JMP .lCF62
---------------------------------
; $C90B
    JSR .lCFB1
    JSR P1_A302
    JMP .lCF62
---------------------------------
; $C914
    JSR .lCFB1
    JSR P1_9F72
    JMP .lCF62
---------------------------------
; $C91D
    JSR .lCFB1
    JSR P1_A443
    JMP .lCF62
---------------------------------
; $C926
    JSR .lCFB1
    JSR P1_A43C
    JMP .lCF62
---------------------------------
; $C92F
    JSR .lCFB1
    JSR P1_A1DA
    JMP .lCF62
---------------------------------
; $C938
    JSR .lCFB1
    JSR P1_A48C
    JMP .lCF62
---------------------------------
; $C941
    JSR .lCFB1
    JSR P1_A2BB
    JMP .lCF62
---------------------------------
; $C94A
    JSR .lCFB1
    JSR P1_A4E6
    JMP .lCF62
---------------------------------
; $C953
    JSR .lCFB1
    JSR P1_A310
    JMP .lCF62
---------------------------------
; $C95C
    JSR .lCFB1
    JSR P1_9D7E
    JMP .lCF62
---------------------------------
; $C965
    JSR .lCFB1
    JSR P1_A3E3
    JMP .lCF62
---------------------------------
; $C96E
    JSR .lCFB1
    JSR P1_9F94
    JMP .lCF62
---------------------------------
; $C977
    JSR .lCF4E
    JSR P3_85C6
    JMP .lCF62
---------------------------------
; $C980
    JSR .lCFB1
    JSR P1_A005
    JMP .lCF62
---------------------------------
; $C989
    JSR .lCFB1
    JSR P1_A575
    JMP .lCF62
---------------------------------
.lC992
    JSR .lCFB1
    JSR P1_A56A
    JMP .lCF62
---------------------------------
.lC99B
    JSR .lCFB1
    JSR P1_A04E
    JMP .lCF62
---------------------------------
; $C9A4
    JSR .lCAEE
    !by PAGE2
    !word P2_BCF8

; $C9AA
    JSR .lCF4E
    JSR P3_84BE
    JMP .lCF62
---------------------------------
; $C9B3
    JSR .lCF4E
    JSR P3_84C6
    JMP .lCF62
---------------------------------
; $C9BC
    JSR .lCF4E
    JSR P3_84B4
    JMP .lCF62
---------------------------------
; $C9C5
    JSR .lCF4E
    JSR P3_8514
    JMP .lCF62
---------------------------------
; $C9CE
    JSR .lCF4E
    JSR P3_8547
    JMP .lCF62
---------------------------------
; $C9D7
    JSR .lCF4E
    JSR P3_8536
    JMP .lCF62
---------------------------------
; $C9E0
    JSR .lCF4E
    JSR P3_8400
    JMP .lCF62
---------------------------------
; $C9E9
    JSR .lCF4E
    JSR P3_8483
    JMP .lCF62
---------------------------------
.lC9F2
    JSR .lCF4E
    JSR P3_8E96
    JMP .lCF62
---------------------------------
.lC9FB
    JSR .lCF4E
    JMP P3_BF32

---------------------------------
; $CA01
    JMP .lCE4E
---------------------------------
; $CA04
    LDA #$20
    JMP .lCE05
---------------------------------
; $CA09
    JMP .lCDC1
---------------------------------
; $CA0C
    JMP .lCDDF
---------------------------------
; $CA0F
    JMP .lCDD6
---------------------------------
; $CA12
    JSR .lCAEE
    !by PAGE1
    !word P1_88C9

    RTS
---------------------------------
; $CA19
    JMP .lCD51
---------------------------------
; $CA1C
    JMP .lCCEB
---------------------------------
; $CA1F
    JMP .lCDF4
---------------------------------
; $CA22
    JSR .lCAEE
    !by PAGE3
    !word P3_B4EF

    RTS
.lCA29
    JSR .lCAEE
    !by PAGE2
    !word P2_A1BB

    RTS
.lCA30
    JSR .lCB5F
    !by PAGE2
    !word P2_A446

; $CA36
    JSR .lCAEE
    !by PAGE3
    !word P3_90F0
    RTS
---------------------------------
; $CA3D
    JSR .lCAEE
    !by PAGE1
    !word P1_8CBF
    RTS
; $CA43
    JSR .lCAEE
    !by PAGE3
    !word P3_8A84
    RTS
---------------------------------
; $CA4B
    LDA #PAGE1
    STA $06
    STA $DE00
    LDA $61
    JSR P1_9C03
.lCA57
    LDA #PAGE3
    STA $06
    STA $DE00
    RTS
---------------------------------
; $CA5F
    LDA #PAGE1
    STA $06
    STA $DE00
    LDA $61
    JSR P1_9BEC
    JMP .lCA57
---------------------------------
; $CA6E
    LDA #PAGE1
    STA $06
    STA $DE00
    LDA $61
    JSR P1_9DBF
    JMP .lCA57
---------------------------------
; $CA7D
    LDA #PAGE1
    STA $06
    STA $DE00
    LDA $61
    JSR P1_9E7B
    JMP .lCA57
---------------------------------
; $CA8C
    LDX #PAGE1
    STX $06
    STX $DE00
    JSR P1_9F94
    PHP
    LDX #PAGE3
    STX $06
    STX $DE00
    PLP
    RTS
---------------------------------
.lCAA0
    LDA $61
    BEQ .lCAC4
    ASL $70
    BCC .lCAC4
    INC $65
    BNE .lCAC4
    INC $64
    BNE .lCAC4
    INC $63
    BNE .lCAC4
    INC $62
    BNE .lCAC4
    INC $61
    BEQ .lCAE9
    ROR $62
    ROR $63
    ROR $64
    ROR $65
.lCAC4
    STX $22
    STY $23
    LDY #$04
    LDA $65
    STA ($22),Y
    DEY
    LDA $64
    STA ($22),Y
    DEY
    LDA $63
    STA ($22),Y
    DEY
    LDA $66
    ORA #$7F
    AND $62
    STA ($22),Y
    DEY
    LDA $61
    STA ($22),Y
    STY $70
    RTS
---------------------------------
.lCAE9
    LDX #$02
    JMP .lC9FB
---------------------------------
.lCAEE
    PHP
    STA $73
    LDA #$20
.lCAF3
    STA .lCB3A
    STY $74
    PLA
    STA $75
    CLC
    PLA
    STA $22
    ADC #$03
    TAY
    PLA
    STA $23
    ADC #$00
    BIT .lCB3A
    BVS .lCB15
    PHA
    TYA
    PHA
    LDA $01
    PHA
    LDA $06
    PHA
.lCB15
    LDY #$03
    LDA ($22),Y
    STA .lCB3A +2
    DEY
    LDA ($22),Y
    STA .lCB3A +1
    DEY
    LDA $01
    AND #$F8
    ORA #$07
    STA $01
    LDA ($22),Y
    LDY $74
    STA $06
    STA $DE00
    LDA $75
    PHA
    LDA $73
    PLP
.lCB3A
    JSR $FFFF
    PHP
    STX $74
    STA $73
    PLA
    TAX
    PLA
    STA $06
    STA $DE00
    PLA
    AND #$07
    STA $75
    LDA $01
    AND #$F8
    ORA $75
    STA $01
    TXA
    PHA
    LDX $74
    LDA $73
    PLP
    RTS
---------------------------------
.lCB5F
    PHP
    STA $73
    LDA #$4C
    BNE .lCAF3
.lCB66
    LDX $06
    LDA $09
    STA $06
    STA $DE00
    BPL .lCB79
    LDA ($07),Y
    STX $06
    STX $DE00
    RTS
---------------------------------
.lCB79
    STX $74
    SEI
    LDX $01
    STA $01
    LDA ($07),Y
    STX $01
    CLI
    LDX $74
    STX $06
    STX $DE00
    TAX
    RTS
---------------------------------
.lCB8E
    PHA
    LDX $06
    LDA $09
    STA $06
    STA $DE00
    BPL .lCBA5
    PLA
    STA ($07),Y
    CMP ($07),Y
    STX $06
    STX $DE00
    RTS
---------------------------------
.lCBA5
    STX $74
    LDX $01
    STA $01
    PLA
    STA ($07),Y
    CMP ($07),Y
    STX $01
    PHP
    LDX $74
    STX $06
    STX $DE00
    PLP
    RTS
---------------------------------
.lCBBC
    LDA $06
    PHA
    LDA $01
    PHA
    LDA $09
    STA $06
    STA $DE00
    BMI .lCBCD
    STA $01
.lCBCD
    LDA ($07),Y
    STA .lCBDA +1
    INY
    LDA ($07),Y
    STA .lCBDA +2
    LDY $38
.lCBDA
    JSR $FFFF
.lCBDD
    PLA
    STA $01
    PLA
    STA $06
    STA $DE00
    RTS
---------------------------------
.lCBE7
    STA $22
    STY $23
    LDY #$04
    LDA ($22),Y
    STA $65
    DEY
    LDA ($22),Y
    STA $64
    DEY
    LDA ($22),Y
    STA $63
    DEY
    LDA ($22),Y
    STA $66
    ORA #$80
    STA $62
    DEY
    LDA ($22),Y
    STA $61
    STY $70
    RTS
---------------------------------
.lCC0C
    STA $22
    STY $23
    LDY #$04
    LDA ($22),Y
    STA $6D
    DEY
    LDA ($22),Y
    STA $6C
    DEY
    LDA ($22),Y
    STA $6B
    DEY
    LDA ($22),Y
    STA $6E
    EOR $66
    STA $6F
    LDA $6E
    ORA #$80
    STA $6A
    DEY
    LDA ($22),Y
    STA $69
    LDA $61
    RTS
---------------------------------
.lCC37
    STA $45
    ASL
    ASL
    ADC $45
    ADC #$07
    TAY
    LDA ($10),Y
    STA $46
    DEY
    LDA ($10),Y
    STA $45
    DEY
    LDA ($10),Y
    AND #$40
    BEQ .lCC5C
    LDY #$00
    LDA ($45),Y
    TAX
    INY
    LDA ($45),Y
    STX $45
    STA $46
.lCC5C
    RTS
---------------------------------
.lCC5D
    JSR .lCDD6
    LDX #$00
    STX $0200
    STX $90
    LDA $B8
    PHA
    LDA $B9
    PHA
    LDA $BA
    STA $0263
    JSR $FFC6
    BCS .lCC91
.lCC77
    JSR $FFCF
    BIT $90
    BMI .lCC91
    CMP #$0D
    BEQ .lCC91
    LDX $0200
    CPX #$4F
    BCS .lCC77
    STA $0201,X
    INC $0200
    BNE .lCC77
.lCC91
    JSR $FFCC
    PLA
    STA $B9
    PLA
    STA $B8
    RTS
---------------------------------
.lCC9B
    LDA $06
    PHA
    LDA $01
    PHA
    TYA
    STA $06
    STA $DE00
    BMI .lCCAB
    STA $01
.lCCAB
    STX $3D
    LDA $45
    STA $3B
    LDA $46
    STA $3C
.lCCB5
    LDY #$01
    LDA ($3B),Y
    TAX
    DEY
    LDA ($3B),Y
    CMP #$FF
    BNE .lCCC5
    LDX #$E9
    BNE .lCCAB
.lCCC5
    CMP $3D
    BEQ .lCCD7
    TXA
    CLC
    ADC #$02
    ADC $3B
    STA $3B
    BCC .lCCB5
    INC $3C
    BCS .lCCB5
.lCCD7
    INY
    LDA ($3B),Y
    STA $01FF,Y
    DEX
    BPL .lCCD7
    JMP .lCBDD
---------------------------------
.lCCE3
    LDX #$FF
    STX $B8
    INX
    STX $C7DD
.lCCEB
    JSR .lCDD6
    JSR .lCE88
    BNE .lCD4A
    LDA $0263,X
    CMP #$02
    BNE .lCD13
    LDA $C80E,X
    AND #$02
    BEQ .lCD0C
    LDX $B8
    JSR .lCDDF
    JSR .lCDF4
    JSR .lCDD6
.lCD0C
    LDA $02A1
    AND #$03
    BNE .lCD0C
.lCD13
    JSR .lCE88
    LDY $98
    DEY
    LDA $C822,Y
    STA $C822,X
    LDA $C82C,Y
    STA $C82C,X
    LDA $C836,Y
    STA $C836,X
    LDA $C818,Y
    STA $C818,X
    LDA $C80E,X
    PHA
    LDA $C80E,Y
    STA $C80E,X
    LDA $B8
    JSR $FFC3
    BCC .lCD46
    CMP #$F0
    BNE .lCD98
.lCD46
    PLA
    JSR .lCEA3
.lCD4A
    LDA #$00
    STA $90
    JMP .lCDD9
---------------------------------
.lCD51
    PHA
    JSR .lCDD6
    PLA
    LDY $98
    CPY #$0A
    BCS .lCDB6
    STA $C80E,Y
    PHA
    LDA #$00
    STA $C822,Y
    STA $C818,Y
    INC $C7D9
    JSR $FFC0
    BCC .lCD86
    CMP #$F0
    BNE .lCD98
    STA $A9
    LDX #$00    ; $C000
    LDA #$C0
    STX $F7
    STA $F8
    LDX #$00    ; $C100
    LDA #$C1
    STX $F9
    STA $FA
.lCD86
    PLA
    JSR .lCEA3
    DEC $C7D9
    RTS
---------------------------------
.lCD8E
    !by $db,$d1,$ca,$cb,$d8,$d0,$cc,$cd
    !by $da,$d9

.lCD98
    PHA
    TAX
    BNE .lCDAC
    LDA $BA
    CMP #$01
    BNE .lCDAC
    JSR .lCE88
    BNE .lCDAC
    LDA #$00
    STA $026D,X
.lCDAC
    JSR .lCEA0
    PLA
    TAX
    LDA .lCD8E,X
    TAX
    !by $2C
.lCDB6
    LDX #$D1
    !by $2C
.lCDB9
    LDX #$CC
.lCDBB
    JSR .lCB5F
    !by PAGE3
    !word P3_BF2F

.lCDC1
    STX $4B
    JSR $FFC6
    BCS .lCD98
    JSR .lCE88
    LDA $C80E,X
    STA $C844
    AND #$01
    BEQ .lCDB9
    RTS
---------------------------------
.lCDD6
    JSR $FFCC
.lCDD9
    STA $C844
    STA $4B
    RTS
---------------------------------
.lCDDF
    STX $4B
    JSR $FFC9
.lCDE4
    BCS .lCD98
    JSR .lCE88
    LDA $C80E,X
    STA $C844
    AND #$02
    BEQ .lCE43
    RTS
---------------------------------
.lCDF4
    LDA #$0D
    JSR .lCE05
    LDA $C844
    AND #$20
    BEQ .lCE2D
    LDA #$0A
    !by $2C
.lCE03
    LDA #$20
.lCE05
    BIT $C844
    BPL .lCE24
    CMP #$DE
    BCS .lCE24
    CMP #$C1
    BCS .lCE1C
    CMP #$5E
    BCS .lCE1E
    CMP #$41
    BCC .lCE24
    ORA #$20
.lCE1C
    AND #$7F
.lCE1E
    CMP #$A4
    BNE .lCE24
    LDA #$5F
.lCE24
    JSR $FFD2
    BCS .lCDE4
    LDA $90
    BNE .lCE2E
.lCE2D
    RTS
---------------------------------
.lCE2E
    AND #$81
    BEQ .lCE2D
    BMI .lCE39
    BIT $C844
    BVC .lCE2D
.lCE39
    PHA
    JSR .lCEA7
    PLA
    BMI .lCE46
    LDX #$D3
    !by $2C
.lCE43
    LDX #$CD
    !by $2C
.lCE46
    LDX #$D0
    !by $2C
.lCE49
    LDX #$D2
    JMP .lCDBB
---------------------------------
.lCE4E
    JSR $FFCF
    BCS .lCDE4
    BIT $C844
    BPL .lCE72
    CMP #$7E
    BCS .lCE72
    CMP #$61
    BCS .lCE6A
    CMP #$5E
    BCS .lCE6C
    CMP #$41
    BCC .lCE72
    ORA #$80
.lCE6A
    AND #$DF
.lCE6C
    CMP #$5F
    BNE .lCE72
    LDA #$A4
.lCE72
    LDX $90
    BNE .lCE77
.lCE76
    RTS
---------------------------------
.lCE77
    BIT $90
    BVS .lCE76
    BMI .lCE46
    BIT $C844
    BVC .lCE76
    JSR .lCEA7
    JMP $85D7
---------------------------------
.lCE88
    LDA $B8
.lCE8A
    LDX $98
.lCE8C
    DEX
    BMI .lCE9F
    CMP $0259,X
    BNE .lCE8C
    RTS
---------------------------------
.lCE95
    LDA $0263,X
    STA $BA
    LDA $026D,X
    STA $B9
.lCE9F
    RTS
---------------------------------
.lCEA0
    LDA $C844
.lCEA3
    AND #$08
    BEQ .lCE9F
.lCEA7
    BIT $90
    BMI .lCEF9
    JSR .lCC5D
    BIT $90
    BMI .lCEF9
    LDA #$00
    STA $90
    LDA $0200
    BEQ .lCEF9
    CMP #$0B
    BCC .lCE9F
    LDA $0201
    CMP #$30
    BCC .lCE9F
    CMP #$3A
    BCS .lCE9F
    AND #$0F
    ASL
    STA $9E
    ASL
    ASL
    ADC $9E
    STA $9E
    LDA $0202
    CMP #$30
    BCC .lCE9F
    CMP #$3A
    BCS .lCE9F
    AND #$0F
    ADC $9E
    ADC #$C8
    TAX
    LDA #$00
    ADC #$00
    BNE .lCEF1
    CPX #$DC
    BCC .lCE9F
.lCEF1
    JSR .lCF4E
    LDY $B8
    JMP ($C7DE)
---------------------------------
.lCEF9
    LDX #$D0
    JMP .lCDBB
---------------------------------
.lCEFE
    LDA #$CF
    PHA
    LDA #$0F
    PHA
    LDA #$00
    PHA
    PHA
    LDA $C6
    PHA
    PHA
    JMP ($C7CA)
---------------------------------
.lCF0F
    CPX $C6
    BEQ .lCF43
    LDA $0277,X
    CMP #$03
    BNE .lCF26
    LDA $4D
    ORA #$08
    STA $4D
    LDA #$FF
    STA $54
    BNE .lCF3B
.lCF26
    CMP #$5F
    BNE .lCF2E
    LDA #$A4
    BNE .lCF38
.lCF2E
    CMP #$8D
    BEQ .lCF36
    CMP #$A0
    BNE .lCF3B
.lCF36
    AND #$7F
.lCF38
    STA $0277,X
.lCF3B
    INX
    CPX $0289
    BCC .lCF43
    DEC $C6
.lCF43
    PLA
    TAY
    PLA
    TAX
    PLA
    RTI

.lCF49
    !by $81,$00,$00,$00,$00
---------------------------------
.lCF4E
    LDY $01
    STY $0B
    LDY #$37
    STY $01
    LDY $06
    STY $0A
    LDY #PAGE3
    STY $06
    STY $DE00
    RTS
---------------------------------
.lCF62
    PHP
    LDX $0A
    STX $06
    STX $DE00
    LDX $0B
    STX $01
    PLP
    RTS
---------------------------------
.lCF70
    LDA $C841
    BNE .lCF9A
.lCF75
    LDA $DC01
    CMP $DC01
    BNE .lCF75
    TAX
    BMI .lCF93
    LDX #$BD
    STX $DC00
.lCF85
    LDX $DC01
    CPX $DC01
    BNE .lCF85
    STA $DC00
    INX
    BNE .lCF95
.lCF93
    STA $91
.lCF95
    JSR $FFE1
    BEQ .lCFA3
.lCF9A
    LDA $02A1
    STA $DD0D
    JMP .lCF43
---------------------------------
.lCFA3
    SEI
    JSR .lCB5F
    !by PAGE1
    !word P1_87FA

.lCFAA
    SEI
    JSR .lCFB1
    JMP ($FFFC)
---------------------------------
.lCFB1
    PHP
    LDX $01
    STX $0B
    LDX #$37
    STX $01
    LDX $06
    STX $0A
    LDX #PAGE1
    STX $06
    STX $DE00
    PLP
    RTS
---------------------------------
.lCFC7
    SEI
    PHA
    LDA $01
    PHA
    LDA #$37
    STA $01
    LDA #$CF
    PHA
    LDA #$F0
    PHA
    LDA #$00
    PHA
    JMP ($FFFA)
---------------------------------
.lCFDC
    PHA
    LDA $01
    PHA
    LDA #$37
    STA $01
    LDA #$CF
    PHA
    LDA #$F0
    PHA
    LDA #$00
    PHA
    JMP ($FFFE)
---------------------------------
.lCFF0
    PLA
    STA $01
    PLA
    RTI
EndJumpTable
}

.l8783
    !word $F60F
.l8785
    !word $CEFE

.l8787
    SEI
    LDA $0258
    CMP #$49                    ; check for COMAL ???
    BEQ +

    STX $D016
    JSR $FF84
    JSR $FF87
    JSR $FF8A
    JSR $FF81
    LDY #$7F
    BNE ++                      ; jmp

+   LDA #$00
    LDX #$B0
    JSR $C839
    LDY #$77

++  LDX #$FF
    TYA
    CPX $0283
    SBC $0284
    BCC ++
    LDX $0283
    LDY $0284
    BNE +
    DEY

+   DEX
++  STX $C84B
    STY $C84C
    LDX #$00
    STX $C841
    STX $0259
    STX $C80E
    INX
    STX $98
    LDA #$6F
    STA $026D
    LDA #$80
    STA $9D
    LDA #$28
    STA $C7D6

; set IRQ-vector
-   LDA $0314,X
    STA $C7CA,X
    LDA .l8785,X
    STA $0314,X
    DEX
    BPL -

    JSR .l8843
    JSR $CB5F
    !by PAGE2
    !word P2_A384

P1_87FA
    LDA #$00
    STA $02A1
    LDA $029D
    STA $029E
    JSR $FF84
    JSR $FF81

    LDX #$02
-   LDA $C84F,X
    STA $D01F,X
    STA $C852,X
    DEX
    BNE -

    LDA $C852
    STA $0286
    LDA $88
    ORA #$01
    STA $88
    JSR .l8843
    JSR $CAEE
    !by PAGE3
    !word P3_BCA6

    LDA #$07
    JSR $CAEE
    !by PAGE3
    !word P3_8287

    JMP $CA30
---------------------------------
.l8839
    !word $CFC7                 ; NMI-vector
    !word $CFAA                 ; RESET-vector
    !word $CFDC                 ; IRQ-vector
.l883F
    !word .l8009                ; jump table start in ROM
    !word $C87B                 ; jump table start in RAM

; copy header $8000-$8008 to RAM
.l8843
    SEI
    LDY #$08
.l8846
    LDA $8000,Y
    STA $8000,Y
    DEY
    BPL .l8846

; copy NMI,RESET,IRQ vectors to $FFFA-$FFFF
    LDX #$06
.l8851
    LDA .l8839-1,X
    STA $FFFA-1,X

; prepare addresses for copy jump table (area $8009- to $C87E-)
    LDA .l883F-1,X
    STA $44,X
    DEX
    BNE .l8851

    STX $C844
    STX $C7D9
    STX $C865
    STX $C868
    STX $4B

; copy jump table to RAM
.l886D
    LDA ($45,X)
    STA ($47,X)
    INC $45
    BNE .l8877
    INC $46
.l8877
    INC $47
    BNE .l887D
    INC $48
.l887D
    LDA $45
    CMP #$84
    LDA $46
    SBC #$87
    BCC .l886D

; set page and charset
    LDA #$80    ; page1
    STA $06     ; set
    LDA #$0E    ; charset
    JMP $FFD2   ; set

---------------------------------
.l8890
    PHA
    LDA #$2C
    JSR .l8897
    PLA
.l8897
    LDX $B7
    CPX #$36
    BCS P1_88A3
    STA $02A8,X
    INC $B7
    RTS
---------------------------------
P1_88A3
    LDX #$0B
    JMP $C9FB
---------------------------------
P1_88A8
    PHA
    TXA
    PHA
    JSR $CAEE
    !by PAGE3
    !word P3_8CBA

    LDX $45
    LDY $46
    LDA $49
    BNE P1_88A3
    LDA $4A
    CMP #$37
    BCS P1_88A3
    JSR $FFBD
    PLA
    TAX
    PLA
    RTS
---------------------------------
P1_88C6
    JSR P1_88A8
P1_88C9
    STX $AF
    PHA
    LDY #$FF
    STY $B9
    INY
    STY $AC
    LDA $B7
    BEQ P1_88A3
    LDA ($BB),Y
    CMP #$40
    BNE .l88E7
    DEC $B7
    INC $AC
    INC $BB
    BNE .l88E7
    INC $BC
.l88E7
    STY $9F
    CPY $B7
    BCS .l88FF
    LDA ($BB),Y
    INY
    CMP #$3A
    BNE .l88E7
    STY $9F
    DEY
    BEQ .l8903
    LDX $BB
    LDA $BC
    BCS .l890A
.l88FF
    LDY #$00
    STY $9F
.l8903
    LDX #$DB    ; $C7DB
    LDA #$C7
    LDY $C7DA
.l890A
    JSR P1_8AA9
    STA $D7
    LDX $BB
    STX $7C
    LDX $BC
    STX $7D
    LDY $B7
    STY $9E
    LDY #$00
    STY $B7
    TAY
    AND #$08
    BEQ .l8946
    LDA $AC
    BEQ .l8933
    PLA
    PHA
    AND #$02
    BEQ .l8933
    LDA #$40
    JSR .l8897
.l8933
    TYA
    AND #$01
    ORA #$30
    JSR .l8897
    LDA #$3A
    JSR .l8897
    LDA $D7
    AND #$FE
    STA $D7
.l8946
    LDA #$00
    STA $AC
    LDY $9F
.l894C
    STY $AD
    CPY $9E
    BCS .l89C1
    LDA ($BB),Y
    INY
    CMP #$2F
.l8957
    BNE .l894C
.l8959
    LDA ($BB),Y
    INY
    CPY $9E
    BCC .l896A
.l8960
    DEY
    LDA $AC
    BEQ .l894C
.l8965
    LDX #$12
    JMP $CDBB
---------------------------------
.l896A
    LDX #$05
.l896C
    CMP .l8A9B-1,X
    BEQ .l8976
    DEX
    BNE .l896C
    BEQ .l8960
.l8976
    LDA .l8AA0-1,X
    PHA
    LDA ($BB),Y
    CMP #$2B
    BNE .l8985
    PLA
    ORA $D7
    BNE .l8996
.l8985
    CMP #$2D
    BNE .l89B0
    CPX #$04
    BNE .l8991
    LDA #$FF
    STA $B9
.l8991
    PLA
.l8992
    EOR #$FF
    AND $D7
.l8996
    STA $D7
    INY
    LDA $AC
    BNE .l89A3
    INC $AC
    LDX $AD
    STX $9B
.l89A3
    CPY $9E
    BCS .l89C5
    LDA ($BB),Y
    CMP #$2F
    BNE .l8965
    INY
    BNE .l8959
.l89B0
    PLA
    CPX #$04
    BNE .l8960
    JSR .l8B57
    BCS .l8960
    STX $B9
    DEY
    LDA #$10
    BNE .l8992
.l89C1
    LDY $9E
    STY $9B
.l89C5
    LDY $9F
    CPY $9B
    BCC .l89D8
    LDA $D7
    AND #$08
    BEQ .l89F5
    LDA #$2A
    JSR .l8897
    BCC .l89F5
.l89D8
    INY
    CPY $9B
    BNE .l89EA
    LDX $BA
    DEX
    BNE .l89EA
    DEY
    LDA ($BB),Y
    INY
    CMP #$2A
    BEQ .l89F5
.l89EA
    DEY
.l89EB
    LDA ($BB),Y
    JSR .l8897
    INY
    CPY $9B
    BCC .l89EB
.l89F5
    PLA
    TAY
    LDA $D7
    AND #$08
    BEQ .l8A47
    TYA
    AND #$07
    ORA $D7
    STA $D7
    TYA
    LSR
    LSR
    LSR
    LSR
    BEQ .l8A12
    TAX
    LDA .l8AA5-1,X
    JSR .l8890
.l8A12
    TYA
    AND #$07
    CMP #$03
    BEQ .l8A3B
    AND #$04
    BEQ .l8A24
    LDA $AF
    JSR .l8890
    BCC .l8A3B
.l8A24
    TYA
    AND #$08
    BNE .l8A36
    TYA
    LSR
    BCS .l8A33
    LSR
    BCC .l8A3B
    LDA #$57
    !by $2c
.l8A33
    LDA #$52
    !by $2c
.l8A36
    LDA #$41
.l8A38
    JSR .l8890
.l8A3B
    LDA $D7
    AND #$10
    BEQ .l8A7F
    JSR .lA587
    JMP .l8A7F
---------------------------------
.l8A47
    LDA $D7
    AND #$07
    BEQ .l8A56
    STA $9E
    TYA
    AND #$07
    CMP $9E
    BNE .l8A93
.l8A56
    TYA
    AND #$07
    ORA $D7
    STA $D7
    AND #$04
    BNE .l8A96
    LDX $BA
    CPX #$04
    BCS .l8A3B
    LDA $D7
    AND #$10
    BEQ .l8A7F
    DEX
    BNE .l8A7F
    INX
    TYA
    AND #$01
    BEQ .l8A7D
    LDA $D7
    AND #$FD
    STA $D7
    DEX
.l8A7D
    STX $B9
.l8A7F
    LDX #$A8
    LDA #$02
    STX $BB
    STA $BC
    LDY $BA
    CPY #$02
    BNE .l8A90
    JSR .l8B76
.l8A90
    LDA $D7
    RTS
---------------------------------
.l8A93
    LDX #$DA
    !by $2c
.l8A96
    LDX #$CF
    JMP $CDBB
---------------------------------

.l8A9B
    !by $41,$4c,$54,$53,$44
.l8AA0
    !by $80,$20,$40,$10,$08

.l8AA5
    !by $50,$53,$4c,$55

---------------------------------
P1_8AA9
    STX $7C
    STA $7D
    STY $9E
    LDY #$00
    STY $C843
    JSR .l8B49
    BCS .l8AD5
    JSR .l8B57
    BCS .l8B16
    CPX #$10
    BCS .l8B16
    INC $C843
    TXA
    LSR
    ORA #$08
    STA $BA
    STA $C7D7
    TXA
    AND #$01
    ORA #$58
    BNE .l8AE9
.l8AD5
    AND #$7F
    CMP #$55
    BNE .l8AEE
    INY
    JSR .l8B57
    BCS .l8B16
    CPX #$20
    BCS .l8B16
    STX $BA
    LDA #$00
.l8AE9
    CPY $9E
    BNE .l8B16
    RTS
---------------------------------
.l8AEE
    LDY $9E
    CPY #$02
    BNE .l8B16
    LDX #$00
    STX $BA
.l8AF8
    LDY #$00
    LDA ($7C),Y
    AND #$7F
    CMP .l8B3B,X
    BNE .l8B0D
    INY
    LDA ($7C),Y
    AND #$7F
    CMP .l8B3B+1,X
    BEQ .l8B1B
.l8B0D
    INC $BA
    INX
    INX
    INX
    CPX #$0E
    BCC .l8AF8
.l8B16
    LDX #$D9
    JMP $CDBB
---------------------------------
.l8B1B
    LDY $BA
    CPY #$04
    BNE .l8B2F
    LDA $C848
    STA $B9
    LDA $C849
    STA $BA
    LDA $C847
    RTS
---------------------------------
.l8B2F
    DEY
    BNE .l8B37
    LDA #$02
    STA $C843
.l8B37
    LDA .l8B3B+2,X
    RTS
---------------------------------

.l8B3B
    !by $4b,$42,$01,$43,$53,$10,$53,$50
    !by $b0,$44,$53,$00,$4c,$50

.l8B49
    CPY $9e
    BCS .l8B56
    LDA ($7C),Y
    PHA
    SEC
    SBC #$30
    CMP #$0A
    PLA
.l8B56
    RTS
---------------------------------
.l8B57
    JSR .l8B49
    BCS .l8B75
    AND #$0F
.l8B5E
    STA $97
    INY
    TAX
    JSR .l8B49
    BCS .l8B74
    AND #$0F
    LDX #$0A
.l8B6B
    ADC $97
    BCS .l8B75
    DEX
    BNE .l8B6B
    BEQ .l8B5E
.l8B74
    CLC
.l8B75
    RTS
---------------------------------
.l8B76
    LDY $D7
    TYA
    AND #$10
    BEQ .l8B82
    TYA
    AND #$03
    STA $B9
.l8B82
    LDA #$A6
    STA $4E
    LDY #$00
    STY $4F
.l8B8A
    JSR .l8C49
    BCC .l8B98
    LDA #$02
    LDX #$4E
    LDY #$00
    JMP $FFBD
---------------------------------
.l8B98
    CMP #$42
    BNE .l8BED
    LDA #$00
    STA $9E
    STA $9F
.l8BA2
    JSR .l8C49
    BCS .l8BCB
    CMP #$30
    BCC .l8BCB
    CMP #$3A
    BCS .l8BCB
    AND #$0F
    LDX #$0A
    STX $97
    LDX $9F
.l8BB7
    ADC $9E
    PHA
    TXA
    ADC $9F
    TAX
    PLA
    BCS .l8BDE
    DEC $97
    BNE .l8BB7
    STA $9E
    STX $9F
    BEQ .l8BA2
.l8BCB
    LDX #$0A
.l8BCD
    LDA $9E
    CMP .l8C51-1,X
    BNE .l8BDB
    LDA $9F
    CMP .l8C5A,X
    BEQ .l8BE1
.l8BDB
    DEX
    BNE .l8BCD
.l8BDE
    JMP .l8C46
---------------------------------
.l8BE1
    STX $9E
    LDA $4E
    AND #$F0
    ORA $9E
    DEY
    JMP .l8C20
---------------------------------
.l8BED
    CMP #$53
    BNE .l8C07
    JSR .l8C49
    BCS .l8C46
    TAX
    LDA $4E
    AND #$7F
    CPX #$31
    BEQ .l8C20
    CPX #$32
    BNE .l8C46
    ORA #$80
    BNE .l8C20
.l8C07
    CMP #$44
    BNE .l8C25
    JSR .l8C49
    BCS .l8C46
    CMP #$39
    BCS .l8C46
    CMP #$35
    BCC .l8C46
    TAX
    LDA $4E
    AND #$9F
    ORA .l8C35,X
.l8C20
    STA $4E
    JMP .l8B8A
---------------------------------
.l8C25
    CMP #$50
    BNE .l8C46
    JSR .l8C49
    BCS .l8C46
    LDX #$04
.l8C30
    CMP .l8C65,X
    BEQ .l8C3A
.l8C35
    DEX
    BPL .l8C30
    BMI .l8C46
.l8C3A
    LDA $4F
    AND #$1F
    ORA .l8C6D,X
    STA $4F
    JMP .l8B8A
---------------------------------
.l8C46
    JMP .l8A93
---------------------------------
.l8C49
    CPY $B7
    LDA ($BB),Y
    AND #$7F
    INY
    RTS
---------------------------------

.l8C51
    !by $32,$4b,$6e,$86,$96,$2c,$58,$b0
    !by $08
.l8C5A
    !by $60,$00,$00,$00,$00,$00,$01,$02
    !by $04,$07,$09
.l8C65
    !by $4e,$4f,$45,$4d,$53,$60,$40,$20
.l8C6D
    !by $00,$20,$60

---------------------------------
    LDY #$E0
.l8C72
    JSR .l8C76
    TAY
.l8C76
    STY $3F
    BIT $90
    BVC .l8C81
    LDX $99
    DEX
    BNE .l8C98
.l8C81
    JSR .l8C92
    TAX
    CLC
    ADC $3B
    STA $3B
    BCC .l8C8E
    INC $3C
.l8C8E
    LDY $3F
    TXA
    RTS
---------------------------------
.l8C92
    JMP ($003D)
---------------------------------
.l8C95
    JMP ($C7EB)
---------------------------------
.l8C98
    LDX #$C9
    JMP $C9FB
---------------------------------
.l8C9D
    PHA
    JSR P1_8E28
    PLA
    JSR $CD51
    LDX #$FE
    JMP $CDC1
---------------------------------
P1_8CAA
    JSR .l8C9D
    LDA $93
    STA $40
    BNE .l8CBB
    LDA $C7D3
    BNE .l8CBB
    JSR $CA29
.l8CBB
    LDX #<$CE4E
    LDA #>$CE4E
P1_8CBF
    STX $3D
    STA $3E
    LDA #$00
    STA $3B
    STA $3C
    INC $C842
    LDA $C7EF
    STA $42
    JSR .l8C72
    INY
    BNE .l8CD9
    CMP #$FF
.l8CD9
    BNE .l8D48
    JSR .l8C72
    CPY $C7CD
    BNE .l8D4B
    CMP $C7CE
    BNE .l8D4B
    JSR .l8C76
    LDX $40
    BNE .l8CF2
    STA $C7CC
.l8CF2
    JSR .l8C72
    PHA
    TYA
    CLC
    ADC $16
    TAX
    PLA
    ADC $17
    LDY $40
    BNE .l8D08
    STX $18
    STA $19
    BEQ .l8D10
.l8D08
    CPX $18
    BNE .l8D40
    CMP $19
    BNE .l8D40
.l8D10
    JSR .l8C72
    STY $45
    STA $46
    CLC
    TYA
    ADC $16
    STA $47
    TAX
    LDA $46
    ADC $17
    LDY $40
    BNE .l8D3E
    STX $1A
    STX $2D
    STA $1B
    STA $2E
    CPX $18
    SBC $19
    BCC .l8D48
    LDA $2E
    CPX $1C
    SBC $1D
    BCS .l8D4E
    BCC .l8D5C
.l8D3E
    CPX $1A
.l8D40
    BNE .l8D54
    CMP $1B
    BNE .l8D54
    BEQ .l8D5C
.l8D48
    LDX #$10
    !by $2c
.l8D4B
    LDX #$11
    !by $2c
.l8D4E
    LDX #$0e
    !by $2c
.l8D51
    LDX #$0f
    !by $2c
.l8D54
    LDX #$0d
    !by $2c
.l8D57
    LDX #$49
    JMP $C9FB
---------------------------------
.l8D5C
    LDA #$80
    STA $09
    LDA $16
    STA $07
    LDA $17
    STA $08
.l8D68
    JSR .l8DA9
    LDA $45
    BNE .l8D71
    DEC $46
.l8D71
    DEC $45
    LDA $45
    ORA $46
    BNE .l8D68
    JSR .l8C92
    EOR #$AA
    CMP $3B
    BNE .l8D51
    JSR .l8C92
    EOR #$AA
    CMP $3C
    BNE .l8D51
.l8D8B
    JSR .l8C76
    CMP #$01
    BNE .l8D9A
.l8D92
    LDX $C7D3
    BNE .l8D9A
    JSR .l8DD0
.l8D9A
    TAX
    BEQ .l8DA3
    JSR .l8C95
    JMP .l8D8B
---------------------------------
.l8DA3
    DEC $C842
    JMP P1_8E28
---------------------------------
.l8DA9
    JSR .l8C76
.l8DAC
    LDY #$00
    LDX $40
    BNE .l8DBE
    JSR $CB8E
    BNE .l8D57
.l8DB7
    INC $07
    BNE .l8DBD
    INC $08
.l8DBD
    RTS
---------------------------------
.l8DBE
    STA $38
    JSR $CB66
    CMP $38
    BEQ .l8DB7
    BNE .l8D54
.l8DC9
    JSR .l8C76
    CMP #$01
    BNE .l8E18
.l8DD0
    JSR .l8C76
    JSR .l9BCA
    STA $09
    JSR .l8C76
    STA $07
    JSR .l8C76
    STA $08
    JSR .l8C76
    PHA
    JSR .l8C76
    STA $47
    JSR .l8C76
    STA $48
    LDX $40
    BNE .l8DFA
    JSR .l9A34
    JSR .l9B28
.l8DFA
    PLA
    JSR .l8DAC
    LDA $47
    JSR .l8DAC
    LDA $48
    JSR .l8DAC
.l8E08
    LDA $07
    CMP $47
    LDA $08
    SBC $48
    BCS .l8DC9
    JSR .l8DA9
    JMP .l8E08
---------------------------------
.l8E18
    PHA
    JSR P1_8E28
    LDX $42
    LDA #$02
    JSR $CAEE
    !by PAGE3
    !word P3_8289

    PLA
    RTS
---------------------------------
P1_8E28
    JSR $CDD6
    LDA #$FE
    STA $B8
    JSR $CE8A
    BMI .l8DBD
    LDX $BA
    DEX
    BNE .l8E3E
    LDA #$00
    STA $C80E,X
.l8E3E
    JMP $CCEB
---------------------------------
P1_8E41
    JSR $CB5F
    !by PAGE2
    !word P2_A2A4

.l8E47
    JSR .l8E4B
    TYA
.l8E4B
    TAX
    CLC
    ADC $3B
    STA $3B
    BCC .l8E55
    INC $3C
.l8E55
    TXA
    JMP $CE05
---------------------------------
.l8E59
    JMP ($C7E9)
---------------------------------
.l8E5C
    LDY #$00
    JSR $CB66
    JSR .l8E4B
    INC $07
    BNE .l8E6A
    INC $08
.l8E6A
    LDA $08
    CMP $48
    BNE .l8E5C
    LDA $07
    CMP $47
    BNE .l8E5C
    RTS
---------------------------------
P1_8E77
    LDA $16
    STA $07
    LDA $17
    STA $08
    LDA #$80
    STA $09
    LDA #$12
    JSR .l96F8
    LDY #$00
    STY $3F
    STY $3B
    STY $3C
    DEY
    TYA
    JSR .l8E47
    LDA $C7CD
    LDY $C7CE
    JSR .l8E47
    LDA $C7CC
    JSR .l8E4B
    SEC
    LDA $18
    SBC $16
    PHA
    LDA $19
    SBC $17
    TAY
    PLA
    JSR .l8E47
    SEC
    LDA $1A
    STA $47
    SBC $16
    PHA
    LDA $1B
    STA $48
    SBC $17
    TAY
    PLA
    JSR .l8E47
    JSR .l8E5C
    LDA $3C
    EOR #$AA
    TAY
    LDA $3B
    EOR #$AA
    JSR .l8E47
.l8ED5
    LDY $3F
    CPY $C7EF
    BCS .l8F15
    INC $3F
    LDA $C804,Y
    STA $09
    LDX $C7F0,Y
    LDA $C7FA,Y
    STX $07
    STA $08
    LDY #$00
    JSR $CB66
    TAY
    AND #$10
    BNE .l8ED5
    LDA #$01
    JSR .l8E47
    LDA $07
    LDY $08
    JSR .l8E47
    LDY #$01
    JSR $CB66
    STA $47
    INY
    JSR $CB66
    STA $48
    JSR .l8E5C
    BEQ .l8ED5
.l8F15
    JSR .l8E59
    LDA #$00
    JSR $CE05
    JMP P1_8E28
---------------------------------
P1_8F20
    CLC
    LDA $10
    ADC #$0E
    STA $3B
    LDA $11
    ADC #$00
    STA $3C
    LDY #$09
    LDA ($10),Y
    STA $38
    LDY #$0D
    LDA ($10),Y
    STA $39
    LDA #$00
    STA $3D
    STA $3E
    STA $3F
    LDA $38
    CMP $39
    BEQ .l8FA3
    JSR $CAEE
    !by PAGE3
    !word P3_8D2A

.l8F4D
    LDY $38
    LDA ($3B),Y
    CMP #$2D
    BEQ .l8F66
    CMP #$23
    BEQ .l8F77
.l8F59
    JSR .l8FCF
    INC $38
    LDY $38
    CPY $39
    BEQ .l8FA3
    BNE .l8F4D
.l8F66
    INY
    CPY $39
    BEQ .l8F59
    LDA ($3B),Y
    CMP #$23
    BEQ .l8F75
    LDA #$2D
    BNE .l8F59
.l8F75
    INC $3F
.l8F77
    INC $3D
    INY
    CPY $39
    BEQ .l8FA3
    LDA ($3B),Y
    CMP #$23
    BEQ .l8F77
    CMP #$2E
    BNE .l8FA3
    INY
    CPY $39
    BEQ .l8F93
    LDA ($3B),Y
    CMP #$23
    BEQ .l8F96
.l8F93
    DEY
    BNE .l8FA3
.l8F96
    INC $3E
    INY
    CPY $39
    BEQ .l8FA3
    LDA ($3B),Y
    CMP #$23
    BEQ .l8F96
.l8FA3
    STY $38
    LDY #$09
    LDA $38
    STA ($10),Y
    INY
    LDA $3D
    STA ($10),Y
    INY
    LDA $3E
    STA ($10),Y
    INY
    LDA $3F
    STA ($10),Y
.l8FBA
    RTS
---------------------------------
.l8FBB
    LDA $3A
    BEQ .l8FBA
    DEC $3A
    LDA $40
    BPL .l8FC9
    LDA #$2D
    BNE .l8FCF
.l8FC9
    LDA $3F
    BEQ .l8FBA
.l8FCD
    LDA #$20
.l8FCF
    JSR $CE05
    LDY #$07
    LDA ($10),Y
    BNE .l8FDE
    LDA $C7DD
    BNE .l8FE7
    RTS
---------------------------------
.l8FDE
    DEY
    LDA ($10),Y
    CLC
    ADC #$01
    STA ($10),Y
    RTS
---------------------------------
.l8FE7
    INC $C7C6
    RTS
---------------------------------
.l8FEB
    LDX #$08
    JMP $C9FB
---------------------------------
P1_8FF0
    LDY #$0A
    LDA ($10),Y
    STA $3D
    INY
    LDA ($10),Y
    STA $3E
    INY
    LDA ($10),Y
    STA $3F
    LDA $3D
    BNE .l900F
    LDY #$09
    STA ($10),Y
    JSR P1_8F20
    LDA $3D
    BEQ .l8FEB
.l900F
    JSR $CAEE
    !by PAGE3
    !word P3_8D2A

    LDA $66
    STA $40
    LSR $66
    JSR .l90FA
    LDA #$49    ; $CF49
    LDY #$CF
    JSR $CBE7
    LDA $3E
    BEQ .l9032
    STA $38
.l902B
    JSR P1_9E4B
    DEC $38
    BNE .l902B
.l9032
    JSR .l9101
    LDA #$4E    ; $004E ???
    LDY #$00
    JSR .l9DBC
    JSR P1_9BE2
    JSR P1_A005
    JSR .l90FA
    LDA #$07    ; $0307 ???
    LDY #$03
    JSR $CBE7
    LDA $3D
    STA $38
.l9050
    JSR P1_9E4B
    DEC $38
    BNE .l9050
    JSR .l9101
    LDA #$4E    ; $004E ???
    LDY #$00
    JSR P1_9F94
    BMI .l9065
    BNE .l907C
.l9065
    CLC
    LDA $3E
    BEQ .l906B
    SEC
.l906B
    ADC $3D
    ADC $3F
    STA $38
.l9071
    LDA #$2A
    JSR .l8FCF
    DEC $38
    BNE .l9071
    BEQ .l90F7
.l907C
    CLC
    LDA $3D
    ADC $3E
    STA $38
    LDA #$01
    STA $3A
.l9087
    LDA #$07    ; $0307 ???
    LDY #$03
    JSR $CBE7
    JSR P1_9E67
    JSR .l9101
    LDA #$00
    STA $39
    LDA #$4E    ; $004E ???
    LDY #$00
    JSR $CBE7
.l909F
    LDA #$07    ; $0307 ???
    LDY #$03
    JSR P1_9F94
    BMI .l90B9
    INC $39
    LDA #$07    ; $0307 ???
    LDY #$03
    JSR .l9BE9
    LDA #$00
    STA $70
    STA $66
    BEQ .l909F
.l90B9
    JSR .l90FA
    LDA $38
    CLC
    SBC $3E
    BNE .l90C6
    JSR .l8FBB
.l90C6
    LDA $3A
    BEQ .l90DA
    LDA $39
    BEQ .l90D4
    JSR .l8FBB
    JMP .l90DA
---------------------------------
.l90D4
    JSR .l8FCD
    JMP .l90E1
---------------------------------
.l90DA
    LDA $39
    ORA #$30
    JSR .l8FCF
.l90E1
    LDA $3E
    BEQ .l90F3
    LDA $38
    CLC
    SBC $3E
    BNE .l90F3
    STA $3A
    LDA #$2E
    JSR .l8FCF
.l90F3
    DEC $38
    BNE .l9087
.l90F7
    JMP P1_8F20
---------------------------------
.l90FA
    LDX #$4E    ; $004E ???
    LDY #$00
.l90FE
    JMP $CAA0
---------------------------------
.l9101
    LDX #$07    ; $0307 ???
    LDY #$03
    BNE .l90FE
P1_9107
    LDX $3F
    LDY $40
    JSR .l9439
    LDA #$00
    STA $3F
.l9112
    LDA $41
    STA $47
    LDA $42
    STA $48
    LDX $7A
    LDA $7B
.l911E
    STX $45
    STA $46
    LDY #$02
    LDA ($45),Y
    TAX
    BEQ .l9158
    LDA $3F
    BEQ .l9137
    DEY
    LDA $48
    STA ($45),Y
    DEY
    LDA $47
    STA ($45),Y
.l9137
    LDA $48
    CMP #$20
    LDA $47
    SBC #$4E
    BCS .l9161
    LDA $48
    ADC $44
    STA $48
    LDA $47
    ADC $43
    STA $47
    TXA
    CLC
    ADC $45
    TAX
    LDA $46
    ADC #$00
    BNE .l911E
.l9158
    LDA $3F
    BNE .l9160
    INC $3F
    BNE .l9112
.l9160
    RTS
---------------------------------
.l9161
    LDX #$6F
    JMP $C9FB
---------------------------------
.l9166
    LDY $02DF
    CPY $02DE
    BCS .l917F
    LDX #$00
.l9170
    LDA $02E0,Y
    STA $3F,X
    INY
    INX
    CPX #$04
    BNE .l9170
    STY $02DF
    CLC
.l917F
    RTS
---------------------------------
P1_9180
    JSR .l9166
    BCS .l91B9
    LDX $41
    LDY $42
    JSR .l9439
    CLC
    LDA $7A
    ADC $27
    STA $41
    LDA $7B
    ADC $26
    STA $42
    LDX $3F
    LDY $40
    JSR .l9439
    SEC
    LDA $7A
    SBC $41
    STA $27
    LDA $7B
    SBC $42
    STA $26
    BPL .l91B6
    LDA #$02
    STA $28
    JSR P1_9477
.l91B6
    JMP P1_9180
---------------------------------
.l91B9
    RTS
---------------------------------
P1_91BA
    JSR .l9166
    BCS .l9204
    LDX $3F
    LDY $40
    JSR .l9439
    LDA $42
    STA $3C
    LDA $41
    STA $3B
    LDA #$00
    STA $C7B5
    LDX $7A
    LDA $7B
.l91D7
    STX $31
    STA $32
    LDY #$02
    LDA ($31),Y
    BEQ P1_91BA
    DEY
    LDA $3C
    CMP ($31),Y
    DEY
    LDA $3B
    SBC ($31),Y
    BCC P1_91BA
    JSR .l9387
    BIT $54
    BMI .l9204
    LDY #$02
    CLC
    LDA ($31),Y
    BEQ .l9204
    ADC $31
    TAX
    LDA $32
    ADC #$00
    BCC .l91D7
.l9204
    RTS
---------------------------------
.l9205
    LDA $3B
    PHA
    LDA $3C
    PHA
    TXA
    PHA
    JSR $CAEE
    !by PAGE3
    !word P3_8D30

    JSR P1_92D4
    PLA
    STA $9E
    LDX $C7DD
    BEQ .l9227
.l921E
    JSR $CDF4
    JSR $CDD6
    JMP .l92C7
---------------------------------
.l9227
    LDA #$00
    STA $D4
    STA $C6
    JSR P1_96E6
    LDA $9E
    CLC
    ADC $89
    TAY
    DEY
.l9237
    TYA
    BEQ .l9243
    DEY
    LDA #$9D
    JSR $CE05
    JMP .l9237
---------------------------------
.l9243
    STY $9E
    JSR .l92FF
    LDX $C5
    DEX
    BNE .l927D
    LDA $C7B5
    BNE .l9266
    LDA $A2
    STA $45
.l9256
    LDX $C5
    DEX
    BNE .l927D
    LDA $A2
    SBC $45
    CMP #$1F
    BMI .l9256
    INC $C7B5
.l9266
    JSR .l92FF
.l9269
    BIT $C07F
    BPL .l921E
    JSR .l9357
    SEI
    LDA #$01
    STA $C6
    LDA #$0D
    STA $0277
    BNE .l9290
.l927D
    LDA #$00
    STA $C7B5
    BIT $C07F
    BPL .l9290
    JSR .l931A
    BEQ .l9290
    BCS .l921E
    BCC .l9269
.l9290
    LDA #$01
    STA $C845                   ; status of comal program
    JSR $CAEE
    !by PAGE2
    !word P2_A519

    BCS .l92C3
    JSR $CAEE
    !by PAGE2
    !word P2_920D

    LDA $C845                   ; status of comal program
    BEQ .l92C3
    LDA $15
    STA $C663
    LDA $4C
    AND #$01
    BNE .l92CE
    JSR $CAEE
    !by PAGE2
    !word P2_A832

    LDX $7A
    LDA $7B
    STX $31
    STA $32
    BNE .l92C7
.l92C3
    LDA #$FF
    STA $54
.l92C7
    PLA
    STA $3C
    PLA
    STA $3B
    RTS
---------------------------------
.l92CE
    JSR $CB5F
    !by PAGE2
    !word P2_A4E0

P1_92D4
    LDY #$00
    LDA ($31),Y
    STA $64
    INY
    LDA ($31),Y
    STA $65
    JSR $CAEE
    !by PAGE3
    !word P3_BFC5

    JSR $CAEE
    !by PAGE2
    !word P2_A86C

    LDA #$20
P1_92ED
    STA $C660
    LDY #$00
.l92F2
    CPY $89
    BEQ .l9319
    LDA $C660,Y
    JSR $CE05
    INY
    BNE .l92F2
.l92FF
    BIT $C07F
    BPL .l9319
    SEC
    LDA $C1
    SBC #$5C
    TAY
    LDX $C000
.l930D
    LDA ($D1),Y
    EOR #$80
    STA ($D1),Y
    INY
    DEX
    BNE .l930D
    INC $9E
.l9319
    RTS
---------------------------------
.l931A
    LDA $A2
    STA $45
.l931E
    JSR $FFE4
    SEC
    BIT $54
    BMI .l9336
    TAX
    BEQ .l9343
    CMP #$4E
    BEQ .l9336
    CMP #$00
    BEQ .l9336
    CMP #$0D
    BNE .l9343
    CLC
.l9336
    LDA #$01
.l9338
    PHP
    LDA $9E
    LSR
    BCC .l9341
    JSR .l92FF
.l9341
    PLP
    RTS
---------------------------------
.l9343
    LDY $91
    CPY #$DF
    BEQ .l9338
    LDA $A2
    SBC $45
    CMP #$07
    BMI .l931E
    JSR .l92FF
    JMP .l931A
---------------------------------
.l9357
    LDY $C000
.l935A
    LDA #$1D
    JSR $CE05
    LDA #$14
    JSR $CE05
    DEY
    BNE .l935A
    LDA $C080
    STA $C07E
    LDY #$00
.l936F
    CPY $C080
    BCS .l9386
    LDA #$94
    JSR $CE05
    LDA $C081,Y
    JSR $CE05
    LDA #$00
    STA $D4
    INY
    BNE .l936F
.l9386
    RTS
---------------------------------
.l9387
    JSR $CAEE
    !by PAGE2
    !word P2_B624

    LDX #$60    ; $C660
    LDA #$C6
    STX $C1
    STA $C2
    LDA $89
    SEC
    SBC $C000
    BCC .l9403
    STA $AC
.l939F
    LDY $C000
    BNE .l93A9
    LDX #$00
    JMP .l9205
---------------------------------
.l93A9
    DEY
    LDA #$20
    STA $C660
.l93AF
    LDA $C001,Y
    CMP ($C1),Y
    BNE .l93BB
    DEY
    BPL .l93AF
    BMI .l93C9
.l93BB
    LDA $AC
    BEQ .l9403
    DEC $AC
    INC $C1
    BNE .l939F
    INC $C2
    BNE .l939F
.l93C9
    SEC
    LDA #$61
    SBC $C1
    TAX
    LDA $C000
    STA $C07E
    JSR .l9205
    BIT $54
    BMI .l9403
    JSR $CAEE
    !by PAGE2
    !word P2_B624

    LDA $C07E
    CLC
    ADC $C1
    STA $C1
    BCC .l93EE
    INC $C2
.l93EE
    SEC
    SBC #$60
    CLC
    ADC $C000
    STA $45
    SEC
    LDA $89
    SBC $45
    STA $AC
    BCC .l9403
    JMP .l939F
---------------------------------
.l9403
    RTS
---------------------------------
P1_9404
    LDX $1B
    LDY $1A
    BNE .l940B
    DEX
.l940B
    DEY
    STX $7B
    STY $7A
    STX $3C
    STY $3B
    LDX $20
    STX $27
    LDA #$00
    STA $26
    STA $28
    JSR P1_9477
    LDY #$00
    LDA $20
    STA ($3B),Y
    TYA
.l9428
    INY
    STA ($3B),Y
    CPY #$04
    BNE .l9428
.l942F
    LDA ($7C),Y
    STA ($3B),Y
    INY
    CPY $20
    BNE .l942F
    RTS
---------------------------------
.l9439
    STX $C661
    STY $C662
P1_943F
    LDA #$00
    STA $26
    STA $27
    LDX $16
    LDA $17
.l9449
    STX $7A
    STA $7B
    LDY #$02
    LDA ($7A),Y
    BEQ .l9476
    TAX
    LDY #$00
    LDA $C661
    CMP ($7A),Y
    BCC .l9476
    BNE .l9469
    INY
    LDA $C662
    CMP ($7A),Y
    BCC .l9476
    BEQ .l9474
.l9469
    TXA
    CLC
    ADC $7A
    TAX
    LDA $7B
    ADC #$00
    BNE .l9449
.l9474
    STX $27
.l9476
    RTS
---------------------------------
P1_9477
    CLC
    LDA $1A
    ADC $27
    STA $24
    LDA $1B
    ADC $26
    BMI .l94AC
    STA $25
    LDA $26
    ORA $27
    BEQ .l94B7
    JSR $CAEE
    !by PAGE3
    !word P3_8366

    LDA $26
    BMI .l94BA
    CLC
    LDA $7A
    STA $45
    ADC $27
    STA $47
    LDA $7B
    STA $46
    ADC $26
    STA $48
    JSR .l9501
    BCC .l94B4
.l94AC
    LDA #$0E
    JSR $CB5F
    !by PAGE3
    !word P3_BF39

.l94B4
    JSR $C8A2
.l94B7
    JMP .l94D1
---------------------------------
.l94BA
    SEC
    LDA $7A
    STA $47
    SBC $27
    STA $45
    LDA $7B
    STA $48
    SBC $26
    STA $46
    JSR .l9501
    JSR $C899
.l94D1
    CLC
    LDA $2D
    ADC $27
    STA $2D
    LDA $2E
    ADC $26
    STA $2E
    LDX $24
    LDA $25
    STX $1A
    STA $1B
    LDX $28
    BEQ .l94FA
    CLC
    LDA $18
    ADC $27
    STA $18
    LDA $19
    ADC $26
    STA $19
    LDA #$02
    !by $2c
.l94FA
    LDA #$01
    ORA $88
    STA $88
    RTS
---------------------------------
.l9501
    CLC
    LDA $2D
    ADC $27
    TAX
    LDA $2E
    ADC $26
    TAY
    CPX $2F
    SBC $30
    PHP
    SEC
    TXA
    SBC $47
    STA $4A
    TYA
    SBC $48
    STA $49
    PLP
    RTS
---------------------------------
P1_951E
    LDA #$2A        ; "*"
    STA $C760       ; name location
    LDA #$01        ; length
    LDX #$60
    LDY #$C7
    JSR $FFBD       ; SETNAM
    LDA #$00
    JSR P1_88C9
    JMP .l9539
---------------------------------
P1_9534
    LDA #$00
    JSR P1_88C6
.l9539
    LDA $C843
    CMP #$01
    BEQ .l9545
    LDX #$DA
    JMP $C9FB
---------------------------------
.l9545
    JSR P1_8E28
    LDA #$60
    STA $B9
    LDX #$A7
    LDA #$02
    STX $BB
    STA $BC
    LDA #$24
    STA $02A7
    INC $B7
    LDA #$49
    JSR .l8C9D
    JSR .l95D4
.l9563
    JSR .l95D4
    ORA $3B
    BEQ .l95D1
    JSR .l95D4
    LDY $3B
    JSR $C992
    JSR $C99B
    STA $7C
    STY $7D
    LDY #$00
.l957B
    INY
    LDA $00FF,Y
    BNE .l957B
    LDA #$20
    STA $00FF,Y
.l9586
    JSR $CE4E
    CPY #$28
    BCS .l95D1
    STA $0100,Y
    INY
    TAX
    BNE .l9586
    JSR $CDD6
    JSR $CAEE
    !by PAGE3
    !word P3_8D30

    JSR $CAEE
    !by PAGE2
    !word P2_A86C

    LDA $C7DD
    BNE .l95BE
    BIT $54
    BMI .l95D1
    JSR $FFE4
    CMP #$20
    BNE .l95BE
.l95B3
    BIT $54
    BMI .l95D1
    JSR $FFE4
    CMP #$20
    BNE .l95B3
.l95BE
    JSR $CDF4
    LDA #$00
    STA $C7C6
    JSR $CDD6
    LDX #$FE
    JSR $CDC1
    JMP .l9563
---------------------------------
.l95D1
    JMP P1_8E28
---------------------------------
.l95D4
    JSR $CE4E
    STA $3B
    JMP $CE4E
---------------------------------
P1_95DC
    JSR $CB5F
    !by PAGE2
    !word P2_BF90

P1_95E2
    JSR .l95F1
    LDY #$03
.l95E7
    LDA $C7B3,Y
    STA $C7BF,Y
    DEY
    BPL .l95E7
    RTS
---------------------------------
.l95F1
    LDA $C7B3
    CMP #$FF
    BNE .l964D
    LDA #$27
    STA $C7B3
    LDA #$10
    STA $C7B4
    LDX $16
    LDA $17
.l9606
    STX $45
    STA $46
    LDY #$02
    LDA ($45),Y
    BEQ .l9628
    TAX
    DEY
    LDA ($45),Y
    STA $C7B4
    DEY
    LDA ($45),Y
    STA $C7B3
    TXA
    CLC
    ADC $45
    TAX
    LDA $46
    ADC #$00
    BNE .l9606
.l9628
    LDA $C7B4
    CMP #$11
    LDA $C7B3
    SBC #$27
    BCS .l963E
    LDX #$10
    LDA #$27
    STX $C7B4
    STA $C7B3
.l963E
    CLC
    LDX #$01
.l9641
    LDA $C7B3,X
    ADC $C7B5,X
    STA $C7B3,X
    DEX
    BPL .l9641
.l964D
    RTS
---------------------------------
P1_964E
    JSR .l95F1
    LDA #$01
    !by $2c
P1_9654
    LDA #$00
    STA $C7B2
    JSR P1_8E28
    LDA #$21
    JSR .l9700
    LDA $D3
    BEQ .l9668
    JSR $CDF4
.l9668
    LDA $C7B2
    BNE .l9670
    JSR $CA29
.l9670
    LDA #$00
    STA $C7D1
    LDA #$04
    STA $C845                   ; status of comal program
    BIT $90
    BVS .l96DA
    LDX #$FE
    JSR $CDC1
    JSR $CAEE
    !by PAGE2
    !word P2_A806

    JSR $CDD6
    BIT $54
    BMI .l96DA
    LSR $C845                   ; status of comal program
    LDA $90
    PHA
    JSR $CAEE
    !by PAGE2
    !word P2_920D

    PLA
    STA $90
    LDA $C845                   ; status of comal program
    BEQ .l96DA
    LDA $15
    STA $C663
    LDA $4C
    AND #$01
    BNE .l96DD
    LDA $C7B2
    BEQ .l96C9
    LDA $C7B4
    STA $C662
    CMP #$20
    LDA $C7B3
    STA $C661
    SBC #$4E
    BCS .l96D2
    JSR .l963E
.l96C9
    JSR $CAEE
    !by PAGE2
    !word P2_A832

    JMP .l9670
---------------------------------
.l96D2
    LDX #$6F
    JSR $CAEE
    !by PAGE2
    !word P2_880C

.l96DA
    JMP P1_8E28
---------------------------------
.l96DD
    JSR P1_8E28
    JSR $CB5F
    !by PAGE2
    !word P2_A4E0

P1_96E6
    LDY $D3
    LDA #$20
.l96EA
    CPY $D5
    BEQ .l96F0
    BCS .l96F5
.l96F0
    STA ($D1),Y
    INY
    BNE .l96EA
.l96F5
    RTS
---------------------------------
P1_96F6
    LDA #$22
.l96F8
    JSR .l9700
    LDX #$FE
    JMP $CDDF
---------------------------------
.l9700
    PHA
    JSR P1_8E28
    PLA
    JSR $CAEE
    !by PAGE3
    !word P3_8C06

    JMP $CD51
---------------------------------
P1_970E
    JSR P1_96F6
    JMP .l971E
---------------------------------
P1_9714
    LDA $C7DD
    BEQ .l971E
    LDX #$FF
    JSR $CDDF
.l971E
    JSR .l9166
    BCC .l9726
    JMP .l9856
---------------------------------
.l9726
    LDX #$04
.l9728
    LDA $3E,X
    STA $3A,X
    DEX
    BNE .l9728
    STX $3F
    LDA $16
    STA $31
    LDA $17
    STA $32
    BIT $C7D6
    BVC .l973F
    INX
.l973F
    STX $C7B2
    LDA $3A
    BEQ .l9753
    LDA #$01
    STA $C7B2
    LDA $C7B1
    AND #$FE
    STA $C7B1
.l9753
    LDY #$02
    LDA ($31),Y
    BNE .l975C
.l9759
    JMP .l971E
---------------------------------
.l975C
    DEY
    LDA ($31),Y
    STA $79
    TAX
    DEY
    LDA ($31),Y
    STA $78
    CMP $3B
    BCC .l9771
    BNE .l9774
    CPX $3C
    BCS .l9774
.l9771
    JMP .l9846
---------------------------------
.l9774
    CMP $3D
    BCC .l9780
    BNE .l9759
    CPX $3E
    BEQ .l9780
    BCS .l9759
.l9780
    JSR $CAEE
    !by PAGE2
    !word P2_B624

    LDA $C846
    AND #$02
    BEQ .l979F
    DEC $3F
    BMI .l979B
    LDA $3F
    SEC
    SBC $C7B2
    STA $3F
    BPL .l979F
.l979B
    LDA #$00
    STA $3F
.l979F
    LDA $C7B1
    LSR
    BNE .l97BC
    LDX $78
    LDA $79
    STX $64
    STA $65
    JSR $CAEE
    !by PAGE3
    !word P3_BFC5  

    JSR $CAEE
    !by PAGE2
    !word P2_A86C

    JSR $CE03
.l97BC
    LDY $3F
    BEQ .l97CD
    LDA $C846
    AND #$08
    BNE .l97CD
.l97C7
    JSR $CE03
    DEY
    BNE .l97C7
.l97CD
    LDY #$00
.l97CF
    LDA $C661,Y
    BEQ .l980B
    JSR $CE05
    INY
    LDA $C7B1
    LSR
    BCC .l97CF
    LDA $D3
    PHA
    LDA $C7B2
    BNE .l97EE
    PLA
    CMP #$28
    BCC .l97EF
    SBC #$28
    PHA
.l97EE
    PLA
.l97EF
    TAX
    BNE .l97CF
    LDA $3F
    LDX $C7B1
    CPX #$02
    BCS .l97FD
    ADC #$05
.l97FD
    STA $38
    TAX
    BEQ .l97CF
.l9802
    JSR $CE03
    DEC $38
    BNE .l9802
    BEQ .l97CF
.l980B
    LDA $3A
    BNE .l982E
    JSR P1_96E6
    LDA $54
    BNE .l9856
    JSR $FFE4
    CMP #$20
    BNE .l9828
.l981D
    JSR $FFE4
    LDX $54
    BNE .l9856
    CMP #$20
    BNE .l981D
.l9828
    JSR $CDF4
    JMP .l9835
---------------------------------
.l982E
    JSR $CDF4
    LDA $54
    BNE .l9856
.l9835
    LDA $C846
    AND #$01
    BEQ .l9846
    LDA $3F
    CLC
    ADC #$01
    ADC $C7B2
    STA $3F
.l9846
    LDY #$02
    CLC
    LDA ($31),Y
    ADC $31
    STA $31
    BCC .l9853
    INC $32
.l9853
    JMP .l9753
---------------------------------
.l9856
    JSR $CDD6
    JSR P1_8E28
    LDA $C7DD
    BEQ .l9864
    JSR $CCE3
.l9864
    RTS
---------------------------------
P1_9865
    JSR $CB5F
    !by PAGE2
    !word P2_BE03

P1_986B
    JSR $CB5F
    !by PAGE2
    !word P2_BE0F

P1_9871
    JSR $CDD6
    JSR $CAEE
    !by PAGE3
    !word P3_865D

    BEQ .l988B
    CMP #$18
    BEQ .l988B
    LDA #$C7
    !by $2c
.l9883
    LDA #$FF
    JSR $CB5F
    !by PAGE3
    !word P3_8AD9

.l988B
    LDY #$00
    LDA ($45),Y
    SEC
    SBC #$04
    STA $20
    CLC
    LDA $45
    ADC #$03
    STA $C1
    LDA $46
    ADC #$00
    STA $C2
    LDA $C7EF
    STA $49
.l98A6
    DEC $49
    BMI .l9883
    LDY $49
    LDA $C804,Y
    STA $09
    CLC
    LDA $C7F0,Y
    ADC #$05
    STA $07
    LDA $C7FA,Y
    ADC #$00
    STA $08
.l98C0
    LDY #$00
    JSR $CB66
    BEQ .l98A6
    STA $3A
    CMP $20
    BEQ .l98DC
.l98CD
    LDA $3A
    SEC
    ADC #$04
    ADC $07
    STA $07
    BCC .l98C0
    INC $08
    BCS .l98C0
.l98DC
    TAY
.l98DD
    JSR $CB66
    CMP ($C1),Y
    BNE .l98CD
    DEY
    BNE .l98DD
    INY
    LDA #$18
    STA ($45),Y
    INY
    LDA $2F
    STA ($45),Y
    INY
    LDA $30
    STA ($45),Y
    LDY $3A
    INY
    JSR $CB66
    PHA
    INY
    JSR $CB66
    PHA
    INY
    LDA $09
    PHA
    JSR $CBBC
    PLA
    STA $09
    PLA
    TAY
    PLA
    TAX
    TYA
.l9911
    STX $07
    STA $08
    STX $3F
    STA $40
    LDY #$00
    JSR $CB66
    BNE .l9921
    RTS
---------------------------------
.l9921
    TAY
    CLC
    ADC #$04
    STA $20
    INY
    INY
.l9929
    JSR $CB66
    STA $C75F,Y
    DEY
    BNE .l9929
    LDX #$5C
    LDA #$C7
    STX $7C
    STA $7D
    JSR $CAEE
    !by PAGE2
    !word P2_861E

    BCS .l9967
    LDA $C7CC
    BNE .l9956
    JSR .l99D6
    BEQ .l9958
    LDA $2D
    CMP $1A
    BNE .l9956
    LDA $2E
    CMP $1B
.l9956
    BNE .l999D
.l9958
    LDA $88
    PHA
    JSR P1_9404
    PLA
    TAX
    JSR .l99D6
    BEQ .l9967
    STX $88
.l9967
    LDA $C7BD
    CLC
    ADC $18
    STA $45
    LDA $C7BE
    JSR $CAEE
    !by PAGE3
    !word P3_866C

    LDY $20
    SEC
    LDA $C75C,Y
    SBC #$03
    STA $07
    LDA $C75D,Y
    SBC #$00
    STA $08
    LDY #$03
    JSR $CB66
    CMP #$70
    BNE .l9995
    LDA #$14
    !by $2c
.l9995
    SBC #$CE
    STA $41
    LDY #$01
    LDA ($45),Y
.l999D
    BNE .l99C7
    LDA #$03
    JSR $C9F2
    LDY #$01
    LDA $41
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
    LDA $09
    STA ($2F),Y
    DEY
    LDA $08
    STA ($2F),Y
    DEY
    LDA $07
    STA ($2F),Y
.l99C7
    LDY $20
    DEY
    TYA
    CLC
    ADC $3F
    TAX
    LDA $40
    ADC #$00
    JMP .l9911
---------------------------------
.l99D6
    LDY #$00
    LDA ($31),Y
    STA $64
    INY
    LDA ($31),Y
    ORA $64
    RTS
---------------------------------
P1_99E2
    LDA #$21
    JSR P1_88C6
    JSR .l8C9D
    JSR $CAEE
    !by PAGE3
    !word P3_BCA6   

    LDA #$02
    STA $88
    JSR .l9B82
    JSR .l9BBB
    STA $38
    JSR .l9BCA
    STA $09
    JSR .l9BBB
    STA $47
    JSR .l9BBB
    STA $48
    JSR .l9A34
    LDA $38
    JSR .l9B72
    LDA $47
    JSR .l9B72
    LDA $48
    JSR .l9B72
.l9A1D
    JSR .l9B5B
    JSR .l9B82
    BNE .l9A1D
    JSR P1_8E28
    JSR .l9B28
    LDA #$02
    JSR $CAEE
    !by PAGE3
    !word P3_8289

    RTS
---------------------------------
.l9A34
    LDA #$00
    STA $45
    LDA #$80
    STA $46
    LDX $07
    LDA $08
    STX $43
    STA $44
    TAY
    BMI .l9A50
    CPX $C84B
    SBC $C84C
    BCS .l9A9B
    TYA
.l9A50
    CMP #$C0
    BCS .l9A9B
    CPX $1A
    SBC $1B
    BCC .l9A9B
    JSR $CAEE
    !by PAGE2
    !word P2_A27C

    BIT $08
    BMI .l9A70
    LDX #$45
    LDY #$47
    JSR .l9BB0
    BCC .l9A76
    LDA #$82
    !by $2c
.l9A70
    LDA $09
    LDX #$07
    BNE .l9A83
.l9A76
    LDA #$82
    LDX #$07
    LDY #$45
    JSR .l9A85
    LDA $09
    LDX #$45
.l9A83
    LDY #$47
.l9A85
    STA $97
    STX $39
    STY $3A
    LDA $09
    PHA
    LDX $C7EF
    STX $73
.l9A93
    DEC $73
    BPL .l9AA0
    PLA
    STA $09
    RTS
---------------------------------
.l9A9B
    LDX #$4B
    JMP $C9FB
---------------------------------
.l9AA0
    LDX $73
    LDA $C7F0,X
    STA $07
    STA $22
    LDA $C7FA,X
    STA $08
    STA $23
    LDA $C804,X
    STA $09
    LDY #$01
    JSR $CB66
    STA $49
    INY
    JSR $CB66
    STA $4A
    LDX $43
    LDA $44
    STX $07
    STA $08
    LDX #$45
    LDY #$49
    JSR .l9BB0
    BCC .l9AD6
    LDA #$82
    !by $2c
.l9AD6
    LDA $09
    CMP $97
    BNE .l9A93
    LDX $39
    LDY #$22
    JSR .l9BB0
    BCC .l9AEC
    LDY #$49
    JSR .l9BB0
    BCC .l9A9B
.l9AEC
    LDX #$22
    LDY $3A
    JSR .l9BB0
    BCS .l9AFC
    LDX #$49
    JSR .l9BB0
.l9AFA
    BCS .l9A9B
.l9AFC
    LDX #$22
    LDY $39
    JSR .l9BB0
.l9B03
    BCC .l9A93
    LDX $3A
    LDY #$49
    JSR .l9BB0
    BCS .l9AFA
    BCC .l9B03
.l9B10
    LDX #$4C
    !by $2c
.l9B13
    LDX #$C9
    !by $2c
.l9B16
    LDX #$4D
    !by $2c
.l9B19
    LDX #$4A
    !by $2c
.l9B1C
    LDX #$49
    JMP $C9FB
---------------------------------
.l9B21
    BIT $90
    BVS .l9B13
    JMP $CE4E
---------------------------------
.l9B28
    LDX $C7EF
    CPX #$0A
    BCS .l9B10
    LDA $43
    STA $C7F0,X
    LDA $44
    STA $C7FA,X
    LDA $09
    STA $C804,X
    INC $C7EF
    RTS
---------------------------------
.l9B42
    JSR .l9B21
    CMP #$30
    BCC .l9B16
    CMP #$3A
    BCS .l9B50
    AND #$0F
    RTS
---------------------------------
.l9B50
    CMP #$41
    BCC .l9B16
    CMP #$47
    BCS .l9B16
    SBC #$36
    RTS
---------------------------------
.l9B5B
    JSR .l9BBB
    JSR .l9B72
    BNE .l9B5B
    JSR .l9BA1
    CMP $3C
    BNE .l9B19
    JSR .l9BA1
    CMP $3B
    BNE .l9B19
    RTS
---------------------------------
.l9B72
    LDY #$00
    JSR $CB8E
    BNE .l9B1C
    INC $07
    BNE .l9B7F
    INC $08
.l9B7F
    DEC $3E
    RTS
---------------------------------
.l9B82
    JSR .l9B21
    CMP #$3B
    BNE .l9B82
    LDA #$00
    STA $3B
    STA $3C
    JSR .l9BBB
    STA $3E
    JSR .l9BBB
    STA $08
    JSR .l9BBB
    STA $07
    LDA $3E
    RTS
---------------------------------
.l9BA1
    JSR .l9B42
    ASL
    ASL
    ASL
    ASL
    STA $3D
    JSR .l9B42
    ORA $3D
    RTS
---------------------------------
.l9BB0
    LDA $00,X
    CMP $0000,Y
    LDA $01,X
    SBC $0001,Y
    RTS
---------------------------------
.l9BBB
    JSR .l9BA1
    PHA
    CLC
    ADC $3B
    STA $3B
    BCC .l9BC8
    INC $3C
.l9BC8
    PLA
    RTS
---------------------------------
.l9BCA
    AND #$E7
    BMI .l9BD6
    STA $9E
    LDA $01
    AND #$F8
    ORA $9E
.l9BD6
    RTS
---------------------------------

.l9BD7
    !by $90,$80,$00,$00,$00,$90,$00,$00
    !by $00,$00

.l9BE1
    RTS
---------------------------------
P1_9BE2
    LDA #<.lA187
    LDY #>.lA187
    JMP .l9C00
---------------------------------
.l9BE9
    JSR $CC0C
P1_9BEC
    LDA $66
    EOR #$FF
    STA $66
    EOR $6E
    STA $6F
    LDA $61
    JMP P1_9C03
---------------------------------
.l9BFB
    JSR .l9D32
    BCC .l9C3C
.l9C00
    JSR $CC0C
P1_9C03
    BNE .l9C08
    JMP P1_9F1B
---------------------------------
.l9C08
    LDX $70
    STX $56
    LDX #$69
    LDA $69
.l9C10
    TAY
    BEQ .l9BE1
    SEC
    SBC $61
    BEQ .l9C3C
    BCC .l9C2C
    STY $61
    LDY $6E
    STY $66
    EOR #$FF
    ADC #$00
    LDY #$00
    STY $56
    LDX #$61
    BNE .l9C30
.l9C2C
    LDY #$00
    STY $70
.l9C30
    CMP #$F9
    BMI .l9BFB
    TAY
    LDA $70
    LSR $01,X
    JSR .l9D49
.l9C3C
    BIT $6F
    BPL .l9C97
    LDY #$61
    CPX #$69
    BEQ .l9C48
    LDY #$69
.l9C48
    SEC
    EOR #$FF
    ADC $56
    STA $70
    LDA $0004,Y
    SBC $04,X
    STA $65
    LDA $0003,Y
    SBC $03,X
    STA $64
    LDA $0002,Y
    SBC $02,X
    STA $63
    LDA $0001,Y
    SBC $01,X
    STA $62
.l9C6B
    BCS .l9C70
    JSR .l9CE0
.l9C70
    LDY #$00
    TYA
    CLC
.l9C74
    LDX $62
    BNE .l9CC2
    LDX $63
    STX $62
    LDX $64
    STX $63
    LDX $65
    STX $64
    LDX $70
    STX $65
    STY $70
    ADC #$08
    CMP #$20
    BNE .l9C74
.l9C90
    LDA #$00
.l9C92
    STA $61
.l9C94
    STA $66
    RTS
---------------------------------
.l9C97
    ADC $56
    STA $70
    LDA $65
    ADC $6D
    STA $65
    LDA $64
    ADC $6C
    STA $64
    LDA $63
    ADC $6B
    STA $63
    LDA $62
    ADC $6A
    STA $62
    JMP .l9CCF
---------------------------------
.l9CB6
    ADC #$01
    ASL $70
    ROL $65
    ROL $64
    ROL $63
    ROL $62
.l9CC2
    BPL .l9CB6
    SEC
    SBC $61
    BCS .l9C90
    EOR #$FF
    ADC #$01
    STA $61
.l9CCF
    BCC .l9CDF
.l9CD1
    INC $61
    BEQ .l9D17
    ROR $62
    ROR $63
    ROR $64
    ROR $65
    ROR $70
.l9CDF
    RTS
---------------------------------
.l9CE0
    LDA $66
    EOR #$FF
    STA $66
.l9CE6
    LDA $62
    EOR #$FF
    STA $62
    LDA $63
    EOR #$FF
    STA $63
    LDA $64
    EOR #$FF
    STA $64
    LDA $65
    EOR #$FF
    STA $65
    LDA $70
    EOR #$FF
    STA $70
    INC $70
    BNE .l9D16
.l9D08
    INC $65
    BNE .l9D16
    INC $64
    BNE .l9D16
    INC $63
    BNE .l9D16
    INC $62
.l9D16
    RTS
---------------------------------
.l9D17
    LDX #$02
    JMP $C9FB
---------------------------------
.l9D1C
    LDX #$25
.l9D1E
    LDY $04,X
    STY $70
    LDY $03,X
    STY $04,X
    LDY $02,X
    STY $03,X
    LDY $01,X
    STY $02,X
    LDY $68
    STY $01,X
.l9D32
    ADC #$08
    BMI .l9D1E
    BEQ .l9D1E
    SBC #$08
    TAY
    LDA $70
    BCS .l9D53
.l9D3F
    ASL $01,X
    BCC .l9D45
    INC $01,X
.l9D45
    ROR $01,X
    ROR $01,X
.l9D49
    ROR $02,X
    ROR $03,X
    ROR $04,X
    ROR
    INY
    BNE .l9D3F
.l9D53
    CLC
    RTS
---------------------------------
.l9D55
    !by $03,$7f,$5e,$56,$cb,$79,$80,$13
    !by $9b,$0b,$64,$80,$76,$38,$93,$16
    !by $82,$38,$aa,$3b,$20
.l9D6A
    !by $80,$35,$04,$f3,$34
.l9D6F
    !by $81,$35,$04,$f3,$34
.l9D74
    !by $80,$80,$00,$00,$00
.l9D79
    !by $80,$31,$72,$17,$f8

---------------------------------
P1_9D7E
    JSR .l9F58
    BEQ .l9D85
    BPL .l9D88
.l9D85
    JMP .lA553
---------------------------------
.l9D88
    LDA $61
    SBC #$7F
    PHA
    LDA #$80
    STA $61
    LDA #<.l9D6A
    LDY #>.l9D6A
    JSR .l9C00
    LDA #<.l9D6F
    LDY #>.l9D6F
    JSR .l9E78
    LDA #<$CF49
    LDY #>$CF49
    JSR .l9BE9
    LDA #<.l9D55
    LDY #>.l9D55
    JSR .lA363
    LDA #<.l9D74
    LDY #>.l9D74
    JSR .l9C00
    PLA
    JSR .lA02C
    LDA #<.l9D79
    LDY #>.l9D79
.l9DBC
    JSR $CC0C
P1_9DBF
    BNE .l9DC4
    JMP .l9E1F
---------------------------------
.l9DC4
    JSR .l9E20
    LDA #$00
    STA $26
    STA $27
    STA $28
    STA $29
    LDA $70
    JSR .l9DED
    LDA $65
    JSR .l9DED
    LDA $64
    JSR .l9DED
    LDA $63
    JSR .l9DED
    LDA $62
    JSR .l9DF2
    JMP .l9EF8
---------------------------------
.l9DED
    BNE .l9DF2
    JMP .l9D1C
---------------------------------
.l9DF2
    LSR
    ORA #$80
.l9DF5
    TAY
    BCC .l9E11
    CLC
    LDA $29
    ADC $6D
    STA $29
    LDA $28
    ADC $6C
    STA $28
    LDA $27
    ADC $6B
    STA $27
    LDA $26
    ADC $6A
    STA $26
.l9E11
    ROR $26
    ROR $27
    ROR $28
    ROR $29
    ROR $70
    TYA
    LSR
    BNE .l9DF5
.l9E1F
    RTS
---------------------------------
.l9E20
    LDA $69
.l9E22
    BEQ .l9E43
    CLC
    ADC $61
    BCC .l9E2D
    BMI .l9E48
    CLC
    !by $2c
.l9E2D
    BPL .l9E43
    ADC #$80
    STA $61
    BNE .l9E38
    JMP .l9C94
---------------------------------
.l9E38
    LDA $6F
    STA $66
    RTS
---------------------------------
.l9E3D
    LDA $66
    EOR #$FF
    BMI .l9E48
.l9E43
    PLA
    PLA
    JMP .l9C90
---------------------------------
.l9E48
    JMP .l9D17
---------------------------------
P1_9E4B
    JSR P1_9F38
    TAX
    BEQ .l9E61
    CLC
    ADC #$02
    BCS .l9E48
    LDX #$00
    STX $6F
    JSR .l9C10
    INC $61
    BEQ .l9E48
.l9E61
    RTS
---------------------------------
.l9E62
    !by $84,$20,$00,$00,$00
---------------------------------
P1_9E67
    JSR P1_9F38
    LDA #<.l9E62
    LDY #>.l9E62
    LDX #$00
.l9E70
    STX $6F
    JSR $CBE7
    JMP P1_9E7B
---------------------------------
.l9E78
    JSR $CC0C
P1_9E7B
    BEQ .l9EF3
    JSR .l9F0B
    LDA #$00
    SEC
    SBC $61
    STA $61
    JSR .l9E20
    INC $61
    BEQ .l9E48
    LDX #$FC
    LDA #$01
.l9E92
    LDY $6A
    CPY $62
    BNE .l9EA8
    LDY $6B
    CPY $63
    BNE .l9EA8
    LDY $6C
    CPY $64
    BNE .l9EA8
    LDY $6D
    CPY $65
.l9EA8
    PHP
    ROL
    BCC .l9EB5
    INX
    STA $29,X
    BEQ .l9EE3
    BPL .l9EE7
    LDA #$01
.l9EB5
    PLP
    BCS .l9EC6
.l9EB8
    ASL $6D
    ROL $6C
    ROL $6B
    ROL $6A
    BCS .l9EA8
    BMI .l9E92
    BPL .l9EA8
.l9EC6
    TAY
    LDA $6D
    SBC $65
    STA $6D
    LDA $6C
    SBC $64
    STA $6C
    LDA $6B
    SBC $63
    STA $6B
    LDA $6A
    SBC $62
    STA $6A
    TYA
    JMP .l9EB8
---------------------------------
.l9EE3
    LDA #$40
    BNE .l9EB5
.l9EE7
    ASL
    ASL
    ASL
    ASL
    ASL
    ASL
    STA $70
    PLP
    JMP .l9EF8
---------------------------------
.l9EF3
    LDX #$03
    JMP $C9FB
---------------------------------
.l9EF8
    LDA $26
    STA $62
    LDA $27
    STA $63
    LDA $28
    STA $64
    LDA $29
    STA $65
    JMP .l9C70
---------------------------------
.l9F0B
    LDA $61
    BEQ .l9F57
    ASL $70
    BCC .l9F57
.l9F13
    JSR .l9D08
    BNE .l9F57
    JMP .l9CD1
---------------------------------
P1_9F1B
    LDA $6E
.l9F1D
    STA $66
    LDA $6D
    STA $65
    LDA $6C
    STA $64
    LDA $6B
    STA $63
    LDA $6A
    STA $62
    LDA $69
    STA $61
    LDX #$00
    STX $70
    RTS
---------------------------------
P1_9F38
    JSR .l9F0B
.l9F3B
    LDA $66
    STA $6E
    LDA $65
    STA $6D
    LDA $64
    STA $6C
    LDA $63
    STA $6B
    LDA $62
    STA $6A
    LDA $61
    STA $69
    LDX #$00
    STX $70
.l9F57
    RTS
---------------------------------
.l9F58
    LDA $61
    CMP #$00
    BEQ .l9F67
.l9F5E
    LDA $66
.l9F60
    ROL
    LDA #$FF
    BCS .l9F67
    LDA #$01
.l9F67
    RTS
---------------------------------
.l9F68
    LDX #$5C    ; $005C ???
    !by $2c
.l9F6B
    LDX #$57    ; $0057 ???
    LDY #$00
    JMP $CAA0
---------------------------------
P1_9F72
    JSR .l9F58
.l9F75
    STA $62
    LDA #$00
    STA $63
    LDX #$88
.l9F7D
    LDA $62
    EOR #$FF
    ROL
    LDA #$00
    STA $65
    STA $64
    STX $61
    STA $70
    STA $66
    JMP .l9C6B
---------------------------------
    LSR $66
    RTS
---------------------------------
P1_9F94
    STA $24
    STY $25
    LDY #$00
    LDA ($24),Y
    INY
    TAX
    BEQ .l9F58
    LDA ($24),Y
    EOR $66
    BMI .l9F5E
    CPX $61
    BNE .l9FCB
    LDA ($24),Y
    ORA #$80
    CMP $62
    BNE .l9FCB
    INY
    LDA ($24),Y
    CMP $63
    BNE .l9FCB
    INY
    LDA ($24),Y
    CMP $64
    BNE .l9FCB
    INY
    LDA #$7F
    CMP $70
    LDA ($24),Y
    SBC $65
    BEQ .l9FF3
.l9FCB
    LDA $66
    BCC .l9FD1
    EOR #$FF
.l9FD1
    JMP .l9F60
---------------------------------
.l9FD4
    LDA $61
    BEQ .lA022
    SEC
    SBC #$A0
    BIT $66
    BPL .l9FE8
    TAX
    LDA #$FF
    STA $68
    JSR .l9CE6
    TXA
.l9FE8
    LDX #$61
    CMP #$F9
    BPL .l9FF4
    JSR .l9D32
    STY $68
.l9FF3
    RTS
---------------------------------
.l9FF4
    TAY
    LDA $66
    AND #$80
    LSR $62
    ORA $62
    STA $62
    JSR .l9D49
    STY $68
    RTS
---------------------------------
P1_A005
    LDA $61
    CMP #$A0
    BCS .lA02B
    JSR .l9FD4
    STY $70
    LDA $66
    STY $66
    EOR #$80
    ROL
    LDA #$A0
    STA $61
    LDA $65
    STA $05
    JMP .l9C6B
---------------------------------
.lA022
    STA $62
    STA $63
    STA $64
    STA $65
    TAY
.lA02B
    RTS
---------------------------------
.lA02C
    PHA
    JSR P1_9F38
    PLA
    JSR .l9F75
    LDA $6E
    EOR $66
    STA $6F
    LDX $61
    JMP P1_9C03
---------------------------------

.lA03F
    !by $9b,$3e,$bc,$1f,$fd
.lA044
    !by $9e,$6e,$6b,$27,$fd
.lA049
    !by $9e,$6e,$6b,$28,$00

---------------------------------
P1_A04E
    LDY #$01
    LDA #$20
    BIT $66
    BPL .lA058
    LDA #$2D
.lA058
    STA $00FF,Y
    STA $66
    STY $71
    INY
    LDA #$30
    LDX $61
    BNE .lA06E
    LDX #$20
    STX $0100
    JMP .lA17A
---------------------------------
.lA06E
    LDA #$00
    CPX #$80
    BEQ .lA076
    BCS .lA07F
.lA076
    LDA #<.lA049
    LDY #>.lA049
    JSR .l9DBC
    LDA #$F7
.lA07F
    STA $5D
.lA081
    LDA #<.lA044
    LDY #>.lA044
    JSR P1_9F94
    BEQ .lA0A8
.lA08A
    BPL .lA09E
.lA08C
    LDA #<.lA03F
    LDY #>.lA03F
    JSR P1_9F94
    BEQ .lA097
    BPL .lA0A5
.lA097
    JSR P1_9E4B
    DEC $5D
    BNE .lA08C
.lA09E
    JSR P1_9E67
    INC $5D
    BNE .lA081
.lA0A5
    JSR P1_9BE2
.lA0A8
    JSR .l9FD4
    LDX #$01
    LDA $5D
    CLC
    ADC #$0A
    BMI .lA0BD
    CMP #$0B
    BCS .lA0BE
    ADC #$FF
    TAX
    LDA #$02
.lA0BD
    SEC
.lA0BE
    SBC #$02
    STA $5E
    STX $5D
    TXA
    BEQ .lA0C9
    BPL .lA0DC
.lA0C9
    LDY $71
    LDA #$2E
    INY
    STA $00FF,Y
    TXA
    BEQ .lA0DA
    LDA #$30
    INY
    STA $00FF,Y
.lA0DA
    STY $71
.lA0DC
    LDY #$00
    LDX #$80
.lA0E0
    LDA $65
    CLC
    ADC .lA187+8,Y
    STA $65
    LDA $64
    ADC .lA187+7,Y
    STA $64
    LDA $63
    ADC .lA187+6,Y
    STA $63
    LDA $62
    ADC .lA187+5,Y
    STA $62
    INX
    BCS .lA104
    BPL .lA0E0
    BMI .lA106
.lA104
    BMI .lA0E0
.lA106
    TXA
    BCC .lA10D
    EOR #$FF
    ADC #$0A
.lA10D
    ADC #$2F
    INY
    INY
    INY
    INY
    STY $47
    LDY $71
    INY
    TAX
    AND #$7F
    STA $00FF,Y
    DEC $5D
    BNE .lA128
    LDA #$2E
    INY
    STA $00FF,Y
.lA128
    STY $71
    LDY $47
    TXA
    EOR #$FF
    AND #$80
    TAX
    CPY #$24
    BEQ .lA13A
    CPY #$3C
    BNE .lA0E0
.lA13A
    LDY $71
.lA13C
    LDA $00FF,Y
    DEY
    CMP #$30
    BEQ .lA13C
    CMP #$2E
    BEQ .lA149
    INY
.lA149
    LDA #$2B
    LDX $5E
    BEQ .lA17D
    BPL .lA159
    LDA #$00
    SEC
    SBC $5E
    TAX
    LDA #$2D
.lA159
    STA $0101,Y
    LDA #$45
    STA $0100,Y
    TXA
    LDX #$2F
    SEC
.lA165
    INX
    SBC #$0A
    BCS .lA165
    ADC #$3A
    STA $0103,Y
    TXA
    STA $0102,Y
    LDA #$00
    STA $0104,Y
    BEQ .lA182
.lA17A
    STA $00FF,Y
.lA17D
    LDA #$00
    STA $0100,Y
.lA182
    LDA #$00
    LDY #$01
    RTS
---------------------------------

.lA187
    !by $80,$00,$00,$00,$00,$fa,$0a,$1f
    !by $00,$00,$98,$96,$80,$ff,$f0,$bd
    !by $c0,$00,$01,$86,$a0,$ff,$ff,$d8
    !by $f0,$00,$00,$03,$e8,$ff,$ff,$ff
    !by $9c,$00,$00,$00,$0a,$ff,$ff,$ff
    !by $ff,$ff,$df,$0a,$80,$00,$03,$4b
    !by $c0,$ff,$ff,$73,$60,$00,$00,$0e
    !by $10,$ff,$ff,$fd,$a8,$00,$00,$00
    !by $3c

.lA1C8
    JMP .lA553

.lA1CB
    !by $7f,$55,$a9,$a8,$04
.lA1D0
    !by $80,$17,$14,$b9,$cb,$80,$35
    !by $04,$f3,$34

P1_A1DA
    LDA $61
    BEQ .lA22C
    BIT $66
    BMI .lA1C8
    EOR #$80
    STA $67
    LDA #$80
    STA $61
    LDX #$05
.lA1EC
    LDA $61,X
    STA $4E,X
    DEX
    BPL .lA1EC
    LDA #<.lA1D0
    LDY #>.lA1D0
    JSR .l9DBC
    LDA #<.lA1CB
    LDY #>.lA1CB
    JSR .l9C00
    JSR .lA22D
    LDA $61
    JSR P1_9C03
    JSR .lA22D
    DEC $69
    DEC $69
    LDA $61
    JSR P1_9C03
    LDA $67
    ASL
    ROR $67
    BCC .lA225
    LDA #$D5
    LDY #$A1
    JSR .l9DBC
    INC $67
.lA225
    LDA $67
    CLC
    ADC $61
    STA $61
.lA22C
    RTS
---------------------------------
.lA22D
    LDX #$05
.lA22F
    LDA $61,X
    STA $57,X
    DEX
    BPL .lA22F
    LDX #$05
.lA238
    LDA $4E,X
    STA $69,X
    DEX
    BPL .lA238
    JSR P1_9E7B
    LDX #$05
.lA244
    LDA $57,X
    STA $69,X
    DEX
    BPL .lA244
    RTS
---------------------------------
.lA24C
    LDA $66
    STA $13
    BMI .lA262
    LDA $05
    CMP #$02
    BNE .lA266
    JSR P1_9F1B
    STX $6F
    LDA $61
    JMP P1_9DBF
---------------------------------
.lA262
    LDA #$01
    SBC $05
.lA266
    PHA
    LDY #$04
.lA269
    LDA $CF49,Y
    STA $0057,Y
    DEY
    BPL .lA269
    JSR P1_9F1B
    BEQ .lA2A9
.lA277
    PLA
    LSR
    PHA
    BCC .lA29F
    LDA #$57
    LDY #$00
    LDX $13
    BMI .lA28A
    JSR .l9DBC
    JMP .lA28D
---------------------------------
.lA28A
    JSR .l9E78
.lA28D
    PLA
    BEQ .lA2B3
    PHA
    LDX #$57    ; $0057 ???
    LDY #$00
    JSR $CAA0
    LDA #$4E    ; $004E ???
    LDY #$00
    JSR $CBE7
.lA29F
    JSR P1_9F38
    STX $6F
    LDA $61
    JSR P1_9DBF
.lA2A9
    LDX #$4E    ; $004E ???
    LDY #$00
    JSR $CAA0
    JMP .lA277
---------------------------------
.lA2B3
    RTS
---------------------------------
.lA2B4
    LDX $66
    BMI .lA30D
    JMP .l9C92
---------------------------------
P1_A2BB
    BEQ P1_A310
    LDA $69
    BEQ .lA2B4
    LDX #$4E    ; $004E ???
    LDY #$00
    JSR $CAA0
    JSR P1_A005
    LDA #$4E    ; $004E ???
    LDY #$00
    JSR P1_9F94
    BNE .lA2DD
    LDA $61
    CMP #$88
    BCS .lA2E1
    JMP .lA24C
---------------------------------
.lA2DD
    LDA $6E
    BMI .lA30D
.lA2E1
    LDA $6E
    BMI .lA2E8
    LDY #$00
    !by $2c
.lA2E8
    LDY $05
    LDA #$00
    JSR .l9F1D
    TYA
    PHA
    JSR P1_9D7E
    LDA #$4E    ; $004E ???
    LDY #$00
    JSR .l9DBC
    JSR P1_A310
    PLA
    LSR
    BCC .lA30C
P1_A302
    LDA $61
    BEQ .lA30C
    LDA $66
    EOR #$FF
    STA $66
.lA30C
    RTS
---------------------------------
.lA30D
    JMP .lA553
---------------------------------
P1_A310
    LDA #<.lA3AD
    LDY #>.lA3AD
    JSR .l9DBC
    LDA $70
    ADC #$50
    BCC .lA320
    JSR .l9F13
.lA320
    STA $56
    JSR .l9F3B
    LDA $61
    CMP #$88
    BCC .lA32E
.lA32B
    JSR .l9E3D
.lA32E
    JSR P1_A005
    LDA $05
    CLC
    ADC #$81
    BEQ .lA32B
    SEC
    SBC #$01
    PHA
    LDX #$05
.lA33E
    LDA $69,X
    LDY $61,X
    STA $61,X
    STY $69,X
    DEX
    BPL .lA33E
    LDA $56
    STA $70
    JSR P1_9BEC
    JSR P1_A302
    LDA #<.lA3B2
    LDY #>.lA3B2
    JSR .lA379
    LDA #$00
    STA $6F
    PLA
    JSR .l9E22
    RTS
---------------------------------
.lA363
    STA $71
    STY $72
    JSR .l9F6B
    LDA #$57
    JSR .l9DBC
    JSR .lA37D
    LDA #$57    ; $0057 ???
    LDY #$00
    JMP .l9DBC
---------------------------------
.lA379
    STA $71
    STY $72
.lA37D
    JSR .l9F68
    LDA ($71),Y
    STA $67
    LDY $71
    INY
    TYA
    BNE .lA38C
    INC $72
.lA38C
    STA $71
    LDY $72
.lA390
    JSR .l9DBC
    LDA $71
    LDY $72
    CLC
    ADC #$05
    BCC .lA39D
    INY
.lA39D
    STA $71
    STY $72
    JSR .l9C00
    LDA #$5C    ; $005C ???
    LDY #$00
    DEC $67
    BNE .lA390
    RTS
---------------------------------
.lA3AD
    !by $81,$38,$aa,$3b,$29
.lA3B2
    !by $07,$71,$34
    !by $58,$3e,$56,$74,$16,$7e,$b3,$1b
    !by $77,$2f,$ee,$e3,$85,$7a,$1d,$84
    !by $1c,$2a,$7c,$63,$59,$58,$0a,$7e
    !by $75,$fd,$e7,$c6,$80,$31,$72,$18
    !by $10,$81,$00,$00,$00,$00
.lA3DB
    !by $98,$35,$44,$7a
.lA3DF
    !by $68,$28,$b1,$46

P1_A3E3
    JSR .l9F58
    BMI .lA416
    BNE .lA401
    LDA $DC04
    STA $62
    LDA $DC05
    STA $64
    LDA $DC08
    STA $63
    LDA $DC09
    STA $65
    JMP .lA426
---------------------------------
.lA401
    LDA #$8B    ; $008B ???
    LDY #$00
    JSR $CBE7
    LDA #<.lA3DB
    LDY #>.lA3DB
    JSR .l9DBC
    LDA #<.lA3DF
    LDY #>.lA3DF
    JSR .l9C00
.lA416
    LDX $65
    LDA $62
    STA $65
    STX $62
    LDX $63
    LDA $64
    STA $63
    STX $64
.lA426
    LDA #$00
    STA $66
    LDA $61
    STA $70
    LDA #$80
    STA $61
    JSR .l9C70
    LDX #$8B    ; $008B ???
    LDY #$00
.lA439
    JMP $CAA0
---------------------------------
P1_A43C
    LDA #<.lA4B8
    LDY #>.lA4B8
    JSR .l9C00
P1_A443
    JSR P1_9F38
    LDA #<.lA4BD
    LDY #>.lA4BD
    LDX $6E
    JSR .l9E70
    JSR P1_9F38
    JSR P1_A005
    LDA #$00
    STA $6F
    JSR P1_9BEC
    LDA #<.lA4C2
    LDY #>.lA4C2
    JSR .l9BE9
    LDA $66
    PHA
    BPL .lA475
    JSR P1_9BE2
    LDA $66
    BMI .lA478
    LDA $13
    EOR #$FF
    STA $13
.lA475
    JSR P1_A302
.lA478
    LDA #<.lA4C2
    LDY #>.lA4C2
    JSR .l9C00
    PLA
    BPL .lA485
    JSR P1_A302
.lA485
    LDA #<.lA4C7
    LDY #>.lA4C7
    JMP .lA363
---------------------------------
P1_A48C
    JSR .l9F6B
    LDA #$00
    STA $13
    JSR P1_A443
    LDX #$4E    ; $004E ???
    LDY #$00
    JSR .lA439
    LDA #$57    ; $0057 ???
    LDY #$00
    JSR $CBE7
    LDA #$00
    STA $66
    LDA $13
    JSR .lA4B4
    LDA #$4E    ; $004E ???
    LDY #$00
    JMP .l9E78
---------------------------------
.lA4B4
    PHA
    JMP .lA475
---------------------------------

.lA4B8
    !by $81,$49,$0f,$da,$a2
.lA4BD
    !by $83,$49,$0f,$da,$a2
.lA4C2
    !by $7f,$00,$00,$00,$00
.lA4C7
    !by $05,$84,$e6,$1a,$2d

    !by $1b,$86,$28,$07,$fb,$f8,$87,$99
    !by $68,$89,$01,$87,$23,$35,$df,$e1
    !by $86,$a5,$5d,$e7,$28,$83,$49,$0f
    !by $da,$a2

P1_A4E6
    LDA $66
    PHA
    BPL .lA4EE
    JSR P1_A302
.lA4EE
    LDA $61
    PHA
    CMP #$81
    BCC .lA4FC
    LDA #<$CF49
    LDY #>$CF49
    JSR .l9E78
.lA4FC
    LDA #<.lA516
    LDY #>.lA516
    JSR .lA363
    PLA
    CMP #$81
    BCC .lA50F
    LDA #<.lA4B8
    LDY #>.lA4B8
    JSR .l9BE9
.lA50F
    PLA
    BPL .lA515
    JMP P1_A302
---------------------------------
.lA515
    RTS
---------------------------------
.lA516
    !by $0b,$76,$b3,$83,$bd,$d3,$79,$1e
    !by $f4,$a6,$f5,$7b,$83,$fc,$b0,$10
    !by $7c,$0c,$1f,$67,$ca,$7c,$de,$53
    !by $cb,$c1,$7d,$14,$64,$70,$4c,$7d
    !by $b7,$ea,$51,$7a,$7d,$63,$30,$88
    !by $7e,$7e,$92,$44,$99,$3a,$7e,$4c
    !by $cc,$91,$c7,$7f,$aa,$aa,$aa,$13
    !by $81,$00,$00,$00,$00

---------------------------------
.lA553
    LDX #$01
    JMP $C9FB
---------------------------------
    LDA $61
    CMP #$90
    BCC .lA567
    LDA #<.l9BD7
    LDY #>.l9BD7
    JSR P1_9F94
    BNE .lA553
.lA567
    JMP .l9FD4
---------------------------------
P1_A56A
    LDX #$00
    STA $62
    STY $63
    LDX #$90
    JMP .l9F7D
---------------------------------
P1_A575
    LDX $61
    BEQ .lA580
    LDA $66
    BPL .lA580
.lA57D
    JMP .lA553
---------------------------------
.lA580
    CPX #$91
    BCS .lA57D
    JMP .l9FD4
---------------------------------
.lA587
    LDY #$61
.lA589
    INY
    TYA
    LDX $98
.lA58D
    DEX
    BMI .lA597
    CMP $026D,X
    BEQ .lA589
    BNE .lA58D
.lA597
    STY $B9
    RTS
---------------------------------

    !by $90
    !word .end1
    !word .signal1
    
    !pet 7,"english"
    !word .lA5C0
    !word .init_english

    !pet 5,"dansk"
    !word .lA5C0
    !word .init_dansk

    !pet 6,"system"
    !word ptSystem
    !word DUMMY

.lA5C0
    !by $00

; ------------------------------
.signal1
    CPY #$00                    ; POWER1
    BEQ .lA5DF
    CPY #$06                    ; RUN
    BEQ .lA5F8
    CPY #$07                    ; WARM1
    BNE .lA5DE
.lA5CD
    LDA $DC0E
    LDX $C869
    BEQ .lA5D9
    ORA #$80
    BNE .lA5DB
.lA5D9
    AND #$7F
.lA5DB
    STA $DC0E
.lA5DE
    RTS

; ------------------------------
.lA5DF
    LDA $02A6
    STA $C869
    JSR .lA5CD
    LDY #$04
    LDA #$00
-   STA $DC07,Y
    DEY
    BNE -

    LDX #<.func_key_txt          ; function key
    LDA #>.func_key_txt          ; texts address
    BNE +                       ; jmp
.lA5F8
    LDX #<.func_key_code         ; function key
    LDA #>.func_key_code         ; code address
    LDY #$08                    ; for key amount
+   STX $45
    STA $46
.next_key
    STY $38
    LDA .func_key_length,Y       ; function key text length
    JSR P1_AA5A
    LDY $38
    INY
    CPY #$10                    ; key amount #$10-#$08
    BNE .next_key
    RTS
---------------------------------
P1_A612
    LDA #$44
    STA $09
    LDX #$DC
    LDA #$00
.lA61A
    CLC
.lA61B
    DEY
    BMI .lA625
    ADC #$20
    BCC .lA61B
    INX
    BCS .lA61A
.lA625
    STA $07
    STX $08
    RTS
---------------------------------
P1_A62A
    TAY
    LDA $C855,Y
    STA $C865
    JSR P1_A612
    STA $C866
    STX $C867
    RTS
---------------------------------

.func_key_length
    !by $06,$06,$0b,$05,$05,$05,$08,$05
.lA643
    !by $01,$01,$01,$01,$01,$01,$01,$01

.func_key_txt
    !pet "RENUM",$0d
    !pet "MOUNT",$0D
    !pet "USE turtle",$0D
    !pet "AUTO "
    !pet "EDIT "
    !pet "LIST "
    !pet "RUN  ",$0D,$0b,$0d
    !pet "SCAN",$0d

.func_key_code
    !by $85,$89,$86,$8a,$87,$8b,$88,$8c


; ----------------------------

.init_english
    LDX #<.lAB58
    LDA #>.lAB58
    BNE +

.init_dansk
    LDX #<.lB568
    LDA #>.lB568

+   STX IERTXT
    STA IERTXT+1
    LDY #$80
    STY IERTXT+2
    RTS

; ----------------------------

ptSystem
    !pet $0A,"setprinter"
    !word phSetprinter
;
    !pet $08,"hardcopy"
    !word phHardcopy
;
    !pet $0E,"setrecorddelay"
    !word phSetrecorddelay
;
    !pet $07,"setpage"
    !word phSetpage
;
    !pet $05,"inkey"
    !word phInkey
;
    !pet $04,"free"
    !word phFree
;
    !pet $16,"keywords'in'upper'case"
    !word phKeywords_in_upper_case
;
    !pet $13,"names'in'upper'case"
    !word phNames_in_upper_case
;
    !pet $0A,"quote'mode"
    !word phQoute_mode
;
    !pet $06,"currow"
    !word phCurrow
;
    !pet $06,"curcol"
    !word phCurcol
;
    !pet $0A,"textcolors"
    !word phTextcolors
;
    !pet $06,"defkey"
    !word phDefkey
;
    !pet $08,"showkeys"
    !word phShowkeys
;
    !pet $04,"bell"
    !word phBell
;
    !pet $06,"serial"
    !word phSerial
;
    !pet $07,"settime"
    !word phSettime
;
    !pet $07,"gettime"
    !word phGettime
;
    !pet $09,"getscreen"
    !word phGetscreen
;
    !pet $09,"setscreen"
    !word phSetscreen

    !by $00
; ----------------------------
;
phSetprinter
    !by PROC
    !word Setprinter
    !by $01
    !by VALUE + STR
    !by ENDPRC

;
phHardcopy
    !by PROC
    !word Hardcopy
    !by $01
    !by VALUE + STR
    !by ENDPRC

;
phSetrecorddelay
    !by PROC
    !word Setrecorddelay
    !by $01
    !by VALUE + INT
    !by ENDPRC

;
phSetpage
    !by PROC
    !word Setpage
    !by $01
    !by VALUE + INT
    !by ENDPRC

;
phInkey
    !by FUNC + STR
    !word Inkey
    !by $00
    !by ENDFNC

;
phFree
    !by FUNC + REAL
    !word Free
    !by $00
    !by ENDFNC

;
phKeywords_in_upper_case
    !by PROC
    !word Keywords_in_upper_case
    !by $01
    !by VALUE + INT
    !by ENDPRC

;
phNames_in_upper_case
    !by PROC
    !word Names_in_upper_case
    !by $01
    !by VALUE + INT
    !by ENDPRC

;
phQoute_mode
    !by PROC
    !word Qoute_mode
    !by $01
    !by VALUE + INT
    !by ENDPRC

;
phCurrow
    !by FUNC + REAL
    !word Currow
    !by $00
    !by ENDFNC

;
phCurcol
    !by FUNC + REAL
    !word Curcol
    !by $00
    !by ENDFNC

;
phTextcolors
    !by PROC
    !word Textcolors
    !by $03
    !by VALUE + INT
    !by VALUE + INT
    !by VALUE + INT
    !by ENDPRC

;
phDefkey
    !by PROC
    !word Defkey
    !by $02
    !by VALUE + INT
    !by VALUE + STR
    !by ENDPRC

;
phShowkeys
    !by PROC
    !word Showkeys
    !by $00
    !by ENDPRC

;
phBell
    !by PROC
    !word Bell
    !by $01
    !by VALUE + INT
    !by ENDPRC

;
phSerial
    !by PROC
    !word Serial
    !by $01
    !by VALUE + INT
    !by ENDPRC

;
phSettime
    !by PROC
    !word Settime
    !by $01
    !by VALUE + STR
    !by ENDPRC

;
phGettime
    !by FUNC + STR
    !word Gettime
    !by $00
    !by ENDFNC

;
phGetscreen
    !by PROC
    !word Getscreen
    !by $01
    !by REF + STR
    !by ENDPRC

;
phSetscreen
    !by PROC
    !word Setscreen
    !by $01
    !by REF + STR
    !by ENDPRC

; ----------------------------

;
; Settime
;
Settime
    JSR $CB5F
    !by PAGE4
    !word P4_BFFA


;
; Gettime
;
Gettime
    JSR $CB5F
    !by PAGE4
    !word P4_BFFD


;
; Setprinter
;
Setprinter
    JSR LA821
    LDX $C843
    BNE LA86C
    STA $C847
    LDA $B9
    STA $C848
    LDA $BA
    STA $C849
    RTS
---------------------------------
LA821
    LDA #$01
    JSR LA834
LA826
    STX $B7
    STY $BB
    STA $BC
    JSR P1_8E28
    LDA #$22
    JMP P1_88C9
---------------------------------
LA834
    JSR LA850
    CLC
    LDA $45
    ADC #$04
    TAY
    LDA $46
    ADC #$00
    RTS
---------------------------------
LA842
    JSR $CC37
    LDY #$01
    LDA ($45),Y
    TAX
    DEY
    LDA ($45),Y
    RTS
---------------------------------
LA84E
    LDA #$01
LA850
    JSR LA842
    BNE LA86F
    TXA
    RTS
---------------------------------
LA857
    JSR LA842
    BNE LA862
    CPX #$10
    BCS LA869
    TXA
LA861
    RTS
---------------------------------
LA862
    INX
    BNE LA869
    CMP #$FF
    BEQ LA861
LA869
    LDX #$1E
    !by $2c
LA86C
    LDX #$da
    !by $2c
LA86F
    LDX #$05
    JMP $C9FB
---------------------------------
LA874
    !by $fe,$d7,$0c,$fe


;
; Getscreen
;
Getscreen
    LDA #$01
    !by $2c
;
; Setscreen
;
Setscreen
    LDA #$03
    PHA
    LDA #$01
    JSR $CC37
    LDX #$04
LA885
    LDA LA874-1,X
    STA $3E,X
    DEX
    BNE LA885
    STX $3B
    LDX $0288
    STX $3C
    PLA
    TAY
    TAX
    LDA ($45),Y
    CMP #$E1
    DEY
    LDA ($45),Y
    SBC #$05
    BCC LA86F
    DEX
    BNE LA8D4
    LDY #$02
    LDA #$05
    STA ($45),Y
    INY
    LDA #$E1
    STA ($45),Y
    INY
    LDA $C853
    STA ($45),Y
    INY
    LDA $C854
    STA ($45),Y
    INY
    LDA $0286
    STA ($45),Y
    INY
    LDA $D6
    STA ($45),Y
    LDA $D3
    CMP #$28
    BCC LA8CF
    SBC #$28
LA8CF
    INY
    STA ($45),Y
    BNE LA8F5
LA8D4
    LDY #$04
    LDA ($45),Y
    STA $C853
    INY
    LDA ($45),Y
    STA $C854
    INY
    LDA ($45),Y
    JSR LAA11
    INY
    LDA ($45),Y
    TAX
    INY
    LDA ($45),Y
    TAY
    CLC
    JSR $FFF0
    LDX #$02
LA8F5
    CLC
    LDA $45
    ADC #$09
    STA $45
    BCC LA900
    INC $46
LA900
    LDY #$00
    TXA
    BEQ LA91D
    LDA ($45),Y
    STA ($3B),Y
    INY
    LDA ($45),Y
    STA ($3B),Y
    INY
    LDA ($45),Y
    STA ($3F),Y
    LSR
    LSR
    LSR
    LSR
    INC $3F
    STA ($3F),Y
    BNE LA939
LA91D
    LDA ($3B),Y
    STA ($45),Y
    INY
    LDA ($3B),Y
    STA ($45),Y
    INY
    LDA ($3F),Y
    AND #$0F
    STA $38
    INC $3F
    LDA ($3F),Y
    ASL
    ASL
    ASL
    ASL
    ORA $38
    STA ($45),Y
LA939
    SEC
    TYA
    ADC $45
    STA $45
    BCC LA943
    INC $46
LA943
    INC $3B
    INC $3B
    BNE LA94B
    INC $3C
LA94B
    INC $3F
    BNE LA951
    INC $40
LA951
    INC $41
    BNE LA900
    INC $42
    BNE LA900
    RTS
---------------------------------
LA95A
    !pet "lp:"
---------------------------------
P1_A95D
    LDY #<LA95A
    LDA #>LA95A
    LDX #$03
    JSR LA826
    LDX #$01
    BNE LA96F

;
; hardcopy
;
Hardcopy
    JSR LA821
    LDX #$00
LA96F
    JSR $CAEE
    !by PAGE4
    !word P4_BFF7
    RTS


;
; Setrecorddelay
;
Setrecorddelay
    JSR LA84E
    STA $C84A
    RTS

;
; Setpage
;
Setpage
    JSR LA84E
    STA $C840
    RTS

;
; Inkey
;
Inkey
    LDA #$03
    JSR $CAEE
    !by PAGE3
    !word P3_8400

LA98C
    JSR $CAEE
    !by PAGE3
    !word P3_B42D

    JSR $FFE4
    CMP #$10
    BNE LA99F
    JSR P1_A95D
    JMP LA98C
---------------------------------
LA99F
    LDY #$00
    STA ($47),Y
    LDA $C7D8
    AND #$02
    BNE LA9AE
    STY $D8
    STY $D4
LA9AE
    JSR LA9B1
LA9B1
    TYA
    INY
    STA ($47),Y
    RTS


;
; Free
;
Free
    SEC
    LDA $2F
    SBC $2D
    TAX
    LDA $30
    SBC $2E
    JMP $C9CE


;
; Keywords_in_upper_case
;
Keywords_in_upper_case
    LDA #$80
    !by $2c
;
; Names_in_upper_case
;
Names_in_upper_case
    LDA #$40
    !by $2c
;
; Qoute_mode
;
Qoute_mode
    LDA #$03
    PHA
    JSR LA84E
    BEQ LA9D7
    PLA
    ORA $C7D8
    BNE LA9DD
LA9D7
    PLA
    EOR #$FF
    AND $C7D8
LA9DD
    STA $C7D8
    RTS



;
; Currow
;
Currow
    LDX $D6
    INX
LA9E4
    LDA #$00
    JMP $C9CE



;
; Curcol
;
Curcol
    LDX $D3
    INX
    TXA
    CMP #$29
    BCC LA9E4
    SBC #$28
    TAX
    BCS LA9E4


;
; Textcolors
;
Textcolors
    LDA #$01
    JSR LA857
    BCS LAA00
    STA $C853
LAA00
    LDA #$02
    JSR LA857
    BCS LAA0A
    STA $C854
LAA0A
    LDA #$03
    JSR LA857
    BCS P1_AA14
LAA11
    STA $0286
P1_AA14
    LDA $D011
    AND #$20
    BNE LAA33
LAA1B
    LDA $D012
    CMP #$0F
    BCS LAA1B
    BIT $D011
    BMI LAA1B
    LDA $C853
    STA $D020
    LDA $C854
    STA $D021
LAA33
    RTS


;
; Defkey
;
Defkey
    JSR LA84E
    BEQ LAA7C
    DEX
    TXA
    CMP #$08
    BCC LAA49
    CMP #$0A
    BCC LAA7C
    SBC #$02
    CMP #$10
    BCS LAA7C
LAA49
    PHA
    LDA #$02
    JSR LA834
    CPX #$21
    BCS LAA7C
    STY $45
    STA $46
    PLA
    TAY
    TXA

P1_AA5A
    STA $39
    STA $C855,Y
    JSR P1_A612
    LDY #$00
    STY $C865
LAA67
    CPY $39
    BCS LAA7B
    LDX #$00
    LDA ($45,X)
    JSR $CB8E
    INY
    INC $45
    BNE LAA67
    INC $46
    BNE LAA67
LAA7B
    RTS
---------------------------------
LAA7C
    JMP LA86F
---------------------------------

;
; Showkeys
;
Showkeys
    LDA $31
    PHA
    LDA $32
    PHA
    LDA $33
    PHA
    LDY #$00
LAA8A
    LDA $C660,Y
    STA $C000,Y
    DEY
    BNE LAA8A
    LDA $C7DD
    BEQ LAA9D
    LDX #$FF
    JSR $CDDF
LAA9D
    STY $3B
    LDA $C855,Y
    STA $38
    JSR P1_A612
    LDY #$07
LAAA9
    LDA LAB1A-1,Y
    JSR $CE05
    DEY
    BNE LAAA9
    LDA $3B
    CMP #$08
    BCC LAABD
    LDA #$31
    JSR $CE05
LAABD
    LDA $3B
    AND #$07
    CLC
    ADC #$31
    JSR $CE05
    STY $89
    STY $33
LAACB
    CPY $38
    BCS LAAD8
    JSR $CB66
    STA $C5E8,Y
    INY
    BNE LAACB
LAAD8
    LDX #$E8
    LDA #$C5
    STX $31
    STA $32
    JSR $CAEE
    !by PAGE2
    !word P2_BC2B

    LDA #$2C
    JSR P1_92ED
    LDA #$29
    JSR $CE05
    LDA $C7DD
    BNE LAAF8
    JSR P1_96E6
LAAF8
    JSR $CDF4
    LDY $3B
    INY
    CPY #$10
    BCC LAA9D
    JSR $CDD6
    LDY #$00
LAB07
    LDA $C000,Y
    STA $C660,Y
    DEY
    BNE LAB07
    PLA
    STA $33
    PLA
    STA $32
    PLA
    STA $31
    RTS
---------------------------------
LAB1A
    !pet "(yekfed" ; "defkey("


;
; Bell
;
Bell
    JSR LA84E
    BEQ LAB2C
    JSR $CAEE
    !by PAGE2
    !word P2_8896
LAB2C
    RTS


;
; Serial
;
Serial
    LDA $0258
    CMP #$49
    BNE LAB57
    SEI
    LDA $0314
    PHA
    LDA $0315
    PHA
    CLI
    JSR LA84E
    BNE LAB4A

!if VER_NEW = 1 {
    SEI
}
    JSR $785B
    JMP LAB4D
---------------------------------
LAB4A
    JSR $7867
LAB4D
    SEI
LAB4E
    PLA
    STA $0315
    PLA
    STA $0314
    CLI
LAB57
    RTS

.lAB58
!zone err_english {
!source "code/p1_err_english.asm"
}
.lB568
!zone err_dansk {
!source "code/p1_err_dansk.asm"    
}

.end1
    !fill $c000-.end1,$20

}