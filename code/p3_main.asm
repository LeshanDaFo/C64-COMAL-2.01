; ###############################################################
; #                                                             #
; #  p3_main.asm for                                            #
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

; jumptable high byte
JT1HIGH
.l8009

    !by >.l9103-1,>.l9209-1,>.l9220-1,>.l9251-1,>.l929C-1,>.l92A7-1,>.l92BD-1,>.l9346-1
    !by >.l9343-1,>.l9340-1,>.l93CA-1,>.l93C7-1,>.l93C4-1,>.l9558-1,>.lA7EC-1,>.l9558-1
    !by >.l9558-1,>.l9558-1,>.l9558-1,>.l9558-1,>.lB8DB-1,>.l9558-1,>.l9558-1,>.l9558-1
    !by >.l9558-1,>.l9558-1,>.lA916-1,>.l9558-1,>.l9558-1,>.l9558-1,>.l9558-1,>.l9CAB-1
    !by >.l911F-1,>.l9CD9-1,>.l9CED-1,>.l9CFC-1,>.l9D0B-1,>.l9D1A-1,>.l9D23-1,>.l9D5D-1
    !by >.l9D6C-1,>.l9DA9-1,>.l9DC9-1,>.l9E4D-1,>.l9DD4-1,>.l9E58-1,>.l9DDB-1,>.l9E5F-1
    !by >.l9DE4-1,>.l9E68-1,>.l9DED-1,>.l9E71-1,>.l9DF4-1,>.l9E78-1,>.l9E7F-1,>.lA204-1
    !by >.lA23F-1,>.lA262-1,>.lA2E3-1,>.lA2EC-1,>.lA34C-1,>.lA352-1,>.lA36E-1,>.lA395-1
    !by >.lA403-1,>.lA41A-1,>.l911F-1,>.lA212-1,>.lA20B-1,>.lA468-1,>.lA434-1,>.l911F-1
    !by >.lA449-1,>.lA458-1,>.lA471-1,>.lA47D-1,>.lA499-1,>.lA4A5-1,>.lA4BA-1,>.lA4C6-1
    !by >.lA4D7-1,>.lA4E4-1,>.lA4FD-1,>.lA536-1,>.lA53F-1,>.l911F-1,>.lA57C-1,>.lA588-1
    !by >.lA594-1,>.lA5F7-1,>.lA603-1,>.lA60F-1,>.lA63E-1,>.lA656-1,>.lA0A6-1,>.lA66E-1
    !by >.lA674-1,>.lA69F-1,>.lB7AE-1,>.lA6A5-1,>.lA700-1,>.lA756-1,>.lA75F-1,>.lA7AA-1
    !by >.l911F-1,>.lA7B9-1,>.lA7DA-1,>.l9103-1,>.lAE42-1,>.lADC2-1,>.lADC2-1,>.l9103-1
    !by >.lA7E2-1,>.l911F-1,>.l911F-1,>.l911F-1,>.l911F-1,>.l911F-1,>.l911F-1,>.l911F-1
    !by >.lBEC4-1,>.lBEC4-1,>.lBEC4-1,>.l9310-1,>.l930D-1,>.l930A-1,>.l911F-1,>.l911F-1
    !by >.l976A-1,>.lA929-1,>.lA944-1,>.lA944-1,>.lA952-1,>.lA9AE-1,>.l911F-1,>.lA9C6-1
    !by >.lA9C9-1,>.lAAA4-1,>.lAACF-1,>.lAAD9-1,>.l911F-1,>.lAB0F-1,>.lAB12-1,>.lAB15-1
    !by >.lAB94-1,>.lABB8-1,>.lABB8-1,>.lACD1-1,>.l911F-1,>.l9103-1,>.lADBD-1,>.l911F-1
    !by >.lADBD-1,>.lADD4-1,>.lADDC-1,>.lADC2-1,>.l9103-1,>.lADEC-1,>.lADC2-1,>.l91AA-1
    !by >.l91B0-1,>.l911F-1,>.lAF8C-1,>.lAF8C-1,>.lADC2-1,>.lAFBE-1,>.lAFC6-1,>.lAFF9-1
    !by >.lADC2-1,>.l9103-1,>.l9103-1,>.l911F-1,>.lB000-1,>.l9C61-1,>.l9C72-1,>.lA66E-1
    !by >.lB026-1,>.lB026-1,>.lB026-1,>.lB2C0-1,>.lB2C6-1,>.lB2D3-1,>.lADBD-1,>.lB2F6-1
    !by >.lB308-1,>.lB30B-1,>.lB348-1,>.lB3E1-1,>.lB3FC-1,>.l911F-1,>.lBA89-1,>.l911F-1
    !by >.l911F-1,>.lAF3C-1,>.lAF47-1,>.lA66E-1,>.lB981-1,>.lB97E-1,>.lB97B-1,>.lB2C0-1
    !by >.lB675-1,>.lB67F-1,>.lB692-1,>.lB6D0-1,>.lBAA8-1,>.l9282-1,>.l9234-1,>.l911F-1
    !by >.l911F-1,>.lAE34-1,>.lA24C-1,>.l9240-1,>.lBBC0-1,>.lBACE-1,>.lB7EF-1,>.lB7EF-1
    !by >.lB82F-1,>.l9240-1,>.l911F-1,>.lBB8B-1,>.lAF18-1,>.lBBA5-1,>.lBE73-1,>.lB893-1
    !by >.lB88D-1,>.l911F-1,>.lB8D2-1,>.lA7E2-1,>.lA7E2-1,>.lA7E2-1,>.lA7E7-1,>.lA7E7-1
    !by >.lA7E7-1,>.lAE5F-1,>.lAEA0-1,>.l9103-1,>.lA28C-1,>.lA29C-1,>.lA2A8-1,>.l911F-1
    !by >.lAEDF-1,>.lA244-1,>.lA26F-1,>.lAF18-1,>.lA267-1,>.l911F-1,>.l9F2F-1,>.l88D8-1
    !by >.lA2F9-1,>.lA06C-1,>.lA309-1,>.lA336-1,>.lA082-1,>.lA088-1,>.lA08E-1,>.l9133-1

; end jump table high byte


; jump table low byte
JT1LOW
    !by <.l9103-1,<.l9209-1,<.l9220-1,<.l9251-1,<.l929C-1,<.l92A7-1,<.l92BD-1,<.l9346-1
    !by <.l9343-1,<.l9340-1,<.l93CA-1,<.l93C7-1,<.l93C4-1,<.l9558-1,<.lA7EC-1,<.l9558-1
    !by <.l9558-1,<.l9558-1,<.l9558-1,<.l9558-1,<.lB8DB-1,<.l9558-1,<.l9558-1,<.l9558-1
    !by <.l9558-1,<.l9558-1,<.lA916-1,<.l9558-1,<.l9558-1,<.l9558-1,<.l9558-1,<.l9CAB-1
    !by <.l911F-1,<.l9CD9-1,<.l9CED-1,<.l9CFC-1,<.l9D0B-1,<.l9D1A-1,<.l9D23-1,<.l9D5D-1
    !by <.l9D6C-1,<.l9DA9-1,<.l9DC9-1,<.l9E4D-1,<.l9DD4-1,<.l9E58-1,<.l9DDB-1,<.l9E5F-1
    !by <.l9DE4-1,<.l9E68-1,<.l9DED-1,<.l9E71-1,<.l9DF4-1,<.l9E78-1,<.l9E7F-1,<.lA204-1
    !by <.lA23F-1,<.lA262-1,<.lA2E3-1,<.lA2EC-1,<.lA34C-1,<.lA352-1,<.lA36E-1,<.lA395-1
    !by <.lA403-1,<.lA41A-1,<.l911F-1,<.lA212-1,<.lA20B-1,<.lA468-1,<.lA434-1,<.l911F-1
    !by <.lA449-1,<.lA458-1,<.lA471-1,<.lA47D-1,<.lA499-1,<.lA4A5-1,<.lA4BA-1,<.lA4C6-1
    !by <.lA4D7-1,<.lA4E4-1,<.lA4FD-1,<.lA536-1,<.lA53F-1,<.l911F-1,<.lA57C-1,<.lA588-1
    !by <.lA594-1,<.lA5F7-1,<.lA603-1,<.lA60F-1,<.lA63E-1,<.lA656-1,<.lA0A6-1,<.lA66E-1
    !by <.lA674-1,<.lA69F-1,<.lB7AE-1,<.lA6A5-1,<.lA700-1,<.lA756-1,<.lA75F-1,<.lA7AA-1
    !by <.l911F-1,<.lA7B9-1,<.lA7DA-1,<.l9103-1,<.lAE42-1,<.lADC2-1,<.lADC2-1,<.l9103-1
    !by <.lA7E2-1,<.l911F-1,<.l911F-1,<.l911F-1,<.l911F-1,<.l911F-1,<.l911F-1,<.l911F-1
    !by <.lBEC4-1,<.lBEC4-1,<.lBEC4-1,<.l9310-1,<.l930D-1,<.l930A-1,<.l911F-1,<.l911F-1
    !by <.l976A-1,<.lA929-1,<.lA944-1,<.lA944-1,<.lA952-1,<.lA9AE-1,<.l911F-1,<.lA9C6-1
    !by <.lA9C9-1,<.lAAA4-1,<.lAACF-1,<.lAAD9-1,<.l911F-1,<.lAB0F-1,<.lAB12-1,<.lAB15-1
    !by <.lAB94-1,<.lABB8-1,<.lABB8-1,<.lACD1-1,<.l911F-1,<.l9103-1,<.lADBD-1,<.l911F-1
    !by <.lADBD-1,<.lADD4-1,<.lADDC-1,<.lADC2-1,<.l9103-1,<.lADEC-1,<.lADC2-1,<.l91AA-1
    !by <.l91B0-1,<.l911F-1,<.lAF8C-1,<.lAF8C-1,<.lADC2-1,<.lAFBE-1,<.lAFC6-1,<.lAFF9-1
    !by <.lADC2-1,<.l9103-1,<.l9103-1,<.l911F-1,<.lB000-1,<.l9C61-1,<.l9C72-1,<.lA66E-1
    !by <.lB026-1,<.lB026-1,<.lB026-1,<.lB2C0-1,<.lB2C6-1,<.lB2D3-1,<.lADBD-1,<.lB2F6-1
    !by <.lB308-1,<.lB30B-1,<.lB348-1,<.lB3E1-1,<.lB3FC-1,<.l911F-1,<.lBA89-1,<.l911F-1
    !by <.l911F-1,<.lAF3C-1,<.lAF47-1,<.lA66E-1,<.lB981-1,<.lB97E-1,<.lB97B-1,<.lB2C0-1
    !by <.lB675-1,<.lB67F-1,<.lB692-1,<.lB6D0-1,<.lBAA8-1,<.l9282-1,<.l9234-1,<.l911F-1
    !by <.l911F-1,<.lAE34-1,<.lA24C-1,<.l9240-1,<.lBBC0-1,<.lBACE-1,<.lB7EF-1,<.lB7EF-1
    !by <.lB82F-1,<.l9240-1,<.l911F-1,<.lBB8B-1,<.lAF18-1,<.lBBA5-1,<.lBE73-1,<.lB893-1
    !by <.lB88D-1,<.l911F-1,<.lB8D2-1,<.lA7E2-1,<.lA7E2-1,<.lA7E2-1,<.lA7E7-1,<.lA7E7-1
    !by <.lA7E7-1,<.lAE5F-1,<.lAEA0-1,<.l9103-1,<.lA28C-1,<.lA29C-1,<.lA2A8-1,<.l911F-1
    !by <.lAEDF-1,<.lA244-1,<.lA26F-1,<.lAF18-1,<.lA267-1,<.l911F-1,<.l9F2F-1,<.l88D8-1
    !by <.lA2F9-1,<.lA06C-1,<.lA309-1,<.lA336-1,<.lA082-1,<.lA088-1,<.lA08E-1,<.l9133-1


; end jump table low byte

.l8209

    !by >.lBBB3-1,>.lBEC4-1,>.lBCE4-1,>.lBEB2-1,>.lBBB9-1,>.lBEC4-1,>.lBBC9-1,>.lBBD1-1
    !by >.lBEC4-1,>.lBC79-1,>.lBEC4-1,>.lBBE6-1,>.lBEC4-1,>.lBC4C-1,>.lBEC4-1,>.lBEC4-1
    !by >.lBEC4-1,>.lBEC4-1,>.lBEC4-1,>.lA230-1,>.lBE55-1,>.lAF4E-1,>.lA0B7-1,>.l911F-1
    !by >.lB714-1,>.lB71D-1,>.lB6DF-1,>.lBC21-1,>.lB2DD-1,>.lBDBE-1,>.lBB73-1,>.l911F-1
    !by >.lBDE3-1,>.l911F-1,>.lB6D6-1,>.lB6D9-1,>.lB6DC-1,>.lB6E7-1,>.lBE43-1,>.lBE4C-1
    !by >.lBE17-1,>.lB96A-1,>.lB7FB-1,>.lB975-1,>.lB83E-1,>.lBD5F-1,>.lADE0-1,>.lAE50-1
    !by >.lB84B-1,>.lA0EC-1,>.lBEC3-1,>.lB402-1,>.lBD09-1,>.lBDD3-1,>.lBD05-1,>.lAE4D-1
    !by >.lBD54-1,>.lA509-1,>.lA52C-1,>.lA14C-1,>.lB73E-1,>.lBE35-1,>.lA124-1


.l8248
    !by <.lBBB3-1,<.lBEC4-1,<.lBCE4-1,<.lBEB2-1,<.lBBB9-1,<.lBEC4-1,<.lBBC9-1,<.lBBD1-1
    !by <.lBEC4-1,<.lBC79-1,<.lBEC4-1,<.lBBE6-1,<.lBEC4-1,<.lBC4C-1,<.lBEC4-1,<.lBEC4-1
    !by <.lBEC4-1,<.lBEC4-1,<.lBEC4-1,<.lA230-1,<.lBE55-1,<.lAF4E-1,<.lA0B7-1,<.l911F-1
    !by <.lB714-1,<.lB71D-1,<.lB6DF-1,<.lBC21-1,<.lB2DD-1,<.lBDBE-1,<.lBB73-1,<.l911F-1
    !by <.lBDE3-1,<.l911F-1,<.lB6D6-1,<.lB6D9-1,<.lB6DC-1,<.lB6E7-1,<.lBE43-1,<.lBE4C-1
    !by <.lBE17-1,<.lB96A-1,<.lB7FB-1,<.lB975-1,<.lB83E-1,<.lBD5F-1,<.lADE0-1,<.lAE50-1
    !by <.lB84B-1,<.lA0EC-1,<.lBEC3-1,<.lB402-1,<.lBD09-1,<.lBDD3-1,<.lBD05-1,<.lAE4D-1
    !by <.lBD54-1,<.lA509-1,<.lA52C-1,<.lA14C-1,<.lB73E-1,<.lBE35-1,<.lA124-1


P3_8287
    LDX #$00
P3_8289
-   CPX $C7EF
    BCS +
    JSR .l82A2
    INX
    BNE -
+   RTS
---------------------------------
P3_8295
    LDX $C7EF
-   DEX
    BMI +
    JSR .l82A2
    JMP -
---------------------------------
+   RTS
---------------------------------
.l82A2  STA $38
    PHA
    TXA
    PHA
    LDA $C7F0,X
    STA $07
    LDA $C7FA,X
    STA $08
    LDA $C804,X
    STA $09
    LDY #$03
    JSR $CBBC
    PLA
    TAX
    PLA
    RTS
---------------------------------
.l82BF  LDA $BA
    STA $0263
    LDA $B8
    PHA
    LDA $B9
    PHA
    JSR $CDD6
    LDX #$00
    STX $90
    JSR $FFC9
    BCS ++
    LDA $B7
    BEQ +
    LDY #$00
-   LDA ($BB),Y
    JSR $FFD2
    INY
    CPY $B7
    BNE -
+   JSR $FFCC
    LDA #$00
    STA $90
++  PLA
    STA $B9
    PLA
    STA $B8
    RTS
---------------------------------
P3_82F4
    LDX $49
    LDA $4A
    TAY
    BEQ ++
    EOR #$FF
    TAY
    INY
    CLC
    LDA $45
    ADC $4A
    STA $45
    BCS +
    DEC $46
+   CLC
    LDA $47
    ADC $4A
    STA $47
    BCS .l8315
    DEC $48
.l8315  LDA ($45),Y
    STA ($47),Y
    INY
    BNE .l8315
    INC $46
    INC $48
++  DEX
    BPL .l8315
    RTS
---------------------------------
P3_8324
    CLC
    LDA $46
    ADC $49
    STA $46
    LDA $48
    ADC $49
    STA $48
    LDX $49
    LDY $4A
    BEQ +
-   DEY
    LDA ($45),Y
    STA ($47),Y
    CPY #$00
    BNE -
+   DEC $46
    DEC $48
    DEX
    BPL -
    RTS
---------------------------------
.l8348  LDY #$00
-   LDA ($7C),Y
    BEQ +
    JSR $CE05
    INY
    BNE -
+   RTS
---------------------------------
.l8355  CPY $C7D6
    BCS +
    CPX #$19
    BCS +
    JMP $FFF0
---------------------------------
+   LDX #$05
    JMP P3_BF32
---------------------------------
P3_8366
    LDX $18
    LDA $19
--  STX $45
    STA $46
    STX $49
    STA $4A
    LDY #$00
    LDA ($45),Y
    BEQ +++
    INY
    LDA ($45),Y
    BEQ ++
    PHA
-   INY
    LDA ($49),Y
    TAX
    INY
    LDA ($49),Y
    STX $47
    STA $48
    CPX $1A
    SBC $1B
    BCC +
    LDA $48
    CPX $2D
    SBC $2E
    BCS +
    TXA
    ADC $27
    DEY
    STA ($49),Y
    LDA $48
    ADC $26
    INY
    STA ($49),Y
    PLA
    AND #$40
    BEQ ++
    LDA $47
    STA $49
    LDA $48
    STA $4A
    LDA #$00
    PHA
    TAY
    BEQ -
+   PLA
++  LDY #$00
    LDA ($45),Y
    CLC
    ADC $45
    TAX
    LDA $46
    ADC #$00
    BNE --
+++ LDA $88
    AND #$02
    BNE +
    LDX #$54
    LDA #$02
    STX $45
    STA $46
    LDA $0254
    LDX $0255
    BEQ +
-   PHA
    CLC
    ADC $27
    LDY #$00
    STA ($45),Y
    INY
    TXA
    ADC $26
    STA ($45),Y
    PLA
    STA $45
    STX $46
    LDA ($45),Y
    BEQ +
    TAX
    DEY
    LDA ($45),Y
    JMP -
---------------------------------
+   RTS
---------------------------------
.l83FB  LDA #$01
    !by $2c
.l83FE  LDA #$05
P3_8400
    LDX $2D
    STX $47
    CLC
    ADC $2D
    STA $2D
    LDA $2E
    STA $48
    ADC #$00
    STA $2E
    CMP $30
    BCS +
    RTS
---------------------------------
+   BNE .l841F
    LDA $2D
    CMP $2F
    BCS .l841F
    RTS
---------------------------------
.l841F  JMP .l8EAC
---------------------------------
.l8422  LDY $10
    LDX $2D
    STX $10
    LDX $11
    CLC
    ADC $2D
    STA $2D
    LDA $2E
    STA $11
    ADC #$00
    STA $2E
    CMP $30
    BCS +
-   TYA
    LDY #$00
    STA ($10),Y
    INY
    TXA
    STA ($10),Y
    INY
    RTS
---------------------------------
+   BNE .l841F
    LDA $2D
    CMP $2F
    BCC -
    BCS .l841F
.l8450  LDA $10
    STA $2D
    LDA $11
    STA $2E
    LDY #$00
    LDA ($2D),Y
    STA $10
    INY
    LDA ($2D),Y
    STA $11
    RTS
---------------------------------
.l8464  LDY #$00
    LDA ($10),Y
    TAX
    INY
    LDA ($10),Y
    STX $10
    STA $11
    RTS
---------------------------------
.l8471  STA $45
    LDA $2E
    STA $46
    SEC
    LDA $2D
    SBC $45
    STA $45
    BCS +
    DEC $46
+   RTS
---------------------------------
P3_8483
    EOR #$FF
    SEC
    ADC $2D
    STA $2D
    BCS +
    DEC $2E
+   RTS
---------------------------------
.l848F  SEC
    LDA $2D
    SBC #$05
    STA $2D
    BCS +
    DEC $2E
+   RTS
---------------------------------
.l849B  JSR .l85CE
    LDY #$00
    LDA $64
    STA ($2D),Y
    INY
    LDA $65
    STA ($2D),Y
    SEC
    TYA
    ADC $2D
    STA $2D
    BCC +
    INC $2E
+   RTS
---------------------------------
P3_84B4
    JSR .l83FE
.l84B7  LDX $47
    LDY $48
    JMP $CAA0
---------------------------------
P3_84BE
    JSR .l848F
    LDY $2E
    JMP $CBE7
---------------------------------
P3_84C6
    JSR .l848F
    LDY $2E
    JMP $CC0C
---------------------------------
.l84CE  LDA $2D
    SEC
    SBC #$05
    STA $47
    LDA $2E
    SBC #$00
    STA $48
    LDY #$04
    LDA ($47),Y
    STA $6D
    DEY
    LDA ($47),Y
    STA $6C
    DEY
    LDA ($47),Y
    STA $6B
    DEY
    LDA ($47),Y
    STA $6E
    EOR $66
    STA $6F
    LDA $6E
    ORA #$80
    STA $6A
    DEY
    LDA ($47),Y
    STA $69
    LDA $61
    RTS
---------------------------------
.l8502  JSR .l848F
    LDY #$00
    LDA ($2D),Y
    RTS
---------------------------------
.l850A  DEC $2E
    LDY #$FB
    LDA ($2D),Y
    INC $2E
    TAY
    RTS
---------------------------------
P3_8514
    STX $49
    STA $4A
.l8518  JSR .l83FE
.l851B  LDY #$00
    LDA ($49),Y
    STA ($47),Y
    INY
    LDA ($49),Y
    STA ($47),Y
    INY
    LDA ($49),Y
    STA ($47),Y
    INY
    LDA ($49),Y
    STA ($47),Y
    INY
    LDA ($49),Y
    STA ($47),Y
    RTS
---------------------------------
P3_8536
    STX $64
    STA $65
    TXA
    BPL .l854B
    LDA #$05
    PHP
    JSR P3_8400
    LDX #$90
    BNE +
P3_8547
    STA $64
    STX $65
.l854B  JSR .l83FE
    LDX #$90
    LDA $64
    BEQ ++
    PHP
    BPL .l8566
    SEC
    LDA #$00
    SBC $65
    STA $65
    LDA #$00
    SBC $64
    STA $64
    BMI +
.l8566  DEX
    ASL $65
    ROL
    BPL .l8566
    STA $64
+   LDY #$00
    TXA
    STA ($47),Y
    INY
    LDA $64
    PLP
    BMI +
    AND #$7F
+   STA ($47),Y
    INY
    LDA $65
    STA ($47),Y
    INY
    LDA #$00
    STA ($47),Y
    INY
    STA ($47),Y
    RTS
---------------------------------
.l858B  STA $65
    JSR .l83FE
++  LDX #$88
    LDA $65
    BNE +
    TAY
    STA ($47),Y
    INY
    STA ($47),Y
    RTS
---------------------------------
+   BMI +
    CMP #$08
    BCS .l85A9
    ASL
    ASL
    ASL
    ASL
    LDX #$84
.l85A9  DEX
    ASL
    BPL .l85A9
+   AND #$7F
    LDY #$01
    STA ($47),Y
    DEY
    TXA
    STA ($47),Y
    TYA
    LDY #$02
    STA ($47),Y
    INY
    STA ($47),Y
    INY
    STA ($47),Y
    INY
    STA ($47),Y
    RTS
---------------------------------
P3_85C6
    LDX $63
    LDA $61
    LDY #$00
    BEQ ++
.l85CE  SEC
    LDA $2D
    SBC #$05
    STA $2D
    BCS +
    DEC $2E
+   LDY $2E
.l85DB  STA $22
    STY $23
    LDY #$02
    LDA ($22),Y
    TAX
    DEY
    LDA ($22),Y
    STA $66
    ORA #$80
    STA $62
    DEY
    LDA ($22),Y
++  CMP #$81
    BCC ++
    SBC #$89
    BCC ++++
    SBC #$07
    BCS +++
    TAY
    TXA
-   LSR $62
    ROR
    INY
    BNE -
--  BIT $66
    BMI +
    ADC #$00
    STA $65
    LDA $62
    ADC #$00
    BVS .l8628
    STA $64
    RTS
---------------------------------
    STY $62
+   STA $65
    ROR
    EOR #$80
    ROL
    TYA
    SBC $65
    STA $65
    TYA
    SBC $62
    STA $64
    RTS
---------------------------------
.l8628  LDX #$02
    JMP P3_BF32
---------------------------------
++  ASL
    TYA
    STY $62
    BEQ --
+++ BNE .l8628
    BIT $66
    BPL .l8628
    TXA
    BNE .l8628
    LDA $62
    STA $64
    ASL
    BNE .l8628
    STA $65
    RTS
---------------------------------
++++TAY
    INY
    BEQ .l8654
    LDA $62
-   LSR
    INY
    BNE -
    STY $62
    BEQ --
.l8654    TXA
    ASL
    LDA $62
    STY $62
    JMP --
---------------------------------
P3_865D
    LDY $33
    LDA ($31),Y
    CLC
    ADC $18
    STA $45
    INY
    LDA ($31),Y
    INY
    STY $33

P3_866C
    ADC $19
    STA $46
    LDY #$01
    LDA $35
    BNE +
    LDA ($45),Y
    RTS
---------------------------------
+   LDA ($45),Y
    BEQ .l8697
    INY
    LDA ($45),Y
    TAX
    INY
    LDA ($45),Y
    TAY
    CPX $34
    SBC $35
    BCS .l8697
    CPX $36
    TYA
    SBC $37
    BCC .l8697
    LDY #$01
    LDA ($45),Y
    RTS
---------------------------------
.l8697  LDA #$07
    JSR P3_8E96
.l869C  LDY #$07
    LDA $0F
    STA ($2F),Y
    DEY
    LDA $0E
    STA ($2F),Y
    DEY
    LDA $46
    STA ($2F),Y
    DEY
    LDA $45
    STA ($2F),Y
    DEY
    LDA ($45),Y
    STA ($2F),Y
    DEY
    LDA ($45),Y
    STA ($2F),Y
    DEY
    LDA ($45),Y
    STA ($2F),Y
    LDA $2F
    STA $0E
    LDA $30
    STA $0F
    LDA #$00
    STA ($45),Y
    RTS
---------------------------------
.l86CD  STX $38
    JSR P3_865D
    STA $39
    BEQ ++
    BMI .l8709
    AND #$0F
    CMP #$03
    BCS +++
    CMP $38
    BNE .l8709
    INY
    LDA ($45),Y
    STA $49
    INY
    LDA ($45),Y
    STA $4A
    BIT $39
    BVC +
    LDY #$00
    LDA ($49),Y
    TAX
    INY
    LDA ($49),Y
    STA $4A
    STX $49
+   RTS
---------------------------------
++  LDA $38
    CMP #$02
    BNE +
    LDA #$C6
    !by $2C
+   LDA #$F7
    !by $2C
.l8709  LDA #$F8
    !by $2C
-   LDA #$F9
    LDX $38
    JMP .l8ADE
---------------------------------
+++ SBC #$05
    BCC .l8709
    CMP $38
    BNE -
    ORA #$04
.l871D  STA $38
    LDX $C7BC
    TXS
.l8723  JSR .l9C44
    LDY #$00
    LDA ($3D),Y
    STA $07
    INY
    LDA ($3D),Y
    STA $08
    INY
    LDA ($3D),Y
    BEQ +
    STA $09
    LDY #$06
    JSR $CB66
    BNE .l874B
    JMP .l88A9
---------------------------------
+   LDA $88
    AND #$02
    BEQ +
    LDX #$3B
    !by $2C
.l874B  LDX #$45
    JMP P3_BF44
---------------------------------
+   LDY #$0A
    LDA ($07),Y
    BNE .l874B
.l8756  INY
    LDA ($07),Y
    STA $39
    LDA #$0A
    JSR .l8422
    LDA #$0B
    STA ($10),Y
    LDY #$04
    LDA $31
    STA ($10),Y
    INY
    LDA $32
    STA ($10),Y
    INY
    LDA $33
    STA ($10),Y
    INY
    LDA #$00
    STA ($10),Y
    LDY #$03
    LDA $38
    LDX $39
    CPX #$7F
    BCC +
    ORA #$10
+   STA ($10),Y
    BCC ++
    LDA #$0C
    STA $15
    CPX #$7F
    BEQ .l8794
    JMP .l9F0F
---------------------------------
.l8794  LDA #$0C
    LDY #$02
    STA ($10),Y
    JSR .l8EB1
.l879D  CLC
    LDY #$02
    LDA ($07),Y
    ADC $07
    STA $31
    LDA $08
    ADC #$00
    STA $32
    JMP .l9114
---------------------------------
++  LDY #$02
    LDA #$0C
    STA ($10),Y
    LDY #$0D
.l87B7  LDA ($07),Y
    BNE +
    LDY #$09
    STA ($10),Y
    BNE .l879D
+   STA $3C
    DEY
    LDA ($07),Y
    STA $3B
    LDY #$08
    LDA $2D
    STA ($10),Y
    INY
    LDA $2E
    STA ($10),Y
.l87D3  LDY #$03
    LDA ($3B),Y
    CMP #$9C
    BEQ +
    JMP .l8885
---------------------------------
+   LDY #$06
    STY $38
    LDA #$08
    JSR P3_8400
    CLC
    LDY #$06
    LDA $3B
    ADC #$08
    STA ($47),Y
    INY
    LDA $3C
    ADC #$00
    STA ($47),Y
    LDA #$13
    PHA
.l87FA  LDY #$04
    LDA ($3B),Y
    CLC
    ADC $18
    STA $49
    INY
    LDA ($3B),Y
    ADC $19
    STA $4A
    LDY #$03
    LDA ($49),Y
    PHA
    DEY
    STA ($47),Y
    LDA ($49),Y
    TAX
    DEY
    STA ($47),Y
    LDA ($49),Y
    DEY
    STA ($47),Y
    TAY
    BEQ +
    PLA
    TAY
    CPX $10
    SBC $11
    BCC ++
    TYA
    CPX $2D
    SBC $2E
    BCS ++
-   LDX $49
    LDA $4A
    STX $45
    STA $46
    LDA #$C4
    JMP P3_8AD9
---------------------------------
+   PLA
++  LDX $4A
    LDA $49
    CPX $46
    BNE +
    CMP $45
    BEQ -
+   LDY #$03
    STA ($47),Y
    INY
    TXA
    STA ($47),Y
    INY
    SEC
    LDA $2D
    SBC $47
    STA ($47),Y
    LDY #$01
    PLA
    STA ($49),Y
    INY
    LDA $47
    CLC
    ADC #$06
    STA ($49),Y
    INY
    LDA $48
    ADC #$00
    STA ($49),Y
    LDY $38
    LDA ($3B),Y
    TAX
    INY
    LDA ($3B),Y
    STX $3B
    STA $3C
    BEQ +
    JMP .l87D3
---------------------------------
+   LDY #$05
    STA ($47),Y
    JMP .l879D
---------------------------------
.l8885  CMP #$70
    BEQ +
    SBC #$CE
    !by $2C
+   LDA #$14
    PHA
    LDY #$08
    STY $38
    LDA #$09
    JSR P3_8400
    LDA #$00
    STA ($47),Y
    DEY
    LDA $3C
    STA ($47),Y
    DEY
    LDA $3B
    STA ($47),Y
    JMP .l87FA
---------------------------------
.l88A9  LDA $4B
    BEQ +
    JSR $CDD6
+   LDY #$04
    LDA $38
    PHA
    JSR $CBBC
    PLA
    TAX
    AND #$20
    BNE +++
    CPX #$08
    BCC ++
    CPX #$0E
    BNE +
    LDA #$06
    !by $2C
+   LDA #$04
    LDY #$00
    STA ($2D),Y
    INC $2D
    BNE ++
    INC $2E
++  JMP .l911F
---------------------------------
.l88D8
+++ SEC
    LDA $2D
    SBC #$02
    STA $45
    LDA $2E
    SBC #$00
    STA $46
    LDY #$01
    LDA $45
    SBC ($45),Y
    TAX
    DEY
    LDA $46
    SBC ($45),Y
    PHA
    TXA
    PHA
    JMP .lB937
---------------------------------
.l88F7  STX $38
    JSR P3_865D
    STA $39
    AND #$9F
    CMP $38
    BNE ++
    INY
    LDA ($45),Y
    STA $47
    INY
    LDA ($45),Y
    STA $48
    BIT $39
    BVC +
    LDY #$01
    LDA ($47),Y
    TAX
    DEY
    LDA ($47),Y
    STX $48
    STA $47
+   RTS
---------------------------------
++  LDA $39
    BNE +++
.l8923  LDX $38
    CPX #$12
    BNE +
    LDA #$D3
    BNE ++
+   LDA #$FA
    CPX #$10
    BEQ ++
    LDA #$FD
++  ADC $2F
    STA $2F
    BCS +
    DEC $30
+   LDA $2D
    CMP $2F
    LDA $2E
    SBC $30
    BCS ++
    TXA
    STA ($45),Y
    INY
    LDA $2F
    ADC #$01
    STA ($45),Y
    STA $47
    INY
    LDA $30
    ADC #$00
    STA ($45),Y
    STA $48
    CPX #$12
    BEQ +
    RTS
---------------------------------
+   LDY #$00
    TYA
    STA ($47),Y
    INY
    LDA #$28
    STA ($47),Y
    RTS
---------------------------------
+++ AND #$0F
    CMP #$03
    BCC +
    LDA #$FB
    !by $2C
+   LDA #$F8
    LDX $38
    JMP .l8ADE
---------------------------------
++  JMP .l8EAC
---------------------------------
.l897F  CMP #$02
    BNE ++
    LDA #$03
    JSR P3_8483
    LDY #$01
    LDA ($2D),Y
    STA $48
    DEY
    LDA ($2D),Y
    DEX
    BEQ +
    LDY $48
    JMP $CBE7
---------------------------------
+   STA $47
    LDY #$00
    LDA ($47),Y
    TAX
    INY
    LDA ($47),Y
    TAY
    TXA
    JMP $C992
---------------------------------
++  CMP #$04
    BNE +
    LDA #$01
    JSR P3_8483
    JMP P3_84BE
---------------------------------
+   LDX #$3E
    JMP P3_BF44
---------------------------------
.l89B9  CMP #$02
    BNE +
    LDA #$03
    JSR P3_8483
    LDY #$00
    LDA ($2D),Y
    STA $43
    CLC
    ADC #$04
    STA $45
    INY
    LDA ($2D),Y
    STA $44
    ADC #$00
    STA $46
    INY
    LDA ($43),Y
    STA $49
    INY
    LDA ($43),Y
    STA $4A
    RTS
---------------------------------
-   LDX #$04
    JMP P3_BF32
---------------------------------
+   CMP #$0C
    BEQ +
    LDX #$3E
    JMP P3_BF44
---------------------------------
+   LDA #$0A
    JSR P3_8483
.l89F4  LDY #$03
    LDA ($2D),Y
    STA $43
    CLC
    ADC #$03
    TAX
    INY
    LDA ($2D),Y
    STA $44
    ADC #$00
    PHA
    LDY #$06
    TXA
    ADC ($2D),Y
    STA $45
    DEY
    PLA
    ADC ($2D),Y
    STA $46
.l8A13  LDY #$06
    LDA ($2D),Y
    CLC
    LDY #$08
    ADC ($2D),Y
    STA $4A
    DEY
    LDA ($2D),Y
    LDY #$05
    ADC ($2D),Y
    STA $49
    LDA $4A
    BNE +
    DEC $49
+   DEC $4A
    LDY #$03
    LDA ($43),Y
    CMP $4A
    DEY
    LDA ($43),Y
    SBC $49
    BCC -
    LDY #$07
    LDA ($2D),Y
    STA $49
    INY
    LDA ($2D),Y
    STA $4A
    RTS
---------------------------------
.l8A48  LDA $49
    JSR $CE05
    JSR .l8D87
    LDA $4A
    JSR $CE05
    JSR .l8D87
.l8A58  LDA #$00
    !by $2C
.l8A5B  LDA #$01
    STA $22
-   LDA $49
    ORA $4A
    BEQ ++
    LDY #$00
    LDA ($45),Y
    JSR $CE05
    LDA $22
    BNE +
    JSR .l8D87
+   LDA $4A
    BNE +
    DEC $49
+   DEC $4A
    INC $45
    BNE -
    INC $46
    BNE -
++  RTS
---------------------------------
P3_8A84
    LDY #$02
    LDA ($47),Y
    STA $3A
    INY
    STY $39
    LDX #$00
    STX $41
    INX
    STX $42
-   LDY $39
    INY
    INY
    INY
    INY
    STY $39
    DEY
    LDA ($47),Y
    TAX
    DEY
    LDA ($47),Y
    STA $29
    DEY
    TXA
    SEC
    SBC ($47),Y
    STA $28
    DEY
    LDA $29
    SBC ($47),Y
    STA $29
    INC $28
    BNE +
    INC $29
+   LDA $41
    STA $27
    LDA $42
    STA $26
    JSR .l90BD
    STY $41
    STX $42
    DEC $3A
    BNE -
    RTS
---------------------------------
.l8ACD  LDA #$00
    LDX $43
    BNE +
    JSR $CE4E
    STX $43
+   RTS
---------------------------------
P3_8AD9
    LDX #$00
    !by $2C
    LDX #$02
.l8ADE
    JSR $CB5F
    !by PAGE2
    !word P2_90EE

.l8AE4  JSR P3_8CBA       
    LDA #$03
    JSR P3_8483
    LDY #$02
    LDA ($2D),Y
    CMP #$02
    BNE ++
    DEY
    LDA ($2D),Y
    STA $48
    DEY
    LDA ($2D),Y
    STA $47
    INY
.l8AFF  LDA ($47),Y
    CMP $4A
    DEY
    LDA ($47),Y
.l8B06  SBC $49
    BCS +
    LDA ($47),Y
    STA $49
    INY
    LDA ($47),Y
    STA $4A
+   LDY #$02
    LDA $49
    STA ($47),Y
    INY
    LDA $4A
    STA ($47),Y
    CLC
    LDA $47
    ADC #$04
    STA $47
    BCC +
    INC $48
+   JMP P3_82F4
---------------------------------
++  CMP #$0C
    BEQ +
    LDX #$38
    JMP P3_BF44
---------------------------------
+   LDA #$07
    JSR P3_8483
    INY
    LDA ($2D),Y
    STA $3B
    INY
    LDA ($2D),Y
    STA $3C
    INY
    LDA ($2D),Y
    STA $41
    INY
    LDA ($2D),Y
    STA $42
    INY
    LDA ($2D),Y
    STA $43
    INY
    LDA ($2D),Y
    STA $44
    CLC
    ADC $42
    STA $3E
    LDA $41
    ADC $43
    STA $3D
    BCC +
-   LDX #$04
    JMP P3_BF32
---------------------------------
+   LDA $3E
    BNE +
    DEC $3D
+   DEC $3E
    LDY #$01
    LDA ($3B),Y
    CMP $3E
    DEY
    LDA ($3B),Y
    SBC $3D
    BCC -
    LDY #$03
    CLC
    LDA ($3B),Y
    ADC #$01
    TAX
    DEY
    LDA ($3B),Y
    ADC #$00
    CPX $42
    SBC $41
    BCC -
    LDY #$03
    LDA ($3B),Y
    CMP $3E
    DEY
    LDA ($3B),Y
    SBC $3D
    BCS +
    LDA $3D
    STA ($3B),Y
    INY
    LDA $3E
    STA ($3B),Y
+   LDA $44
    CMP $4A
    LDA $43
    SBC $49
    BCS +
    LDA $43
    STA $49
    LDA $44
    STA $4A
+   CLC
    LDA $3B
    ADC $42
    TAX
    LDA $3C
    ADC $41
    TAY
    TXA
    ADC #$03
    STA $47
    STA $3F
    TYA
    ADC #$00
    STA $48
    STA $40
    JSR P3_82F4
    SEC
    LDA $4A
    SBC $44
    STA $44
    LDA $49
    SBC $43
    BCS ++
    STA $43
    LDA $3F
    ADC $4A
    STA $3F
    LDA $40
    ADC $49
    STA $40
    LDY #$00
    LDA #$20
-   STA ($3F),Y
    INC $3F
    BNE +
    INC $40
+   INC $44
    BNE -
    INC $43
    BNE -
++  RTS
---------------------------------
P3_8C06
    LDX #<$C760     ; $C760
    LDY #>$C760
    STX $BB
    STY $BC
    LDX $21
    STX $B7
    JMP $CA12
---------------------------------
.l8C15  SEC
    LDA $2D
    SBC #$05
    STA $2D
    BCS +
    DEC $2E
+   LDY #$02
    LDA ($2D),Y
    TAX
    DEY
    LDA ($2D),Y
    BMI .l8C92
    ORA #$80
    STA $64
    DEY
    LDA ($2D),Y
    CMP #$88
    BCC ++
    SBC #$90
    BCS +
    TAY
    TXA
-   LSR $64
    ROR
    INY
    BNE -
    ADC #$00
    STA $65
    BCC .l8C49
    INC $64
.l8C49  RTS
---------------------------------
++  LDX $64
    STY $64
    JSR .l8C7C
    STA $65
    RTS
---------------------------------
+   BNE .l8C92
    LDY #$03
    LDA ($2D),Y
    ASL
    TXA
    ADC #$00
    STA $65
    BCC .l8C49
    INC $64
    RTS
---------------------------------
.l8C65  SEC
    LDA $2D
    SBC #$05
    STA $2D
    BCS +
    DEC $2E
+   LDY #$01
    LDA ($2D),Y
    BMI .l8C92
    ORA #$80
    TAX
    DEY
    LDA ($2D),Y
.l8C7C  CMP #$81
    BCC +
    SBC #$88
    BCS ++
    TAY
    TXA
-   LSR
    INY
    BNE -
    ADC #$00
    RTS
---------------------------------
+   ASL
    TYA
    ADC #$00
    RTS
---------------------------------
.l8C92  LDX #$05
    JMP P3_BF32
---------------------------------
++  BNE .l8C92
    LDY #$02
    LDA ($2D),Y
    ASL
    TXA
    ADC #$00
    BCS .l8C92
    RTS
---------------------------------
.l8CA4  JSR .l8C65
    BEQ .l8C92
    CMP #$FD
    BCS .l8C92
    STA $B8
    RTS
---------------------------------
.l8CB0  JSR .l8C65
    BEQ .l8C92
    CMP #$FF
    BEQ .l8C92
    RTS
---------------------------------
P3_8CBA
    DEC $2E
    LDY #$FE
    LDA ($2D),Y
    STA $49
    INY
    LDA ($2D),Y
    STA $4A
    SEC
    LDA $2D
    SBC $4A
    TAX
    LDA $2E
    SBC $49
    TAY
    TXA
    ADC #$FD
    STA $2D
    STA $45
    TYA
    ADC #$00
    STA $2E
    STA $46
    RTS
---------------------------------
.l8CE1  LDY #$FF
-   INY
    LDA $0200,Y
    STA $C760,Y
    CPY $0200
    BCC -

    JSR $CAEE
    !by PAGE2
    !word P2_880C

    LDY #$FF
-   INY
    LDA $C760,Y
    STA $0200,Y
    CPY $0200
    BCC -
    RTS
---------------------------------
P3_8D04
    JSR .l8CE1
    JMP $CDF4
---------------------------------
.l8D0A  LDY #$07
    LDA ($10),Y
    BNE +
    LDA $C7DD
+   RTS
---------------------------------
.l8D14  LDY #$08
    LDA ($10),Y
    STA $B8
    JSR $CE8A
    BNE +
    LDY #$03
    RTS
---------------------------------
+   LDX #$CB
    !by $2C
--  LDX #$C9
    JMP P3_BF2F
---------------------------------
P3_8D2A
    LDY #$07
    LDA ($10),Y
    BNE .l8D3E
P3_8D30
    LDA $C7DD
    BNE +
-   RTS
---------------------------------
+   LDX $4B
    BNE -
    DEX
    JMP $CDDF
---------------------------------
.l8D3E  JSR .l8D14
    LDA $4B
    BNE -
    LDA ($10),Y
    BEQ +
    JSR .l8DB5
+   LDX $B8
    JMP $CDDF
---------------------------------
.l8D51  JSR .l8D14
    LDA ($10),Y
    BNE +
    LDA $C822,X
    AND #$40
    BEQ ++
    BNE --
+   LDA $4B
    BNE -
    JSR .l8DB8
++  LDA $4B
    BNE -
    LDX $B8
    JMP $CDC1
---------------------------------
.l8D71  LDY #$07
    LDA ($10),Y
    BNE ++
    LDA $C7DD
    BNE +
    LDA $D3
    RTS
---------------------------------
+   LDA $C7C6
    RTS
---------------------------------
++  DEY
    LDA ($10),Y
    RTS
---------------------------------
.l8D87  LDY #$07
    LDA ($10),Y
    BNE +
    LDA $C7DD
    BNE ++
    RTS
---------------------------------
+   DEY
    LDA ($10),Y
    CLC
    ADC #$01
    STA ($10),Y
    RTS
---------------------------------
++  INC $C7C6
    RTS
---------------------------------
.l8DA0  TAX
    LDY #$07
    LDA ($10),Y
    BNE +
    LDA $C7DD
    BEQ ++
    STX $C7C6
    RTS
---------------------------------
+   TXA
    DEY
    STA ($10),Y
++  RTS
---------------------------------
.l8DB5  JSR .l8E00
.l8DB8  LDY #$04
    LDA ($10),Y
    STA $02AA
    INY
    LDA ($10),Y
    STA $02A9
    INY
    LDA ($10),Y
    CLC
    ADC #$01
    STA $02AB
    LDA #$50
    STA $02A7
    LDA $C80E,X
    AND #$04
    BEQ ++
    LDA #$00
    STA $C822,X
    JSR $CE95
    LDA $B9
    STA $02A8
    LDA #$05
    LDX #$A7
    LDY #$02
    JSR $FFBD
    JSR .l82BF
    LDA $90
    BNE +
    RTS
---------------------------------
+   JMP $CE2E
---------------------------------
++  LDX #$CF
    JMP P3_BF2F
---------------------------------
.l8E00  LDA $C84A
    BEQ +
.l8E05  SEC
--  LDY #$C8
-   DEY
    BNE -
    SBC #$01
    BNE --
+   RTS
---------------------------------
.l8E10  LDA $4B
    BEQ +
    JSR $CDD6
+   LDA #$09
    JSR .l8422
    LDA #$11
    STA ($10),Y
    INY
    LDA #$00
    STA ($10),Y
    LDY #$06
    STA ($10),Y
    INY
    STA ($10),Y
    RTS
---------------------------------
.l8E2D  LDA $4B
    BEQ +
    JSR $CDD6
+   JSR .l8450
    LDY #$07
    LDA ($2D),Y
    BEQ +
    INY
    LDA ($2D),Y
    JSR $CE8A
    BNE +
    LDY #$04
    LDA ($2D),Y
    STA $C836,X
    INY
    LDA ($2D),Y
    STA $C82C,X
    INY
    LDA ($2D),Y
    STA $C818,X
+   RTS
---------------------------------
.l8E59  LDA ($3B),Y
    CLC
    ADC $18
    STA $45
    INY
    LDA ($3B),Y
    ADC $19
    STA $46
    LDY #$01
    LDA ($45),Y
    BEQ +
    INY
    LDA ($45),Y
    TAX
    CMP $34
    INY
    LDA ($45),Y
    TAY
    SBC $35
    BCS +
    TYA
    CPX $36
    SBC $37
    BCS ++
+   JMP .l8697
---------------------------------
++  LDA #$C4
    JSR .l8E8D
    JMP P3_8AD9
---------------------------------
.l8E8D  LDX $3B
    STX $31
    LDX $3C
    STX $32
    RTS
---------------------------------
P3_8E96
    EOR #$FF
    SEC
    ADC $2F
    STA $2F
    BCS +
    DEC $30
+   LDA $2D
    CMP $2F
    LDA $2E
    SBC $30
    BCS .l8EAC
    RTS
---------------------------------
.l8EAC  LDA #$34
    JMP P3_BF39
---------------------------------
.l8EB1  LDA #$08
    JSR P3_8E96
    LDY #$01
    LDA $2B
    STA ($2F),Y
    INY
    LDA $2C
    STA ($2F),Y
    INY
    LDA $C7C3
    STA ($2F),Y
    INY
    LDA $C7C4
    STA ($2F),Y
    INY
    LDA $36
    STA ($2F),Y
    INY
    LDA $37
    STA ($2F),Y
    INY
    LDA $34
    STA ($2F),Y
    INY
    LDA $35
    STA ($2F),Y
    LDA $0E
    STA ($10),Y
    INY
    LDA $0F
    STA ($10),Y
    LDA #$00
    STA $0F
    LDX $2F
    LDA $30
    STX $34
    STA $35
    LDX $10
    LDA $11
    STX $36
    STA $37
    LDA #$0A
    JSR P3_8E96
    JSR .l869C
    LDA ($2F),Y
    AND #$9F
    STA ($45),Y
    INY
    CLC
    LDA $2F
    ADC #$08
    STA ($45),Y
    LDA $30
    INY
    ADC #$00
    STA ($45),Y
    LDY #$08
    LDA $07
    STA ($2F),Y
    INY
    LDA $08
    STA ($2F),Y
    INY
    LDA #$00
    STA ($2F),Y
    LDY $15
    LDA ($07),Y
    STA $3B
    INY
    LDA ($07),Y
    STA $3C
    INY
    LDA ($07),Y
    STA $2B
    STA $C7C3
    INY
    LDA ($07),Y
    STA $2C
    STA $C7C4
.l8F46  LDA $3C
    BNE +
    RTS
---------------------------------
+   LDY #$03
    LDA ($3B),Y
    CMP #$9C
    BNE +
    INY
    JSR .l8E59
    LDY #$06
    STY $38
    LDA #$02
    JSR P3_8E96
    LDY #$01
    CLC
    LDA $3B
    ADC #$08
    STA ($2F),Y
    INY
    LDA $3C
    ADC #$00
    STA ($2F),Y
    LDA #$13
    LDY #$01
.l8F74  STA ($45),Y
    INY
    CLC
    LDA $2F
    ADC #$01
    STA ($45),Y
    INY
    LDA $30
    ADC #$00
    STA ($45),Y
    JMP .l9065
---------------------------------
+   CMP #$70
    BEQ +
    CMP #$E3
    BCC ++
    CMP #$E6
    BCS ++
    SBC #$CD
    !by $2C
+   SBC #$5C
    INY
    PHA
    JSR .l8E59
    LDY #$08
    STY $38
    LDA #$03
    JSR P3_8E96
    LDY #$03
    LDA #$00
    STA ($2F),Y
    DEY
    LDA $3C
    STA ($2F),Y
    LDA $3B
    DEY
    STA ($2F),Y
    PLA
    JMP .l8F74
---------------------------------
++  CMP #$EB
    BEQ +
    LDX #$33
    JMP P3_BF44
---------------------------------
+   LDY #$04
.l8FC6  INY
    INY
    LDA ($3B),Y
    CMP #$EF
    BNE +
    LDY #$04
    STY $38
    JMP .l9065
---------------------------------
+   INY
    LDX #$00
    SEC
    SBC #$72
    CMP #$06
    BCC +
    SBC #$86
    PHA
    LDA ($3B),Y
    TAX
    INY
    PLA
+   STA $39
    STX $49
    STY $38
    JSR .l8E59
    LDA ($2F),Y
    STA $3A
    BNE +
-   LDA #$FE
    JSR .l8E8D
    LDX $39
    JMP .l8ADE
---------------------------------
+   CMP #$13
    BEQ -
    AND #$8F
    BMI +
    CMP #$03
    BCC +
    SBC #$04
    BEQ +
    ADC #$FE
+   CMP $39
    BNE -
    LDA #$02
    JSR P3_8E96
    LDY #$04
    LDA ($2F),Y
    STA $3F
    INY
    LDA ($2F),Y
    STA $40
    BIT $3A
    BVC +
    LDY #$00
    LDA ($3F),Y
    TAX
    INY
    LDA ($3F),Y
    STX $3F
    STA $40
+   LDY #$02
    LDA $49
    BEQ +
    CMP ($3F),Y
    BNE -
+   LDA $40
    STA ($2F),Y
    DEY
    LDA $3F
    STA ($2F),Y
    LDA $3A
    AND #$9F
    ORA #$40
    STA ($45),Y
    CLC
    INY
    LDA $2F
    ADC #$01
    STA ($45),Y
    INY
    LDA $30
    ADC #$00
    STA ($45),Y
    LDY $38
    JMP .l8FC6
---------------------------------
.l9065  LDY $38
    LDA ($3B),Y
    TAX
    INY
    LDA ($3B),Y
    STX $3B
    STA $3C
    JMP .l8F46
---------------------------------
.l9074  SEC
    LDA $2D
    SBC #$02
    STA $45
    LDA $2E
    SBC #$00
    STA $46
    LDY #$00
    LDA ($45),Y
    STA $3B
    INY
    LDA ($45),Y
    STA $3C
    LDA $45
    SBC $3C
    STA $45
    LDA $46
    SBC $3B
    STA $46
    LDA $45
    SBC #$02
    STA $47
    LDA $46
    SBC #$00
    STA $48
    LDY #$01
    LDA ($47),Y
    STA $3E
    DEY
    LDA ($47),Y
    STA $3D
    LDA $47
    SBC $3E
    TAX
    LDA $48
    SBC $3D
    STX $47
    STA $48
    RTS
---------------------------------
.l90BD  LDA #$10
    STA $5D
    LDX #$00
    LDY #$00
-   TXA
    ASL
    TAX
    TYA
    ROL
    TAY
    BCS ++
    ASL $26
    ROL $27
    BCC +
    CLC
    TXA
    ADC $28
    TAX
    TYA
    ADC $29
    TAY
    BCS ++
+   DEC $5D
    BNE -
    RTS
---------------------------------
++  LDX #$02
    JMP P3_BF32
---------------------------------
.l90E8  LDA #$3F
    JSR $CE05
    JMP $CE03
---------------------------------
P3_90F0
    LDA #$61     ; $C661 ?
    STA $31
    LDA #$C6
    STA $32
    TSX
    STX $C7BC
    LDA #$04
    STA $C845                   ; status of comal program
    BNE .l9114
.l9103  CLC
    LDA $1F
    ADC $31
    STA $31
    BCC .l910E
    INC $32
.l910E  LDA $4D
    AND #$2C
    BNE ++
.l9114  LDY #$02
    LDA ($31),Y
    STA $1F
    INY
    STY $33
    BNE +
.l911F  LDY $33
    CPY $1F
    BCS .l9103
+   LDA ($31),Y
    INC $33
    TAX
    LDA JT1HIGH,X    ;$8009
    PHA
    LDA JT1LOW,X     ;$8109
    PHA
    RTS
---------------------------------
.l9133
    INY
    LDA ($31),Y
    INC $33
    TAX
    LDA .l8209-1,X      ; a second table ?
    PHA
    LDA .l8248-1,X
    PHA
    RTS
---------------------------------
++  BIT $54
    BPL +
    TAX
    LDA #$00
    STA $54
    LDA $4D
    AND #$02
    BEQ .l9197
    TXA
+   AND #$20
    BEQ +
    JSR .l9194
+   LDA $4D
    AND #$04
    BEQ .l9114
    LDX $C7C8
    BPL +
    PHP
    SEI
    EOR $4D
    STA $4D
    PLP
    JMP .l9114
---------------------------------
+   LDA $4D
    AND #$10
    BEQ .l9114
    LDA #$40
    STA $38
    LDA #$03
    STA $33
    PHP
    SEI
    LDA $4D
    AND #$EB
    STA $4D
    PLP
    CLC
    LDA $C7C7
    ADC $18
    STA $45
    TXA
    JSR P3_866C
    JMP .lA92F
---------------------------------
.l9194  JMP ($C7E2)
---------------------------------
.l9197  LDA $4D
    AND #$F7
    STA $4D
    LDA #$03
    STA $33

    JSR $CAEE
    !by PAGE2
    !word P2_BDF4

    JMP .l91B0
.l91AA
    JSR .l91E7
    LDX #$E6
    !by $2C
.l91B0  LDX #$E7
    STX $3B
    JSR $CDD6
    LDY #$00
    LDA ($31),Y
    STA $64
    INY
    LDA ($31),Y
    STA $65
    ORA $64
    BEQ +
    JSR P3_BFC5
    LDX $3B
    JSR .l8CE1
    JSR .l8348
.l91D1  JSR $CDF4
    JSR $CDF4
    LDA #$0A
    JSR P3_8287
    LDX #$00

    STX $C6                     ; clears the keyboard buffer
+   LDA $C845                   ; status of comal program
    CMP #$04                    ; program mode?
    BNE +
.l91E7  LDA $88
    ORA #$01
    STA $88
+   LDX #$02
-   LDA $30,X
    STA $024F,X
    LDA $0F,X
    STA $0253,X
    DEX
    BNE -
    STX $11
    LDA $4D
    STA $0252
    LDA $33
    STA $0253
    RTS
---------------------------------
.l9209
    LDA $31
    CLC
    ADC $33
    TAX
    LDA $32
    ADC #$00
    JSR P3_8514
    CLC
    LDA $33
    ADC #$05
    STA $33
    JMP .l911F
---------------------------------
.l9220
    LDY $33
    LDA ($31),Y
    STA $64
    INY
    LDA ($31),Y
    INY
    STY $33
    STA $65
    JSR .l854B
    JMP .l911F
---------------------------------
.l9234
    LDY $33
    LDA ($31),Y
    INC $33
    JSR .l858B
    JMP .l911F
---------------------------------
.l9240
    LDY $33
    LDA ($31),Y
    TAX
    INY
    LDA ($31),Y
    INY
    STY $33
    JSR P3_8536
    JMP .l911F
---------------------------------
.l9251
    LDY $33
    CLC
    LDA ($31),Y
    TAY
    ADC #$02
    JSR P3_8400
    LDA #$00
    STA ($47),Y
    TYA
    INY
    STA ($47),Y
    LDA $31
    ADC $33
    STA $3D
    LDA $32
    ADC #$00
    STA $3E
    TYA
    ADC $33
    STA $33
    DEY
    BEQ +
-   LDA ($3D),Y
    DEY
    STA ($47),Y
    BNE -
+   JMP .l911F
---------------------------------
.l9282

    LDA #$03
    JSR P3_8400
    LDY $33
    LDA ($31),Y
    INC $33
.l928D  LDY #$00
    STA ($47),Y
    TYA
    INY
    STA ($47),Y
    TYA
    INY
    STA ($47),Y
    JMP .l911F
---------------------------------
.l929C
    LDX #$00
    JSR .l86CD
    JSR .l8518
    JMP .l911F
---------------------------------
.l92A7
    LDX #$01
    JSR .l86CD
    LDY #$00
    LDA ($49),Y
    STA $64
    INY
    LDA ($49),Y
    STA $65
    JSR .l854B
    JMP .l911F
---------------------------------
.l92BD
    LDX #$02
    JSR .l86CD
.l92C2  LDA $49
    CLC
    ADC #$04
    STA $45
    LDA $4A
    ADC #$00
    STA $46
    LDY #$02
    LDA ($49),Y
    TAX
    INY
    LDA ($49),Y
    STX $49
    STA $4A
    JSR .l982C
    JMP .l911F
---------------------------------
.l92E1  PHA
    LDA #$03
    TAY
    JSR P3_8400
    LDA ($45),Y
    TAX
    DEY
    LDA ($45),Y
    BIT $39
    BVC +
    STX $3E
    STA $3D
    DEY
    LDA ($3D),Y
    TAX
    DEY
    LDA ($3D),Y
+   LDY #$00
    STA ($47),Y
    INY
    TXA
    STA ($47),Y
    INY
    PLA
    STA ($47),Y
    RTS
---------------------------------
.l930A
    LDX #$92
    !by $2C
.l930D
    LDX #$91
    !by $2C
.l9310
    LDX #$90
    STX $38
    INY
    LDA ($31),Y
    INC $33
    STA $3A
    JSR P3_865D
    STA $39
    AND #$9F
    BEQ .l936E
    CMP $38
    BNE .l936B
    LDA #$05
    JSR .l92E1
    STX $4A
    LDY #$00
    LDA ($47),Y
    STA $49
    LDY #$02
    LDA ($49),Y
    CMP $3A
    BNE .l936B
    JMP .l911F
---------------------------------
.l9340
    LDX #$12
    !by $2C
.l9343
    LDX #$11
    !by $2C
.l9346
    LDX #$10
    STX $38
    JSR P3_865D
    STA $39
    AND #$9F
    CMP $38
    BNE +
.l9355  LDA #$02
    JSR .l92E1
    JMP .l911F
---------------------------------
+   SEC
    SBC #$05
    CMP $38
    BNE +
    AND #$EF
    ORA #$0C
    JMP .l871D
---------------------------------
.l936B  LDA #$F8
    !by $2C
.l936E  LDA #$F7
    LDX $38
    JMP .l8ADE
---------------------------------
+   LDA $39
    BNE .l936B
    LDY $33
    LDA ($31),Y
    CMP #$B0
    BCC +
    CMP #$B3
    BCC ++
    CMP #$B8
    BCC .l936E
    CMP #$BB
    BCC ++
    BCS .l936E
+   CMP #$0D
    BCC .l936E
    CMP #$1F
    BCS .l936E
    LDY #$02
    LDA ($10),Y
    CMP #$0B
    BNE .l936E
    LDY #$04
    LDA ($10),Y
    TAY
    LDA ($10),Y
    TAY
    LDA .l94D5-1,Y
    CMP #$01
    BNE .l936E
++  LDY #$01
    JSR .l8923
    LDY #$00
    TYA
    CPX #$12
    BNE +
    LDY #$02
+   STA ($47),Y
    INY
    STA ($47),Y
    JMP .l9355
---------------------------------
.l93C4
    LDX #$02
    !by $2C
.l93C7
    LDX #$01
    !by $2C
.l93CA
    LDX #$00
    STX $3A
    JSR P3_865D
    STA $38
    BNE +
    LDA #$FC
    !by $2C
-   LDA #$FD
    LDX $3A
    JMP .l8ADE
---------------------------------
+   BPL ++
    AND #$0F
    CMP $3A
    BNE -
    LDA #$08
    JSR .l8422
    LDA #$04
    ORA $3A
    STA ($10),Y
    INY
    LDA #$00
    STA ($10),Y
    INY
    STA ($10),Y
    INY
    STA ($10),Y
    LDY #$03
    LDA ($45),Y
    TAX
    DEY
    LDA ($45),Y
    BIT $38
    BVC +
    STA $49
    STX $4A
    DEY
    LDA ($49),Y
    TAX
    DEY
    LDA ($49),Y
+   LDY #$06
    STA ($10),Y
    INY
    TXA
    STA ($10),Y
    JMP .l911F
---------------------------------
++  AND #$0F
    CMP #$02
    BNE ++
    LDY #$03
    LDA ($45),Y
    STA $4A
    DEY
    LDA ($45),Y
    STA $49
    BIT $38
    BVC +
    DEY
    LDA ($49),Y
    TAX
    DEY
    LDA ($49),Y
    STX $4A
    STA $49
+   LDA #$0A
    JSR .l8422
.l9444  LDA #$07
    STA ($10),Y
    INY
    LDA $49
    STA ($10),Y
    INY
    LDA $4A
    STA ($10),Y
    JMP .l911F
---------------------------------
++  LDX #$04
    STX $41
    SEC
    SBC #$05
    CMP $3A
    BEQ .l946D
    TAX
    BPL +
    LDA #$FA
    !by $2C
+   LDA #$F9
    LDX $3A
    JMP .l8ADE
---------------------------------
.l946D  LDY #$03
    LDA ($45),Y
    STA $3E
    DEY
    LDA ($45),Y
    STA $3D
    BIT $38
    BVC +
    DEY
    LDA ($3D),Y
    TAX
    DEY
    LDA ($3D),Y
    STX $3E
    STA $3D
+   LDY #$00
    LDA ($3D),Y
    STA $07
    INY
    LDA ($3D),Y
    STA $08
    INY
    LDA ($3D),Y
    STA $09
    BEQ +
    LDY #$08
    STY $43
    LDY #$06
    JSR $CB66
    BPL ++
+   LDA $88
    AND #$02
    BEQ +
    LDX #$3B
    !by $2C
-   LDX #$45
    JMP P3_BF44
---------------------------------
+   LDY #$0C
    STY $43
    LDY #$0A
    LDA ($07),Y
++  BEQ +++
    STA $47
    ASL
    ASL
    ADC $47
.l94C2  ADC #$0A
    JSR .l8422
    LDA #$0B
    STA ($10),Y
    INY
    LDA $3A
    ORA $41
    STA ($10),Y
    INY
    LDA #$0A
.l94D5  STA ($10),Y
    INY
    LDA $07
    STA ($10),Y
    INY
    LDA $08
    STA ($10),Y
    INY
    LDA $09
    STA ($10),Y
    INY
    LDA $43
    STA ($10),Y
    LDA $09
    BEQ +
    LDY #$07
    JSR $CB66
    BNE ++
+   LDY #$0B
    LDA ($07),Y
++  TAX
    CMP #$7E
    BCS -
    LDY #$0A
    STA ($10),Y
    INY
    LDA $2D
    STA ($10),Y
    INY
    LDA $2E
    STA ($10),Y
    CPX #$74
    BNE +
    LDA #$04
    JSR P3_8400
+   JMP .l911F
---------------------------------
+++ LDA $3A
    ORA #$20
    STA $38
    AND #$03
    CMP #$02
    BEQ +
    LDX #$4F
.l9527  JMP P3_BF44
---------------------------------
+   LDA $09
    BNE +
    JMP .l8756
---------------------------------
+   JMP .l88A9
---------------------------------
.l9530  !by $00,$01,$02,$00 
.l9538  !by $01,$02,$00,$01,$02,$00,$01,$02 
.l9540  !by $00,$01,$02,$00,$01,$02,$00,$00 
.l9548  !by $00,$01,$01,$01,$02,$02,$02,$03 
.l9550  !by $03,$03,$04,$04,$04,$05,$05,$05 

.l9558  LDA .l9527,x
    STA $3D
    LDA .l9538+1,x
    STA $3E
    LDY #$02
    LDA ($10),Y
    CMP #$0B
    BCC +
    JMP .l9866
---------------------------------
+   LSR $3E
    BCS ++
    LDA $3D
    BEQ +
-   LDX #$46
    JMP P3_BF44
---------------------------------
+   JSR .l85CE
    JMP .l95C0
---------------------------------
++  LDX $3D
    CPX #$02
    BEQ -
    LDA #$03
    JSR P3_8483
    LDY #$02
    LDA ($2D),Y
    CMP #$02
    BNE +
    DEY
    LDA ($2D),Y
    STA $48
    DEY
    LDA ($2D),Y
    LDX $3D
    BEQ ++
    STA $47
    LDA ($47),Y
    STA $64
    INY
    LDA ($47),Y
    STA $65
    JMP .l95C0
---------------------------------
+   CMP #$04
    BNE -
    LDA #$03
    JSR P3_8483
    LDA $2D
    LDY $2E
    !by $2C
++  LDY $48
    JSR .l85DB
.l95C0  LDY #$02
    LDA ($10),Y
    CMP #$07
    BCC ++
    JMP .l976F
---------------------------------
++  INY
    LDA ($10),Y
    STA $3D
    CLC
    ADC #$01
    STA ($10),Y
    INY
    LDA ($10),Y
    STA $41
    INY
    LDA ($10),Y
    STA $42
    INY
    LDA ($10),Y
    STA $3F
    INY
    LDA ($10),Y
    STA $40
    TAX
    LDA $3D
    ASL
    ASL
    CLC
    ADC $3F
    STA $43
    BCC +
    INX
+   STX $44
    LDA $3D
    BEQ ++
    LDY #$05
    LDA ($43),Y
    STA $29
    INY
    LDA ($43),Y
    SEC
    LDY #$04
    SBC ($43),Y
    TAX
    LDA $29
    DEY
    SBC ($43),Y
    TAY
    INX
    BNE +
    INY
+   STX $28
    STY $29
    LDA $41
    STA $27
    LDA $42
    STA $26
    JSR .l90BD
    STX $42
    STY $41
++  LDY #$06
    LDA ($43),Y
    CMP $65
    DEY
    LDA ($43),Y
    SBC $64
    BPL +
-   LDX #$0A
    JMP P3_BF32
---------------------------------
--  LDX #$37
    !by $2C
.l963D  LDX #$3C
    JMP P3_BF44
---------------------------------
+   LDY #$04
    SEC
    LDA $65
    SBC ($43),Y
    STA $65
    DEY
    LDA $64
    SBC ($43),Y
    BMI -
    STA $64
    CLC
    LDY #$05
    LDA $65
    ADC $42
    STA ($10),Y
    STA $42
    DEY
    LDA $64
    ADC $41
    STA ($10),Y
    STA $41
    LDY #$02
    LDA ($3F),Y
    INY
    CMP ($10),Y
    BEQ +
    LDA $3E
    BNE --
    JMP .l911F
---------------------------------
+   LDY #$02
    LDA ($10),Y
    CMP #$06
    BNE +
    JMP .l970B
---------------------------------
+   TAX
    LDA $3E
    BEQ .l963D
    JSR .l8450
    CPX #$04
    BNE +
    LDA $41
    STA $46
    LDA $42
    ASL
    ROL $46
    ASL
    ROL $46
    CLC
    ADC $42
    STA $45
    LDA $41
    ADC $46
    STA $46
    LDY #$00
    LDA ($3F),Y
    ADC $45
    STA $49
    INY
    LDA ($3F),Y
    ADC $46
    STA $4A
    LSR $3E
    BNE .l96EE
    LDX $49
    JSR P3_8514
    JMP .l911F
---------------------------------
+   LDA $42
    ASL
    STA $45
    LDA $41
    ROL
    STA $46
    LDY #$00
    LDA ($3F),Y
    ADC $45
    STA $49
    INY
    LDA ($3F),Y
    ADC $46
    STA $4A
    LSR $3E
    BNE .l96EE
    DEY
    LDA ($49),Y
    STA $64
    INY
    LDA ($49),Y
    STA $65
    JSR .l854B
    JMP .l911F
---------------------------------
.l96EE  LDY #$00
    LDA $49
    STA ($2D),Y
    INY
    LDA $4A
    STA ($2D),Y
    INY
    TYA
    STA ($2D),Y
    CLC
    LDA $2D
    ADC #$03
    STA $2D
    BCC +
    INC $2E
+   JMP .l911F
---------------------------------
.l970B  LDY #$00
    LDA ($3F),Y
    STA $49
    INY
    LDA ($3F),Y
    STA $4A
    CLC
    LDA ($49),Y
    ADC #$04
    STA $28
    DEY
    LDA ($49),Y
    ADC #$00
    STA $29
    LDA $41
    STA $27
    LDA $42
    STA $26
    JSR .l90BD
    STX $41
    STY $42
    LDY #$00
    CLC
    LDA ($3F),Y
    ADC $41
    STA $49
    INY
    LDA ($3F),Y
    ADC $42
    STA $4A
    LDA $3E
    BEQ +
    JSR .l8450
    LSR $3E
    BNE .l96EE
    JMP .l92C2
---------------------------------
+   JSR .lBFBE
    CMP #$80
    BNE ++
    LDA $2D
    ADC #$01
    STA $2D
    BCC +
    INC $2E
+   LDY #$02
    JMP .l9444
---------------------------------
++  JMP .l963D
---------------------------------
.l976A  LDX #$04
    JMP P3_BF32
---------------------------------
.l976F  STA $39
    LSR
    BCC .l97A1
    LDY #$05
    LDA $64
    BMI .l976A
    STA ($10),Y
    INY
    LDA $65
    STA ($10),Y
    ORA $64
    BEQ .l976A
    INY
    LDA #$00
    STA ($10),Y
    INY
    LDA #$01
    STA ($10),Y
    BNE ++
-   LDY #$02
    LDA ($10),Y
    CMP #$09
    BCS +
    JMP .l976A
---------------------------------
+   LDX #$4F
    JMP P3_BF44
---------------------------------
.l97A1  LDY #$06
    LDA $65
    SEC
    SBC ($10),Y
    TAX
    DEY
    LDA $64
    BMI .l976A
    SBC ($10),Y
    INX
    BNE +
    SEC
    ADC #$00
+   TAY
    BMI .l976A
    LDY #$07
    STA ($10),Y
    INY
    TXA
    STA ($10),Y
++   LDA $3E
    BEQ -
    LDA $39
    CMP #$09
    BCC +
    JSR .l8450
    SEC
    LDA $2D
    SBC #$04
    STA $43
    LDA $2E
    SBC #$00
    STA $44
    LDY #$03
    LDA $43
    SBC ($43),Y
    TAX
    DEY
    LDA $44
    SBC ($43),Y
    PHA
    TXA
    LDY #$06
    ADC ($2D),Y
    STA $45
    PLA
    DEY
    ADC ($2D),Y
    STA $46
    JSR .l8A13
    LDY #$03
    LDA ($2D),Y
    TAX
    INY
    LDA ($2D),Y
    STX $2D
    STA $2E
    JSR .l982C
    LSR $3E
    BEQ .l981D
    LDA #$06
    JMP .lB8C5
---------------------------------
+   LSR $3E
    BEQ +
    LDY #$09
    LDA #$0C
    STA ($10),Y
    JSR .l8464
.l981D  JMP .l911F
---------------------------------
+   JSR .l8450
    JSR .l89F4
    JSR .l982C
    JMP .l911F
---------------------------------
.l982C  LDA $2D
    STA $47
    CLC
    ADC $4A
    TAX
    LDA $2E
    STA $48
    ADC $49
    BCS +
    TAY
    TXA
    ADC #$02
    TAX
    TYA
    ADC #$00
    BCS +
    STX $2D
    STA $2E
    CPX $2F
    SBC $30
    BCS +
    JSR P3_82F4
    DEC $2E
    LDY #$FE
    LDA $49
    STA ($2D),Y
    INY
    LDA $4A
    STA ($2D),Y
    INC $2E
    RTS
---------------------------------
+   JMP .l8EAC
---------------------------------
.l9866  LDY #$04
    LDA ($10),Y
    STA $3F
    INY
    LDA ($10),Y
    STA $07
    INY
    LDA ($10),Y
    STA $08
    INY
    LDA ($10),Y
    STA $09
    INY
    LDA ($10),Y
    STA $15
    LDY $3F
    LDA ($10),Y
    TAX
    LDA .l94C2,X
    STA $3B
    LDY .l94D5-1,X
    BEQ +
    JMP .l99BF
---------------------------------
+   CMP #$02
    BEQ +
    LDX $3D
    CPX #$02
    BNE ++
    JMP .l99CD
---------------------------------
+   JMP .l9949
---------------------------------
++  LSR $3E
    BCS .l98AF
    TAX
    BEQ .l98AC
    JSR .l849B
.l98AC  JMP .l9944
---------------------------------
.l98AF  DEC $2E
    DEY
    LDA ($2D),Y
    CMP #$02
    BNE +++
    DEY
    LDA ($2D),Y
    STA $46
    DEY
    LDA ($2D),Y
    STA $45
    LDX $3B
    BNE ++
    SEC
    LDA $2D
    SBC #$03
    STA $2D
    BCC +
    INC $2E
+   LDY $3D
    BNE +
    JSR .l83FE
    LDA ($45),Y
    STA ($47),Y
    INY
    LDA ($45),Y
    STA ($47),Y
    INY
    LDA ($45),Y
    STA ($47),Y
    INY
    LDA ($45),Y
    STA ($47),Y
    INY
    LDA ($45),Y
    STA ($47),Y
    JMP .l9944
---------------------------------
+   LDA ($45),Y
    TAX
    DEY
    LDA ($45),Y
    JSR P3_8547
    JMP .l9944
---------------------------------
++  LDX $2D
    BEQ +
    INC $2E
+   DEC $2D
    LDY $3D
    BNE +
    LDY $46
    JSR .l85DB
    LDX $65
    LDA $64
.l9914  DEC $2E
    LDY #$FE
    STA ($2D),Y
    INY
    TXA
    STA ($2D),Y
    INC $2E
    JMP .l9944
---------------------------------
+   LDA ($45),Y
    TAX
    DEY
    LDA ($45),Y
    JMP .l9914
---------------------------------
+++ CMP #$04
    BEQ +
    INC $2E
    JMP .l99CD
---------------------------------
+   LDA $2D
    BEQ +
    INC $2E
+   DEC $2D
    LDA $3B
    BEQ .l9944
    JSR .l849B
.l9944  LDA #$30
    JMP .l9A80
---------------------------------
.l9949  LDA $3D
    CMP #$02
    BEQ +
    JMP .l99CD
---------------------------------
+   LDY $3F
    INY
    LDA ($10),Y
    STA $41
    INY
    LDA ($10),Y
    STA $42
    LSR $3E
    BCS +
    LDA #$02
-   JSR P3_8483
    LDY #$00
    LDA ($2D),Y
    STA $49
    INY
    LDA ($2D),Y
    STA $4A
    JMP .l99A5
---------------------------------
+   DEC $2E
    LDY #$FF
    LDA ($2D),Y
    INC $2E
    CMP #$06
    BNE +
    LDA #$03
    BNE -
+   JSR .l89B9
    LDA $2D
    STA $47
    CLC
    ADC $4A
    TAX
    LDA $2E
    STA $48
    ADC $49
    BCS +
    STX $2D
    STA $2E
    CPX $2F
    SBC $30
    BCS +
    JSR P3_82F4
.l99A5  LDY #$00
    LDA $49
    STA ($41),Y
    INY
    LDA $4A
    STA ($41),Y
    INY
    LDA $49
    STA ($41),Y
    INY
    LDA $4A
    STA ($41),Y
    LDA #$30
    JMP .l9A80
---------------------------------
.l99BF  CMP $3D
    BNE .l99CD
    DEY
    BNE +++
    LSR $3E
    BCS ++
--  LDX #$47
    !by $2C
.l99CD  LDX #$48
    !by $2C
-   LDX #$3E
    JMP P3_BF44
---------------------------------
+   JMP .l8EAC
---------------------------------
--- JMP .l9BEA
---------------------------------
++  LDA #$01
    JSR P3_8483
    LDA ($2D),Y
    CMP #$02
    BNE -
    LDA #$50
    JMP .l9A80
---------------------------------
+++ DEY
    BEQ +
    LSR $3E
    BCC --
    LDX #$01
    JSR .l9BB3
    LDA #$D0
    JMP .l9A80
---------------------------------
+   LSR $3E
    BCC ---
    LDX #$03
    JSR .l9BB3
    PHA
    JSR P3_8A84
    PLA
    ASL
    ASL
    ADC #$03
    STA $3A
    JSR P3_8400
    LDY #$00
    LDA $2D
    STA ($47),Y
    LDA ($49),Y
    STA $45
    INY
    LDA $2E
    STA ($47),Y
    LDA ($49),Y
    STA $46
    INY
-   LDA ($49),Y
    STA ($47),Y
    INY
    CPY $3A
    BNE -
    LDX $41
    LDA $42
    STX $27
    STA $26
    LDY $3D
    BNE +
    LDX #$05
    LDA #$00
    BEQ ++
+   DEY
    BNE +
    LDX #$02
    LDA #$00
    BEQ ++
+   LDA ($45),Y
    CLC
    ADC #$04
    TAX
    DEY
    LDA ($45),Y
    ADC #$00
++  STX $28
    STA $29
    JSR .l90BD
    STX $4A
    STY $49
    CLC
    LDA $2D
    STA $47
    ADC $4A
    STA $2D
    TAX
    LDA $2E
    STA $48
    ADC $49
    STA $2E
    BCS +++
    CPX $2F
    SBC $30
    BCS +++
    JSR P3_82F4
    LDA #$B0
.l9A80  ORA $3B
    LDY $3F
    STA ($10),Y
    TYA
    CLC
    ADC #$05
    STA $3F
    LDY $15
    LDA $09
    BEQ +
    JSR $CB66
    BNE ++
+   LDA ($07),Y
    ADC $18
    TAX
    INY
    LDA ($07),Y
    ADC $19
    INY
    STY $15
    LDY $3F
    DEY
    STA ($10),Y
    DEY
    TXA
    STA ($10),Y
    LDY $15
    LDA ($07),Y
++  INY
    STY $15
    LDX $3E
    BNE ++++
    TAX
    CMP #$7E
    BCS ++
    TYA
    LDY #$08
    STA ($10),Y
    LDY #$04
    LDA $3F
    STA ($10),Y
    TAY
    TXA
    STA ($10),Y
    INY
    LDA $2D
    STA ($10),Y
    INY
    LDA $2E
    STA ($10),Y
    CPX #$74
    BNE +
    LDA #$04
    JSR P3_8400
+   JMP .l911F
---------------------------------
+++ JMP .l8EAC
---------------------------------
++  LDY $33
    LDA ($31),Y
    CMP #$80
    BNE +
    INC $33
    LDY #$03
    LDA ($10),Y
    ORA #$20
    STA ($10),Y
    TXA
++++TAX
    CMP #$7E
    BCS ++
    LDX #$45
    !by $2C
+   LDX #$4F
    JMP P3_BF44
---------------------------------
++  BEQ +
    LDA #$10
    !by $2C
+   LDA #$00
    LDY #$03
    ORA ($10),Y
    LSR $3E
    BEQ +
    ORA #$08
+   STA ($10),Y
    LDA $09
    BEQ +
    JMP .l9BEF
---------------------------------
+   INY
    LDA $31
    STA ($10),Y
    INY
    LDA $32
    STA ($10),Y
    INY
    LDA $33
    STA ($10),Y
    CPX #$F5
    BNE .l9B35
    JMP .l9F0F
---------------------------------
.l9B35  LDY #$0A
    LDA ($07),Y
    STA $3A
    LDY #$07
    STA ($10),Y
    CLC
    LDA $10
    ADC #$09
    STA $41
    LDA $11
    ADC #$00
    STA $42
    LDY #$02
    LDA #$0C
    STA ($10),Y
-   LDY #$05
    LDA ($41),Y
    STA $46
    DEY
    LDA ($41),Y
    STA $45
    DEY
    LDA ($45),Y
    TAX
    LDA ($41),Y
    STA ($45),Y
    TXA
    STA ($41),Y
    DEY
    LDA ($45),Y
    TAX
    LDA ($41),Y
    STA ($45),Y
    TXA
    STA ($41),Y
    DEY
    LDA ($45),Y
    TAX
    LDA ($41),Y
    STA ($45),Y
    TXA
    STA ($41),Y
    DEC $3A
    BEQ +
    CLC
    LDA $41
    ADC #$05
    STA $41
    BCC -
    INC $42
    BCS -
+   LDY #$04
    CLC
    LDA ($07),Y
    ADC $18
    STA $45
    INY
    LDA ($07),Y
    ADC $19
    STA $46
    LDY #$03
    LDA ($10),Y
    AND #$10
    BEQ +
    JSR .l8EB1
    JMP .l879D
---------------------------------
+   LDY $15
    INY
    JMP .l87B7
---------------------------------
.l9BB3  DEC $2E
    LDY #$FD
    LDA ($2D),Y
    STA $47
    STA $49
    INY
    LDA ($2D),Y
    STA $48
    STA $4A
    INY
    LDA ($2D),Y
    INC $2E
    CMP #$05
    BNE .l9BEA
    TXA
    JSR P3_8483
    LDY $15
    LDA $09
    BEQ +
    JSR $CB66
    !by $2C
+   LDA ($07),y
    INY
    STY $15
    LDY #$02
    CMP ($47),Y
    BNE +
    RTS
---------------------------------
+   LDX #$35
    !by $2C
.l9BEA  LDX #$36
    JMP P3_BF44
---------------------------------
.l9BEF  LDA $4B
    BEQ +
    JSR $CDD6
+   LDY #$04
    JSR $CBBC
    LDY #$03
    LDA ($10),Y
    STA $39
    AND #$07
    CMP #$04
    BCC ++
    BEQ +
    CMP #$06
    BEQ +++
+   JSR .l848F
    LDY $2E
    STA $49
    STY $4A
    CLC
    LDA $10
    STA $47
    ADC #$05
    STA $2D
    LDA $11
    STA $48
    ADC #$00
    STA $2E
    JSR .l8464
    JSR .l851B
    JMP .lB8BC
---------------------------------
++  JSR .l8450
    JMP .l911F
---------------------------------
+++ LDX $2D
    LDA $2E
    STX $43
    STA $44
    JSR .l8450
    JMP .lB8E9
---------------------------------
.l9C44  LDY #$03
    LDA ($45),Y
    STA $3E
    DEY
    LDA ($45),Y
    STA $3D
    DEY
    LDA ($45),Y
    AND #$40
    BEQ +
    LDA ($3D),Y
    TAX
    DEY
    LDA ($3D),Y
    STX $3E
    STA $3D
+   RTS
---------------------------------
.l9C61
    LDY #$05
    LDA #$00
    STA ($10),Y
    INY
    LDA #$01
    STA ($10),Y
    JSR .l9CC5
    JMP .l911F
---------------------------------
.l9C72
    JSR .l9CB1
    STA $39
    CMP #$08
    BEQ +
    DEC $11
    LDY #$FF
    LDA ($10),Y
    STA $65
    DEY
    LDA ($10),Y
    INC $11
    BNE ++
+   INY
    LDA ($10),Y
    STA $45
    INY
    LDA ($10),Y
    STA $46
    DEY
    LDA ($45),Y
    STA $65
    DEY
    LDA ($45),Y
++  STA $64
    JSR .lBFBE
    TAX
    LDA .l9538+1,X
    LSR
    STA $3E
    JMP .l97A1
---------------------------------
.l9CAB
    JSR .l9CB1
    JMP .l911F
---------------------------------
.l9CB1  JSR .l85CE
    LDY #$05
    LDA $64
    BMI ++
    STA ($10),Y
    INY
    LDA $65
    STA ($10),Y
    ORA $64
    BEQ ++
.l9CC5  LDY #$02
    LDA ($10),Y
    CMP #$07
    BEQ +
    CMP #$09
    BNE ++
+   ADC #$00
    STA ($10),Y
    RTS
---------------------------------
++  JMP .l976A
---------------------------------
.l9CD9
    DEC $2E
    LDY #$FB
    LDA ($2D),Y
    BEQ +
    INY
    LDA ($2D),Y
    EOR #$80
    STA ($2D),Y
+   INC $2E
    JMP .l911F
---------------------------------
.l9CED
    JSR P3_84BE
    JSR .l84CE
    JSR $C941
    JSR .l84B7
    JMP .l911F
---------------------------------
.l9CFC
    JSR P3_84BE
    JSR .l84CE
    JSR $CA7D
    JSR .l84B7
    JMP .l911F
---------------------------------
.l9D0B
    JSR P3_84BE
    JSR .l84CE
    JSR $CA6E
    JSR .l84B7
    JMP .l911F
---------------------------------
.l9D1A
    JSR .l9D46
    JSR .l84B7
    JMP .l911F
---------------------------------
.l9D23
    JSR .l9D46
    LDA $2D
    LDY $2E
    JSR $CC0C
    JSR $CA6E
    LDA $61
    BEQ +
    LDA $66
    EOR #$80
    STA $66
+   JSR .l84CE
    JSR $CA4B
    JSR .l84B7
    JMP .l911F
---------------------------------
.l9D46  JSR P3_84BE
    JSR .l84CE
    JSR $CA7D
    LDA $66
    PHA
    LDA #$00
    STA $66
    JSR $C980
    PLA
    STA $66
    RTS
---------------------------------
.l9D5D
    JSR P3_84BE
    JSR .l84CE
    JSR $CA4B
    JSR .l84B7
    JMP .l911F
---------------------------------
.l9D6C
    JSR .l9074
    LDA $3B
    STA $49
    LDA $3C
    STA $4A
    SEC
    LDA $45
    SBC #$02
    STA $47
    LDA $46
    SBC #$00
    STA $48
    JSR P3_82F4
    SEC
    LDA $2D
    SBC #$02
    STA $2D
    BCS +
    DEC $2E
+   DEC $2E
    LDY #$FF
    CLC
    LDA $3C
    ADC $3E
    STA ($2D),Y
    DEY
    LDA $3B
    ADC $3D
    STA ($2D),Y
    INC $2E
    JMP .l911F
---------------------------------
.l9DA9
    JSR P3_84BE
    JSR .l84CE
    JSR $CA5F
    JSR .l84B7
    JMP .l911F
---------------------------------
.l9DB8  JSR P3_84BE
    LDY $2E
    LDA $2D
    SEC
    SBC #$05
    BCS +
    SEC
    DEY
+   JMP $CA8C
---------------------------------
.l9DC9
    JSR .l9DB8
    BCC .l9DD1
.l9DCE  JMP .lA20E
---------------------------------
.l9DD1  JMP .lA215
---------------------------------
.l9DD4
    JSR .lAFCD
    BEQ .l9DD1
    BNE .l9DCE
.l9DDB
    JSR .l9DB8
    BEQ .l9DD1
    BCC .l9DD1
    BCS .l9DCE
.l9DE4
    JSR .l9DB8
    BEQ .l9DCE
    BCC .l9DCE
    BCS .l9DD1
.l9DED
    JSR .lAFCD
    BNE .l9DD1
    BEQ .l9DCE
.l9DF4
    JSR .l9DB8
    BCS .l9DD1
    BCC .l9DCE
.l9DFB  JSR .l9074
    STX $2D
    STA $2E
    LDX $3C
    LDA $3B
    CPX $3E
    SBC $3D
    BCS +
    LDA $3E
    LDX $3D
    BCC .l9E15
+   TXA
    LDX $3B
.l9E15  TAY
    BEQ ++
    STA $49
    EOR #$FF
    TAY
    INY
    CLC
    LDA $45
    ADC $49
    STA $45
    BCS +
    DEC $46
+   CLC
    LDA $47
    ADC $49
    STA $47
    BCS .l9E34
    DEC $48
.l9E34  LDA ($47),Y
    CMP ($45),Y
    BNE +
    INY
    BNE .l9E34
    INC $46
    INC $48
++  DEX
    BPL .l9E34
    LDX $3E
    LDA $3D
    CPX $3C
    SBC $3B
+   RTS
---------------------------------
.l9E4D
    JSR .l9DFB
    BCC .l9E55
.l9E52  JMP .lA20B
---------------------------------
.l9E55  JMP .lA212
---------------------------------
.l9E58
    JSR .l9DFB
    BEQ .l9E55
    BNE .l9E52
.l9E5F
    JSR .l9DFB
    BEQ .l9E55
    BCC .l9E55
    BCS .l9E52
.l9E68
    JSR .l9DFB
    BEQ .l9E52
    BCC .l9E52
    BCS .l9E55
.l9E71
    JSR .l9DFB
    BNE .l9E55
    BEQ .l9E52
.l9E78
    JSR .l9DFB
    BCS .l9E55
    BCC .l9E52
.l9E7F
    JSR .l9074
    STX $2D
    STA $2E
    LDA $3D
    ORA $3E
    BNE ++
    LDX $3B
    LDY $3C
.l9E90  INY
    BNE +
    INX
+   TXA
-   STA $64
    STY $65
    JSR .l854B
    JMP .l911F
---------------------------------
++  SEC
    LDA $3C
    SBC $3E
    STA $40
    LDA $3B
    SBC $3D
    STA $3F
    LDA $45
    STA $49
    LDA $46
    STA $4A
.l9EB4  LDA $3F
    BPL +
    LDA #$00
    TAY
    BEQ -
+   LDY #$00
    LDA $49
    STA $41
    LDA $4A
    STA $42
    LDA $47
    STA $43
    LDA $48
    STA $44
    LDA $3D
    STA $38
    LDX $3E
    BEQ ++
-   LDA ($41),Y
    CMP ($43),Y
    BNE .l9EFE
    INC $41
    BNE +
    INC $42
+   INC $43
    BNE +
    INC $44
+   DEX
    BNE -
++  DEC $38
    BPL -
    SEC
    LDA $49
    SBC $45
    TAY
    LDA $4A
    SBC $46
    TAX
    JMP .l9E90
---------------------------------
.l9EFE  INC $49
    BNE +
    INC $4A
+   LDA $40
    BNE +
    DEC $3F
+   DEC $40
    JMP .l9EB4
---------------------------------
.l9F0F  LDA #$0B
    JSR P3_8400
    LDY #$00
    LDA $07
    STA $31
    STA ($47),Y
    INY
    LDA $08
    STA $32
    STA ($47),Y
    LDA $15
    STA $33
    INY
    LDA ($07),Y
    STA $1F
    JMP .l911F
---------------------------------
.l9F2F
    JSR .lBCF9
    PHA
    LDA #$0B
    JSR .l8471
    LDY #$02
-   LDA $0014,Y
    STA ($45),Y
    INY
    CPY #$0A
    BNE -
    LDA $C7CC
    STA ($45),Y
    LDX $2D
    LDA $2E
    STX $16
    STA $17
    LDX $2F
    LDA $30
    STX $1C
    STA $1D
    INC $C7D4
    BNE +
    INC $C7D5
+   LDA #$01
    STA $C7D3
    PLA
    JSR .lA069
    JSR .lBCB2
    LDA $C7C3
    PHA
    LDA $C7C4
    PHA

    JSR $CAEE
    !by PAGE2
    !word P2_A879

    PLA
    STA $C7C4
    PLA
    STA $C7C3
    LDA $16
    SEC
    SBC #$0B
    STA $47
    LDA $17
    SBC #$00
    STA $48
    LDY #$00
    LDA ($47),Y
    STA $31
    INY
    LDA ($47),Y
    STA $32
    LDY #$03
    LDA ($10),Y
    ORA #$80
    STA ($10),Y
    LDX $16
    LDA $17
-   STX $07
    STA $08
    LDY #$02
    LDA ($07),Y
    TAX
    BEQ +++
    INY
    LDA ($07),Y
    BEQ +
    CMP #$CF
    BNE ++
+   TXA
    CLC
    ADC $07
    TAX
    LDA $08
    ADC #$00
    BNE -
++  LDA ($31),Y
    CMP ($07),Y
    BNE +++
    LDY #$0A
    LDX #$0E
-   INY
    LDA ($31),Y
    CMP #$7E
    BCS ++++
    CMP ($07),Y
    BNE .lA005
    CMP #$78
    BCC +
    INY
    LDA ($31),Y
    CMP ($07),Y
    BNE .lA005
+   INY
    LDA ($07),Y
    CLC
    ADC $18
    PHA
    INY
    LDA ($07),Y
    ADC $19
    PHA
    STY $15
    TXA
    TAY
    ADC #$05
    TAX
    PLA
    STA ($10),Y
    DEY
    PLA
    STA ($10),Y
    LDY $15
    BNE -
.lA005  LDX #$43
    !by $2C
+++ LDX #$44
    JMP P3_BF44
---------------------------------
++++LDA #$7F
    CMP ($07),Y
    BNE .lA005
    INY
    STY $15
    LDA #$00
    STA $C7D3
    LDY #$0A
    LDA ($07),Y
    BNE +
    LDY #$04
    CLC
    LDA ($07),Y
    ADC $18
    STA $45
    INY
    LDA ($07),Y
    ADC $19
    STA $46
    JMP .l8794
---------------------------------
+   JMP .l9B35
---------------------------------
.lA037  LDA $16
    STA $2D
    LDA $17
    STA $2E
    LDA $1C
    STA $2F
    LDA $1D
    STA $30
    LDA #$0B
    JSR .l8471
    LDY #$02
-   LDA ($45),Y
    STA $0014,Y
    INY
    CPY #$0A
    BNE -
    LDA ($45),Y
    STA $C7CC
    LDA $C7D4
    BNE +
    DEC $C7D5
+   DEC $C7D4
    RTS
---------------------------------
.lA069  JMP ($C7E0)
---------------------------------
.lA06C
    LDA #$05
    JSR .l8422
    LDA #$02
    STA ($10),Y
    INY
    LDA $31
    STA ($10),Y
    INY
    LDA $32
    STA ($10),Y
    JMP .l9103
---------------------------------
.lA082
    JSR .l8450
    JMP .lADC2
---------------------------------
.lA088
    JSR .l8450
    JMP .l9103
---------------------------------
.lA08E
    LDA #$03
    JSR .lA156
    BCC .lA0A3
    LDY #$05
    LDA ($41),Y
    TAX
    INY
    LDA ($41),Y
    JSR P3_8536
    JMP .l911F
---------------------------------
.lA0A3  JMP .lA20B
---------------------------------
.lA0A6
    LDA #$03
    JSR .lA156
    BCC .lA0A3
    LDY #$07
    LDA ($41),Y
    JSR .l858B
    JMP .l911F
---------------------------------
.lA0B7
    LDA #$03
    JSR .lA156
    BCC +
    LDY #$08
    LDA ($41),Y
+   STA $43
    CLC
    ADC #$02
    JSR P3_8400
    LDA $41
    CLC
    ADC #$08
    STA $41
    BCC +
    INC $42
+   LDY $43
    BEQ +
-   LDA ($41),Y
    DEY
    STA ($47),Y
    BNE -
+   TYA
    LDY $43
    STA ($47),Y
    TYA
    INY
    STA ($47),Y
    JMP .l911F
---------------------------------
.lA0EC
    LDA #$03
    JSR .lA156
    BCC +
    INY
    LDA ($41),Y
    STA $31
    INY
    LDA ($41),Y
    STA $32
    LDY #$08
    LDA ($41),Y
    STA $0200
    TAX
-   INY
    LDA ($41),Y
    STA $01F8,Y
    DEX
    BNE -
    LDY #$05
    LDA ($41),Y
    STA $43
    INY
    LDA ($41),Y
    STA $44
    JMP .lA183
---------------------------------
+   LDX #$00
    !by $2C
-   LDX #$01
    JMP P3_BF32
---------------------------------
.lA124
    JSR P3_8CBA
    LDA $49
    BNE -
    LDY $4A
    CPY #$50
    BCS -
    STY $0200
-   DEY
    BMI +
    LDA ($45),Y
    STA $0201,Y
    BCC -
+   JSR .l8C15
    LDX $65
    LDA $64
    STX $44
    STA $43
    JMP .lA183
---------------------------------
.lA14C
    JSR .l8C15
    LDX $65
    LDA $64
    JMP P3_A176
---------------------------------
.lA156  STA $3B
    LDX $10
    LDA $11
    BEQ +
-   STX $41
    STA $42
    LDY #$02
    LDA ($41),Y
    CMP $3B
    BEQ ++
    LDY #$00
    LDA ($41),Y
    TAX
    INY
    LDA ($41),Y
    BNE -
+   CLC
++  RTS
---------------------------------
P3_A176
    STX $44
    STA $43
    STY $3F
    LDX $C7BC
    TXS
    JSR .lBEC9
.lA183  LDA #$02
    JSR .lA156
    BCC .lA201
    LDA $32
    PHA
    LDA $31
    PHA
.lA190  LDY #$02
    LDA ($10),Y
    CMP #$02
    BEQ +++
    BCC ++
    CMP #$0C
    BEQ +
    JSR .l8450
    JMP .lA190
---------------------------------
+   JSR .lA7F2
    JMP .lA190
---------------------------------
++  JSR .lAAEC
    JSR .l8450
    JMP .lA190
---------------------------------
+++ LDX $10
    LDA $11
    STX $2D
    STA $2E
    CLC
    LDA #$09
    ADC $0200
    JSR P3_8400
    LDY #$02
    LDA #$03
    STA ($10),Y
    INY
    LDA ($10),Y
    STA $31
    PLA
    STA ($10),Y
    INY
    LDA ($10),Y
    STA $32
    PLA
    STA ($10),Y
    INY
    LDA $43
    STA ($10),Y
    INY
    LDA $44
    STA ($10),Y
    INY
    LDA $3F
    STA ($10),Y
    INY
    LDA $0200
    STA ($10),Y
    TAX
-   INY
    LDA $01F8,Y
    STA ($10),Y
    DEX
    BNE -
    STX $0200
    LDY #$04
    JMP .lADC4
---------------------------------
.lA201  JMP .lBF4D
---------------------------------
.lA204
    JSR .l850A
    BNE .lA20E
    BEQ .lA215
.lA20B  JSR .l83FE
.lA20E  LDA #$00
    BEQ +
.lA212  JSR .l83FE
.lA215  LDA #$81
+   DEC $2E
    LDY #$FB
    STA ($2D),Y
    LDA #$00
    INY
    STA ($2D),Y
    INY
    STA ($2D),Y
    INY
    STA ($2D),Y
    INY
    STA ($2D),Y
    INC $2E
    JMP .l911F
---------------------------------
.lA230
    LDX #$3A
    LDA #$A2
    JSR P3_8514
    JMP .l911F
---------------------------------
.lA23A    !by $82,$49,$0F,$DA,$A2

.lA23F
    JSR .l8502
    BEQ .lA20E
.lA244
    JSR .l850A
    BNE .lA215
    JMP .l911F
---------------------------------
.lA24C
    JSR .l850A
    BEQ +
-   JSR .l848F
    INC $33
    JMP .l911F
---------------------------------
+   LDY $33
    LDA ($31),Y
    STA $33
    JMP .l911F
---------------------------------
.lA262
    JSR .l8502
    BNE .lA215
.lA267
    JSR .l850A
    BNE .lA215
    JMP .l911F
---------------------------------
.lA26F
    JSR .l850A
    BEQ -
    LDY $33
    LDA ($31),Y
    STA $33
    BNE .lA215
.lA27C  JSR .lA285
    STA $49
    LDA $65
    STA $4A
.lA285  JSR .l8C15
    LDA $64
    CLC
    RTS
---------------------------------
.lA28C
    JSR .lA27C
    AND $49
    TAX
    LDA $65
    AND $4A
.lA296  JSR P3_8536
    JMP .l911F
---------------------------------
.lA29C
    JSR .lA27C
    ORA $49
    TAX
    LDA $65
    ORA $4A
    BCC .lA296
.lA2A8
    JSR .lA27C
    EOR $49
    TAX
    LDA $65
    EOR $4A
    BCC .lA296
.lA2B4  SEC
    LDA $2D
    SBC #$05
    STA $49
    LDA $2E
    SBC #$00
    STA $4A
    LDA $2D
    SBC #$08
    STA $2D
    BCS +
    DEC $2E
+   LDY #$02
    LDA ($2D),Y
    CMP #$02
    BNE +
    DEY
    LDA ($2D),Y
    STA $48
    DEY
    LDA ($2D),Y
    STA $47
    RTS
---------------------------------
+   LDX #$3E
    JMP P3_BF44
---------------------------------
.lA2E3  JSR .lA2B4
    JSR .l851B
    JMP .l911F
---------------------------------
.lA2EC  JSR .lA2B4
    LDA $49
    LDY $4A
    JSR .l85DB
    JMP .lA33E
---------------------------------
.lA2F9
    LDX #$12
    JSR .l88F7
    JSR P3_8CBA
    LDY #$01
    JSR .l8AFF
    JMP .l911F
---------------------------------
.lA309
    LDX #$10
    JSR .l88F7
    SEC
    LDA $2D
    SBC #$05
    STA $2D
    BCS +
    DEC $2E
+   LDY #$00
    LDA ($2D),Y
    STA ($47),Y
    INY
    LDA ($2D),Y
    STA ($47),Y
    INY
    LDA ($2D),Y
    STA ($47),Y
    INY
    LDA ($2D),Y
    STA ($47),Y
    INY
    LDA ($2D),Y
    STA ($47),Y
    JMP .l911F
---------------------------------
.lA336
    JSR .l85CE
    LDX #$11
    JSR .l88F7
.lA33E  LDY #$00
    LDA $64
    STA ($47),Y
    INY
    LDA $65
    STA ($47),Y
    JMP .l911F
---------------------------------
.lA34C
    JSR .l8AE4
    JMP .l911F
---------------------------------
.lA352
    JSR .lA2B4
    LDY $48
    JSR $CBE7
    LDA $49
    LDY $4A
    JSR $CC0C
    JSR $CA4B
.lA364  LDX $47
    LDY $48
    JSR $CAA0
    JMP .l911F
---------------------------------
.lA36E
    JSR .lA2B4
    LDA $49
    LDY $4A
    JSR .l85DB
    LDY #$01
    LDA ($47),Y
    CLC
    ADC $65
    TAX
    DEY
    LDA ($47),Y
    ADC $64
.lA385  BVS +
    STA ($47),Y
    INY
    TXA
    STA ($47),Y
    JMP .l911F
---------------------------------
+   LDX #$02
    JMP P3_BF32
---------------------------------
.lA395
    JSR P3_8CBA
    LDA #$03
    JSR P3_8483
    LDY #$02
    LDA ($2D),Y
    CMP #$02
    BEQ +
    LDX #$38
    JMP P3_BF44
---------------------------------
+   LDY #$00
    LDA ($2D),Y
    STA $3D
    INY
    LDA ($2D),Y
    STA $3E
    INY
    LDA ($3D),Y
    STA $3F
    INY
    LDA ($3D),Y
    STA $40
    LDY #$01
    LDA ($3D),Y
    SBC $40
    TAX
    DEY
    LDA ($3D),Y
    SBC $3F
    STA $41
    CPX $4A
    SBC $49
    BCS +
    LDA $41
    STA $49
    STX $4A
+   CLC
    LDA $3D
    ADC #$04
    TAX
    LDA $3E
    ADC #$00
    TAY
    TXA
    ADC $40
    STA $47
    TYA
    ADC $3F
    STA $48
    LDY #$03
    LDA $40
    ADC $4A
    STA ($3D),Y
    DEY
    LDA $3F
    ADC $49
    STA ($3D),Y
    JSR P3_82F4
    JMP .l911F
---------------------------------
.lA403
    JSR .lA2B4
    LDA $49
    LDY $4A
    JSR $CBE7
    LDA $47
    LDY $48
    JSR $CC0C
    JSR $CA5F
    JMP .lA364
---------------------------------
.lA41A
    JSR .lA2B4
    LDA $49
    LDY $4A
    JSR .l85DB
    LDY #$01
    SEC
    LDA ($47),Y
    SBC $65
    TAX
    DEY
    LDA ($47),Y
    SBC $64
    JMP .lA385
---------------------------------
.lA434
    JSR .l8C65
    CMP #$50
    BCS +
    STA $C7C5
    JMP .l911F
---------------------------------
+   LDX #$05
    !by $2C
.lA444  LDX #$01
    JMP P3_BF32
---------------------------------
.lA449
    DEC $2E
    LDY #$FC
    LDA ($2D),Y
    AND #$7F
    STA ($2D),Y
    INC $2E
    JMP .l911F
---------------------------------
.lA458
    JSR P3_8CBA
    LDA $49
    ORA $4A
    BEQ .lA444
    LDY #$00
    LDA ($2D),Y
    JMP .lA46B
---------------------------------
.lA468
    LDA $C7C5
.lA46B
    JSR .l858B
    JMP .l911F
---------------------------------
.lA471
    JSR P3_84BE
    JSR $C94A
    JSR P3_84B4
    JMP .l911F
---------------------------------
.lA47D
    JSR .l8C65
    LDY #$00
    STA ($2D),Y
    TYA
    INY
    STA ($2D),Y
    TYA
    INY
    STA ($2D),Y
    SEC
    TYA
    ADC $2D
    STA $2D
    BCC +
    INC $2E
+   JMP .l911F
---------------------------------
.lA499
    JSR P3_84BE
    JSR $C926
    JSR P3_84B4
    JMP .l911F
---------------------------------
.lA4A5
    PHP
    SEI
    LDA $4D
    TAX
    AND #$F7
    STA $4D
    PLP
    TXA
    AND #$08
    BEQ +
    JMP .lA212
---------------------------------
+   JMP .lA20B
---------------------------------
.lA4BA
    JSR P3_84BE
    JSR $C953
    JSR P3_84B4
    JMP .l911F
---------------------------------
.lA4C6
    JSR P3_84BE
    JSR $C980
    JSR P3_84B4
    JMP .l911F
---------------------------------
-   LDA #$01
    JSR P3_8483
.lA4D7
    JSR P3_8CBA
    LDA $4A
    LDX $49
    JSR P3_8536
    JMP .l911F
---------------------------------
.lA4E4
    DEC $2E
    LDY #$FF
    LDA ($2D),Y
    INC $2E
    CMP #$06
    BEQ -
    JSR .l89B9
    LDX $4A
    LDA $49
    JSR P3_8547
    JMP .l911F
---------------------------------
.lA4FD
    JSR P3_84BE
    JSR $C95C
    JSR P3_84B4
    JMP .l911F
---------------------------------
.lA509
    JSR P3_84BE
    LDA $61
    BNE +
    LDX #$05
    TXA
-   STA $61,X
    DEX
    BPL -
+   LDA $66
    BPL +
    DEC $62
    INC $65
+   LDA $66
    ORA #$80
    STA $66
    JSR $C965
    JMP .l911F
---------------------------------
.lA52C
    LDA #$00
    STA $61
    JSR $C965
    JMP .l911F
---------------------------------
.lA536
    JSR .lA573
    JSR P3_84B4
    JMP .l911F
---------------------------------
.lA53F
    JSR P3_84C6
    JSR P3_84BE
    JSR P3_84B4
    JSR $CA5F
    LDA #$49
    LDY #$CF
    JSR $CC0C
    JSR $CA4B
    JSR P3_84B4
    JSR .lA573
    JSR $C8F9
    JSR P3_84BE
    JSR $CA6E
    JSR $C980
    JSR .l84CE
    JSR $CA4B
    JSR .l84B7
    JMP .l911F
---------------------------------
.lA573  LDA #$7F
    STA $61
    STA $66
    JMP $C965
---------------------------------
.lA57C
    JSR P3_84BE
    JSR $C914
    JSR P3_84B4
    JMP .l911F
---------------------------------
.lA588
    JSR P3_84BE
    JSR $C91D
    JSR P3_84B4
    JMP .l911F
---------------------------------
.lA594
    JSR .l85CE
    LDA $64
    BPL +
    JMP .lA444
---------------------------------
+   LDA $2D
    STA $47
    LDA $2E
    STA $48
    CLC
    LDA $2D
    ADC $65
    STA $2D
    TAX
    LDA $2E
    ADC $64
    STA $2E
    BCS +
    CPX $2F
    SBC $30
    BCC ++
+   JMP .l8EAC
---------------------------------
++  LDA $65
    STA $4A
    LDA $64
    STA $49
    ORA $65
    BEQ ++
    LDA #$20
    LDY #$00
.lA5CF  STA ($47),Y
    INC $47
    BNE +
    INC $48
+   LDX $65
    BNE +
    DEC $64
    BMI ++
+   DEC $65
    JMP .lA5CF
---------------------------------
++  LDA #$02
    JSR P3_8400
    LDY #$00
    LDA $49
    STA ($47),Y
    INY
    LDA $4A
    STA ($47),Y
    JMP .l911F
---------------------------------
.lA5F7
    JSR P3_84BE
    JSR $C92F
    JSR P3_84B4
    JMP .l911F
---------------------------------
.lA603
    JSR P3_84BE
    JSR $C938
    JSR P3_84B4
    JMP .l911F
---------------------------------
.lA60F
    PHP
    SEI
    LDA $A0
    STA $62
    LDA $A1
    STA $63
    LDA $A2
    STA $64
    PLP
    LDA #$00
    STA $65
    STA $66
    STA $69
    LDA #$98
    STA $61
-   BIT $62
    BMI +
    ASL $64
    ROL $63
    ROL $62
    DEC $61
    BNE -
+   JSR P3_84B4
    JMP .l911F
---------------------------------
.lA63E
    LDA $2C
    BEQ .lA653
    LDY #$00
    LDA ($2B),Y
    CMP #$AB
    BNE .lA650
    INY
    INY
    LDA ($2B),Y
    BEQ .lA653
.lA650  JMP .lA20B
---------------------------------
.lA653  JMP .lA212
---------------------------------
.lA656
   JSR .l8CA4
    STA $B8
    JSR $CE8A
    BNE +
    LDA $C822,X
    AND #$40
    BNE .lA653
    BEQ .lA650
+   LDX #$CB
    JMP P3_BF2F
---------------------------------
.lA66E
    JSR .l8E10
    JMP .l911F
---------------------------------
.lA674
    JSR .lA67A
.lA677  JMP .lB2C0
---------------------------------
.lA67A  JSR P3_8D2A
    JSR $CDF4
    LDY #$06
    LDA $C844
    TAX
    AND #$04
    BEQ ++
    TXA
    AND #$20
    BEQ +
    LDA #$02
    !by $2C
+   LDA #$01
    CLC
    ADC ($10),Y
    STA ($10),Y
    RTS
---------------------------------
++  LDA #$00
    JMP .l8DA0
---------------------------------
.lA69F
    JSR .lA765
    JMP .lA677
---------------------------------
.lA6A5
    JSR .l85CE
    LDA $64
    BPL +
-   LDX #$05
    JMP P3_BF32
---------------------------------
+   JSR .l8D0A
    BEQ .lA6C0
    LDA $64
    BNE -
    LDA $65
    BEQ -
    BNE ++
.lA6C0  LDA $64
    BNE +
    LDA $65
    BEQ -
    CMP #$51
    BCC ++
+   JSR .lA67A
    SEC
    LDA $65
    SBC #$50
    STA $65
    BCS .lA6C0
    DEC $64
    BPL .lA6C0
++  DEC $65
    JSR .l8D71
    CMP $65
    BEQ ++
    BCC +
    JSR .lA67A
+   JSR P3_8D2A
.lA6ED  JSR .l8D71
    CMP $65
    BEQ ++
    JSR $CE03
    JSR .l8D87
    JMP .lA6ED
---------------------------------
++  JMP .l911F
---------------------------------
.lA700
    JSR P3_84BE
    JSR $C99B
    JSR P3_8D2A
    LDX #$00
    STX $7C
    INX
    STX $7D
    LDX #$00
-   LDA $0100,X
    BEQ +
    INX
    BNE -
+   LDA $0100
    CMP #$20
    BNE +
    DEX
    INC $7C
+   STX $38
    JSR .l8D71
    CLC
    ADC $38
    CMP #$50
    PHA
    BCC .lA74C
    LDY #$07
    LDA ($10),Y
    BNE .lA74C
    LDA $C7DD
    BEQ +
    PLA
    CMP #$84
    BCS ++
    PHA
    JMP .lA74C
---------------------------------
+   PLA
++  JSR $CDF4
    LDA $38
    PHA
.lA74C  PLA
    JSR .l8DA0
    JSR .l8348
    JMP .l911F
---------------------------------
.lA756
    JSR P3_8D2A
    JSR .lB302
    JMP .l911F
---------------------------------
.lA75F
    JSR .lA765
    JMP .l911F
---------------------------------
.lA765  LDA $C7C5
    BEQ .lA7A9
    JSR P3_8D2A
    LDY #$07
    LDA ($10),Y
    BNE +++
    JSR .l8D71
    CLC
    ADC $C7C5
    LDX $C7DD
    BEQ +
    CMP #$85
    BCC +++
    BCS ++
+   CMP #$51
    BCC +++
++  JSR $CDF4
    LDA #$00
    JSR .l8DA0
    JMP .lA7A9
---------------------------------
+++ JSR .l8D71
-   SEC
    SBC $C7C5
    BPL -
    STA $3B
-   JSR $CE03
    JSR .l8D87
    INC $3B
    BMI -
.lA7A9  RTS
---------------------------------
.lA7AA
    JSR .lA7B0
    JMP .l911F
---------------------------------
.lA7B0  JSR P3_8D2A
    JSR $CE03
    JMP .l8D87
---------------------------------
.lA7B9
    JSR .l8502
    BEQ +
-   JMP .l9103
---------------------------------
+   LDY $33
    LDA ($31),Y
    TAX
    INY
    LDA ($31),Y
    STX $31
    STA $32
    LDY #$02
    LDA ($31),Y
    STA $1F
    LDY #$06
    STY $33
    JMP .l911F
---------------------------------
.lA7DA
    JSR .l8502
    BEQ -
    JMP .l911F
---------------------------------
.lA7E2
    LDY #$06
    JMP .lADC4
---------------------------------
.lA7E7
    LDX #$3D
    JMP P3_BF44
---------------------------------
.lA7EC
    JSR .lA7F2
    JMP .l911F
---------------------------------
.lA7F2  LDY #$03
    LDA ($10),Y
    STA $39
    BPL +
    JSR .lA037
    JMP .lA8B6
---------------------------------
+   LDY #$07
    LDA ($10),Y
    BEQ .lA83E
    TAX
    LDA $10
    CLC
    ADC #$09
    STA $3D
    LDA $11
    ADC #$00
    STA $3E
-   LDY #$05
    LDA ($3D),Y
    STA $46
    DEY
    LDA ($3D),Y
    STA $45
    DEY
    LDA ($3D),Y
    STA ($45),Y
    DEY
    LDA ($3D),Y
    STA ($45),Y
    DEY
    LDA ($3D),Y
    STA ($45),Y
    DEX
    BEQ .lA83E
    CLC
    LDA $3D
    ADC #$05
    STA $3D
    BCC -
    INC $3E
    BCS -
.lA83E  LDA $39
    AND #$10
    BNE .lA881
    LDY #$09
    LDA ($10),Y
    BEQ +
    STA $3E
    DEY
    LDA ($10),Y
    STA $3D
-   LDY #$03
    LDA ($3D),Y
    STA $45
    INY
    LDA ($3D),Y
    STA $46
    LDY #$00
    LDA ($3D),Y
    INY
    STA ($45),Y
    LDA ($3D),Y
    INY
    STA ($45),Y
    LDA ($3D),Y
    INY
    STA ($45),Y
    LDY #$05
    LDA ($3D),Y
    BEQ .lA8EB
    CLC
    ADC $3D
    STA $3D
    BCC -
    INC $3E
    BCS -
+   JMP .lA8EB
---------------------------------
.lA881  LDY #$05
    LDA ($0E),Y
    STA $46
    DEY
    LDA ($0E),Y
    STA $45
    DEY
    LDA ($0E),Y
    STA ($45),Y
    DEY
    LDA ($0E),Y
    STA ($45),Y
    DEY
    LDA ($0E),Y
    STA ($45),Y
    LDY #$06
    LDA ($0E),Y
    TAX
    INY
    LDA ($0E),Y
    STX $0E
    STA $0F
    BNE .lA881
    LDA $34
    CLC
    ADC #$08
    STA $2F
    LDA $35
    ADC #$00
    STA $30
.lA8B6  LDY #$01
    LDA ($34),Y
    STA $2B
    INY
    LDA ($34),Y
    STA $2C
    INY
    LDA ($34),Y
    STA $C7C3
    INY
    LDA ($34),Y
    STA $C7C4
    INY
    LDA ($34),Y
    STA $36
    INY
    LDA ($34),Y
    STA $37
    INY
    LDA ($34),Y
    TAX
    INY
    LDA ($34),Y
    STX $34
    STA $35
    LDA ($10),Y
    STA $0E
    INY
    LDA ($10),Y
    STA $0F
.lA8EB  BIT $39
    BVC +
    LDA $C7C8
    BMI +
    PHP
    SEI
    LDA $4D
    ORA #$10
    STA $4D
    PLP
+   LDY #$06
    LDA ($10),Y
    STA $33
    DEY
    LDA ($10),Y
    STA $32
    DEY
    LDA ($10),Y
    STA $31
    LDY #$02
    LDA ($31),Y
    STA $1F
    JMP .l8450
---------------------------------
.lA916
    JSR P3_865D
    DEY
    STY $3A
    STY $41
    STA $38
    AND #$1F
    CMP #$14
    BNE +
    JMP .l946D
---------------------------------
.lA929
    JSR P3_865D
    DEY
    STY $38
.lA92F  AND #$1F
    CMP #$14
    BNE +
    JMP .l8723
---------------------------------
+   AND #$10
    BEQ +
    LDA #$F6
    !by $2C
+   LDA #$F5
    JMP P3_8AD9
---------------------------------
.lA944
    LDA #$08
    STA $33
    JSR .l8422
    LDA #$0D
    STA ($10),Y
    JMP .l911F
---------------------------------
.lA952
    LDY #$03
    LDA ($31),Y
    AND #$01
    STA $38
    DEY
    STA ($10),Y
    LDY #$04
    LDA ($31),Y
    CLC
    ADC $18
    STA $45
    INY
    LDA ($31),Y
    ADC $19
    STA $46
    DEY
    STA ($10),Y
    DEY
    LDA $45
    STA ($10),Y
    LDY #$01
    LDA ($45),Y
    PHA
    INY
    LDA ($45),Y
    TAX
    INY
    LDA ($45),Y
    LDY #$07
    STA ($10),Y
    TXA
    DEY
    STA ($10),Y
    PLA
    DEY
    STA ($10),Y
    LDA $38
    ORA #$10
    LDY #$01
    STA ($45),Y
    INY
    CLC
    LDA $10
    ADC #$08
    STA ($45),Y
    INY
    LDA $11
    ADC #$00
    STA ($45),Y
    LDA $38
    BEQ .lA9AB
    JSR .l849B
.lA9AB  JMP .l911F
---------------------------------
.lA9AE
    LDY #$02
    LDA ($10),Y
    BEQ .lA9B7
    JSR .l849B
.lA9B7  LDY $33
    LDA ($31),Y
    CMP #$87
    BEQ +
    CMP #$88
    BNE .lA9AB
+   JMP .lA212
---------------------------------
.lA9C6
    LDA #$00
    !by $2C
.lA9C9
    LDA #$02
    STA $3A
    LDY #$02
    LDA ($10),Y
    STA $38
    BEQ +
    JSR .l849B
    LDA $64
    ORA $65
    BEQ ++
    JSR .lAA3C
    JSR .lAA64
    JMP .lAA89
---------------------------------
+   LDY #$12
    LDA ($10),Y
    BNE +
++  LDX #$06
    JMP P3_BF32
---------------------------------
+   JSR .lA9FB
    JSR .lAA26
    JMP .lAA89
---------------------------------
.lA9FB  CLC
    LDY $11
    LDA $10
    ADC #$08
    BCC +
    INY
+   STA $3B
    STY $3C
    JMP $CBE7
---------------------------------
.lAA0C  JSR .lA9FB
    CLC
    LDY $11
    LDA $10
    ADC #$12
    BCC +
    INY
+   JSR $CC0C
    JSR $CA4B
    LDX $3B
    LDY $3C
    JSR $CAA0
.lAA26  CLC
    LDY $11
    LDA $10
    ADC #$0D
    BCC +
    INY
+   JSR $CA8C
    BEQ +
    EOR #$80
    LDY #$13
    EOR ($10),Y
+   RTS
---------------------------------
.lAA3C  LDY #$08
    LDA ($10),Y
    STA $3F
    INY
    LDA ($10),Y
    STA $40
    RTS
---------------------------------
.lAA48  JSR .lAA3C
    CLC
    LDY #$0D
    ADC ($10),Y
    STA $40
    DEY
    LDA $3F
    ADC ($10),Y
    STA $3F
    BVS ++
    LDY #$08
    STA ($10),Y
    INY
    LDA $40
    STA ($10),Y
.lAA64  LDY #$0C
    LDA ($10),Y
    BMI +
    DEY
    LDA ($10),Y
    CMP $40
    DEY
    LDA ($10),Y
    SBC $3F
    BVS ++
    RTS
---------------------------------
+   DEY
    LDA $40
    CMP ($10),Y
    DEY
    LDA $3F
    SBC ($10),Y
    BVS ++
    RTS
---------------------------------
++  LDX #$02
    JMP P3_BF32
---------------------------------
.lAA89  BMI +
    LDA $3A
    BEQ ++
    JMP .l911F
---------------------------------
+   JSR .lAAEC
    JSR .l8450
    LDA $3A
    BNE ++
    LDY #$06
    JMP .lADC4
---------------------------------
++  JMP .l9103
---------------------------------
.lAAA4
    LDY #$02
    LDA ($10),Y
    BNE +
    JSR .lAA0C
    JMP .lAAB3
---------------------------------
+   JSR .lAA48
.lAAB3  BMI ++
    LDY #$06
    LDA ($31),Y
    STA $33
.lAABB  BIT $54
    BMI +
-   JMP .l911F
---------------------------------
+   LDA #$00
    STA $54
    LDA $4D
    AND #$02
    BNE -
    JMP .l91B0
---------------------------------
.lAACF
    JSR .lAA0C
    BMI ++
    LDY #$06
    JMP .lADC4
---------------------------------
.lAAD9
    JSR .lAA48
    BMI ++
    LDY #$06
    JMP .lADC4
---------------------------------
++  JSR .lAAEC
    JSR .l8450
    JMP .l9103
---------------------------------
.lAAEC  LDY #$03
    LDA ($10),Y
    STA $45
    INY
    LDA ($10),Y
    STA $46
    INY
    LDA ($10),Y
    PHA
    INY
    LDA ($10),Y
    TAX
    INY
    LDA ($10),Y
    LDY #$03
    STA ($45),Y
    DEY
    TXA
    STA ($45),Y
    DEY
    PLA
    STA ($45),Y
    RTS
---------------------------------
.lAB0F
    LDA #$00
    !by $2C
.lAB12
    LDA #$01
    !by $2C
.lAB15
    LDA #$02
    STA $38
    JSR P3_865D
    LDA #$0A
    JSR .l8422
    CLC
    LDA #$0E
    ADC $38
    STA ($10),Y
    INY
    LDA $45
    STA ($10),Y
    INY
    LDA $46
    STA ($10),Y
    LDY #$07
    LDA #$00
    STA ($10),Y
    INY
    LDA #$01
    STA ($10),Y
    INY
    LDA #$00
    STA ($10),Y
    JSR .lBFBE
    STA $3A
    TAX
    BEQ +
    ASL
    ASL
    ADC #$03
    STA $3D
    SEC
    LDA $2F
    SBC $3D
    STA $3B
    LDA $30
    SBC #$00
    STA $3C
    LDX $2D
    LDA $2E
    CPX $3B
    SBC $3C
    BCS .lAB8F
    LDY #$05
    LDA $3B
    STA $2F
    ADC #$01
    STA ($10),Y
    INY
    LDA $3C
    STA $30
    ADC #$00
    STA ($10),Y
    LDY #$03
    LDA $3A
    STA ($3B),Y
    INY
    LDA #$00
-   STA ($3B),Y
    EOR #$01
    INY
    CPY $3D
    BNE -
+   JMP .l911F
---------------------------------
.lAB8F  LDX #$34
    JMP P3_BF32
---------------------------------
.lAB94
    JSR .l85CE
    LDY #$09
    LDA ($10),Y
    ASL
    ASL
    LDY #$05
    ADC ($10),Y
    STA $3B
    INY
    LDA ($10),Y
    ADC #$00
    STA $3C
    LDY #$03
    LDA $64
    STA ($3B),Y
    INY
    LDA $65
    STA ($3B),Y
    JMP .l911F
---------------------------------
.lABB8
    STX $43
    JSR .l85CE
    LDY #$09
    LDA ($10),Y
    TAX
    INX
    TXA
    STA ($10),Y
    DEX
    TXA
    ASL
    ASL
    LDY #$05
    ADC ($10),Y
    STA $3B
    INY
    LDA ($10),Y
    ADC #$00
    STA $3C
    LDY #$04
    SEC
    LDA $65
    SBC ($3B),Y
    STA $28
    DEY
    LDA $64
    SBC ($3B),Y
    STA $29
    BPL +
    LDX #$07
    JMP P3_BF32
---------------------------------
+   LDY #$05
    LDA $64
    STA ($3B),Y
    INY
    LDA $65
    STA ($3B),Y
    INC $28
    BNE +
    INC $29
+   LDY #$07
    LDA ($10),Y
    STA $27
    INY
    LDA ($10),Y
    STA $26
    JSR .l90BD
    TYA
    LDY #$07
    STA ($10),Y
    INY
    TXA
    STA ($10),Y
    LDX $43
    CPX #$92
    BEQ +
-   JMP .l911F
---------------------------------
+   LDY #$02
    LDA ($10),Y
    CMP #$10
    BEQ -
    AND #$01
    STA $38
    LDY #$07
    LDA ($10),Y
    STA $3D
    STA $3F
    INY
    LDA ($10),Y
    STA $3E
    STA $40
    LDA $38
    BNE +
    ASL $40
    ROL $3F
    BCS .lAC4A
    ASL $40
    ROL $3F
    BCC +
.lAC4A  JMP .lAB8F
---------------------------------
+   LDA $40
    ADC $3E
    STA $3E
    LDA $3F
    ADC $3D
    STA $3D
    BCS .lAC4A
    SEC
    LDA $2F
    SBC $3E
    STA $45
    LDA $30
    SBC $3D
    STA $46
    BCC .lAC4A
    LDX $2D
    LDA $2E
    CPX $45
    SBC $46
    BCS .lAC4A
    LDY #$05
    LDA ($10),Y
    STA $3B
    INY
    LDA ($10),Y
    STA $3C
    LDY #$00
    LDA $45
    STA $2F
    ADC #$01
    STA ($3B),Y
    STA $3F
    INY
    LDA $46
    STA $30
    ADC #$00
    STA ($3B),Y
    STA $40
    DEY
    SEC
    TYA
    SBC $3E
    STA $3E
    TYA
    SBC $3D
    STA $3D
    TYA
-   STA ($3F),Y
    INC $3F
    BNE +
    INC $40
+   INC $3E
    BNE -
    INC $3D
    BNE -
    LDA $38
    ORA #$90
    JSR .lADA1
    LDA $3B
    STA ($45),Y
    INY
    LDA $3C
    STA ($45),Y
    JSR .l8450
    JMP .l911F
---------------------------------
-   LDX #$07
    JMP P3_BF32
---------------------------------
.lACCE  JMP .lAB8F
---------------------------------
.lACD1
    JSR .l85CE
    LDA $64
    BMI -
    CLC
    LDA $65
    ADC #$04
    STA $65
    BCC +
    INC $64
+   LDY #$05
    LDA ($10),Y
    STA $3B
    INY
    LDA ($10),Y
    STA $3C
    INY
    LDA ($10),Y
    STA $27
    STA $41
    INY
    LDA ($10),Y
    STA $26
    STA $42
    LDA $64
    STA $29
    LDA $65
    STA $28
    JSR .l90BD
    STX $3E
    STY $3D
    SEC
    LDA $2F
    SBC $3E
    STA $3F
    LDA $30
    SBC $3D
    STA $40
    BCC .lACCE
    LDX $2D
    LDA $2E
    CPX $3F
    SBC $40
    BCS .lACCE
    LDX $3F
    LDA $40
    STX $2F
    STA $30
    INC $3F
    BNE +
    INC $40
+   LDY #$09
    LDA ($10),Y
    BEQ +
    LDY #$00
    LDA $3F
    STA ($3B),Y
    INY
    LDA $40
    STA ($3B),Y
    LDA #$92
    JSR .lADA1
    LDA $3B
    STA ($45),Y
    INY
    LDA $3C
    STA ($45),Y
    BNE ++
+   LDA #$12
    JSR .lADA1
    LDA $3F
    STA ($45),Y
    INY
    LDA $40
    STA ($45),Y
++  LDA $42
    BNE +
    DEC $41
+   DEC $42
.lAD69  LDY #$01
    SEC
    LDA $65
    SBC #$04
    STA ($3F),Y
    DEY
    LDA $64
    SBC #$00
    STA ($3F),Y
    TYA
    LDY #$02
    STA ($3F),Y
    INY
    STA ($3F),Y
    CLC
    LDA $3F
    ADC $65
    STA $3F
    LDA $40
    ADC $64
    STA $40
    LDX $42
    BNE +
    DEC $41
    BMI ++
+   DEC $42
    JMP .lAD69
---------------------------------
++  JSR .l8450
    JMP .l911F
---------------------------------
.lADA1  TAX
    LDY #$03
    LDA ($10),Y
    STA $45
    INY
    LDA ($10),Y
    STA $46
    LDY #$01
    LDA ($45),Y
    BEQ +
    LDA #$C4
    JMP .l8ADE
---------------------------------
+   TXA
    STA ($45),Y
    INY
    RTS
---------------------------------
.lADBD
    JSR .l8502
    BNE .lADD1
.lADC2  LDY $33
.lADC4  LDA ($31),Y
    TAX
    INY
    LDA ($31),Y
    STX $31
    STA $32
    JMP .l910E
---------------------------------
.lADD1  JMP .l9103
---------------------------------
.lADD4
    JSR .l8502
    BEQ .lADD1
    JMP .l911F
---------------------------------
.lADDC
    LDA #$04
    BNE +
.lADE0
    JSR .l8502
    BNE .lADD1
    LDA #$03
+   STA $33
    JMP .lAABB
---------------------------------
.lADEC
    LDY $33
    LDA ($31),Y
    CLC
    ADC $18
    STA $45
    INY
    LDA ($31),Y
    ADC $19
    STA $46
    INY
    LDA ($31),Y
    STA $38
    LDY #$03
    LDA ($45),Y
    STA $48
    DEY
    LDA ($45),Y
    STA $47
    DEY
    LDA ($47),Y
    STA $32
    DEY
    LDA ($47),Y
    STA $31
    JSR .lAE1C
    JMP .l910E
---------------------------------
.lAE1C  LDA $38
    BNE +
    RTS
---------------------------------
+   LDY #$02
    LDA ($10),Y
    CMP #$02
    BCS +
    JSR .lAAEC
+   JSR .l8450
    DEC $38
    JMP .lAE1C
---------------------------------
.lAE34
    JSR .l8502
    BNE +
    INC $33
    INC $33
    INC $33
    JMP .l911F
---------------------------------
.lAE42
+   JSR .lBFBE
    STA $38
    JSR .lAE1C
    JMP .lADC2
---------------------------------
.lAE4D
    JSR .l91E7
.lAE50
    JSR $CDD6
    JSR $CDF4
    JSR P3_8CBA
    JSR .l8A5B
    JMP .l91D1
---------------------------------
.lAE5F
    JSR .lAE65
    JMP .l911F
---------------------------------
.lAE65  JSR P3_8CBA
    LDA $49
    BEQ +
--  LDX #$CE
    JMP P3_BF32
---------------------------------
+   LDY $4A
    BEQ --
    CPY #$78
    BCS --
    LDA #$0D
    !by $2C
-   LDA ($45),y
    STA $C5E8,Y
    DEY
    BPL -

    JSR $CAEE
    !by PAGE2
    !word P2_BCF8

    BNE --
.lAE8C  LDA $8A
    CMP #$20
    BNE +

    JSR $CAEE
    !by PAGE2
    !word P2_83FC

    JMP .lAE8C
---------------------------------
+   CMP #$0D
    BNE --
    RTS
---------------------------------
.lAEA0
    JSR P3_84BE
    JSR $C99B
    LDY #$00
    STY $38
    LDA $0100
    CMP #$2D
    BEQ +
    INY
+   STY $39
-   LDA $0100,Y
    BEQ +
    INY
    INC $38
    BNE -
+   STY $3A
    CLC
    LDA $38
    ADC #$02
    JSR P3_8400
    LDY #$00
    LDX $39
-   LDA $0100,X
    STA ($47),Y
    BEQ +
    INY
    INX
    BNE -
+   INY
    LDA $38
    STA ($47),Y
    JMP .l911F
---------------------------------
.lAEDF
    JSR P3_865D
    BEQ +
    CMP #$13
    BNE ++
    INY
    LDA ($45),Y
    STA $47
    INY
    LDA ($45),Y
    STA $48
    LDY #$00
    LDA ($47),Y
    STA $49
    ADC #$03
    STA $2B
    INY
    LDA ($47),Y
    STA $4A
    ADC #$00
    STA $2C
    LDY #$03
    LDA ($49),Y
    CMP #$AA
    BNE ++
    JMP .l911F
---------------------------------
+   LDA #$C3
    !by $2C
++  LDA #$C5
    JMP P3_8AD9
---------------------------------
.lAF18
    JSR .l8C65
    PHA
    JSR .l8C65
    TAX
    BNE +
    LDX $D6
    INX
+   DEX
    PLA
    TAY
    BNE +
    LDY $D3
    INY
    CPY #$29
    BCC +
    TYA
    SBC #$28
    TAY
+   DEY
    JSR .l8355
    JMP .l911F
---------------------------------
.lAF3C
    SEI
    LDA $4D
    AND #$FD
-   STA $4D
    CLI
    JMP .l911F
---------------------------------
; switch to commodore basic
.lAF47
    SEI
    LDA $4D
    ORA #$02
    BNE -
.lAF4E
    LDA #$0B
    JSR P3_8287
    JSR $FF81
    JSR $FF84
    LDA #$64
    JSR .l8E05

; copy COMAL restart routine to dec 50000

    LDY #$17
-   LDA .lAF75-1,Y
    STA $C34F,Y
    DEY
    BNE -
    SEI
    STY .l8009-1
    LDX #PAGE0

    JSR $CB5F
    !by PAGE0    ; $E0
    !word $C357

; COMAL restart routine
; call from basic with 'SYS 50000'
.lAF75
    SEI
    LDA #$37
    STA $01
    LDX #PAGE1
    LDY #$07
    LDA #$00
-   STA $DF00,Y
    DEY
    BPL -
    STX $DE00
    JMP ($FFFC)
---------------------------------
.lAF8C
--- LDY $33
    LDA ($31),Y
    TAX
    INY
    LDA ($31),Y
    BEQ +
    STX $31
    STA $32
    LDY #$02
    LDA ($31),Y
    STA $1F
    INY
    LDA ($31),Y
    CMP #$A8
    BEQ .lAFB3
    LDA #$06
    STA $33
    JMP .l911F
---------------------------------
+   LDX #$4E
    JMP P3_BF44
---------------------------------
.lAFB3  LDA $3F
    STA $2D
    LDA $40
    STA $2E
    JMP .l9103
---------------------------------
.lAFBE
    JSR .lAFCD
    BEQ .lAFB3
--  JMP .l911F
---------------------------------
.lAFC6
    JSR .lAFCD
    BNE ---
    BEQ .lAFB3
.lAFCD  SEC
    LDA $2D
    SBC #$05
    STA $2D
    BCS +
    DEC $2E
    SEC
+   SBC #$05
    STA $3F
    LDA $2E
    SBC #$00
    STA $40
    LDY #$00
    LDA ($2D),Y
    BEQ ++
    !by $2C
-   LDA ($2D),Y
    CMP ($3F),Y
    BNE +
    INY
    CPY #$05
    BNE -
+   RTS
---------------------------------
++  LDA ($3F),Y
    RTS
---------------------------------
.lAFF9
    JSR .lB007
    BNE --
    BEQ .lAFB3
.lB000
    JSR .lB007
    BNE ---
    BEQ .lAFB3
.lB007  JSR .l9074
    STX $3F
    STA $40
    LDA $45
    STA $2D
    LDA $46
    STA $2E
    LDX $3B
    CPX $3D
    BNE +
    LDA $3C
    CMP $3E
    BNE +
    JMP .l9E15
---------------------------------
+   RTS
---------------------------------
.lB026
    SEC
    TXA
    SBC #$B0
    STA $38
    LDY #$07
    LDA ($10),Y
    BNE +
    JMP .lB1D4
---------------------------------
+   JSR .l8D51
    LDY #$00
    STY $43
    DEC $2E
    DEY
    LDA ($2D),Y
    INC $2E
    CMP #$05
    BEQ +
    LDX $38
    CPX #$02
    BCC ++
    JMP .lB089
---------------------------------
+   JMP .lB0D2
---------------------------------
++  LDX $38
    LDA .lB087,X
    STA $3F
    LDY #$06
    CLC
    ADC ($10),Y
    STA ($10),Y
    LDY #$00
-   JSR .l8ACD
    STA $0061,Y
    INY
    CPY $3F
    BNE -
    JSR .lB1CB
    LDA $38
    BNE +
    LDX #$61
    JSR P3_8514
    JMP .lB256
---------------------------------
+   LDA $61
    LDX $62
    JSR P3_8547
    JMP .lB256
---------------------------------
.lB087  ORA $02
.lB089  JSR .l8ACD
    STA $49
    STA $3B
    JSR .l8ACD
    STA $4A
    STA $3C
    LDY #$06
    CLC
    ADC ($10),Y
    CLC
    ADC #$02
    STA ($10),Y
.lB0A1  LDA $3B
    ORA $3C
    BEQ ++
    JSR .l83FB
    JSR .l8ACD
    LDY #$00
    STA ($47),Y
    LDA $3C
    BNE +
    DEC $3B
+   DEC $3C
    JMP .lB0A1
---------------------------------
++  LDA #$02
    JSR P3_8400
    LDY #$00
    LDA $49
    STA ($47),Y
    INY
    LDA $4A
    STA ($47),Y
    JSR .lB1CB
    JMP .lB2BA
---------------------------------
.lB0D2  LDA #$03
    JSR P3_8483
    LDY #$00
    LDA ($2D),Y
    STA $47
    INY
    LDA ($2D),Y
    STA $48
    JSR P3_8A84
    LDY #$00
    LDA ($47),Y
    STA $3F
    INY
    LDA ($47),Y
    STA $40
    LDX $38
    CPX #$02
    BEQ +
    LDA .lB087,X
    STA $3E
    LDA #$00
    STA $3D
    BEQ .lB10F
+   CLC
    LDA ($3F),Y
    ADC #$04
    STA $3E
    DEY
    LDA ($3F),Y
    ADC #$00
    STA $3D
.lB10F  LDA $38
    CMP #$02
    BEQ +
    LDY #$06
    LDA ($10),Y
    CLC
    ADC $3E
    STA ($10),Y
    LDY #$00
-   JSR .l8ACD
    STA ($3F),Y
    INY
    CPY $3E
    BNE -
    BEQ .lB1A7
+   JSR .l8ACD
    STA $49
    JSR .l8ACD
    STA $4A
    LDY #$06
    CLC
    ADC ($10),Y
    CLC
    ADC #$02
    STA ($10),Y
    LDY #$01
    SEC
    LDA ($3F),Y
; $B145
!if VER_NEW = 1 {
    TAX
}

    SBC $4A
    STA $46
    DEY
    LDA ($3F),Y

!if VER_NEW = 1 {
    TAY    
}
    SBC $49
    STA $45

!if VER_OLD = 1 {
    BMI +
    LDX $49
    LDA $4A
    JMP .lB15F
+   LDA ($3F),Y
    TAX
    INY
    LDA ($3F),Y
.lB15F  LDY #$03
    STA ($3F),y
    STA $4A
    DEY
    TXA
    STA ($3F),Y
    STA $49

}
!if VER_NEW = 1 {
    BCC +
    LDY #$00
    STY $45
    STY $46
    LDX $4A
    LDY $49
+   TYA
    LDY #$02
    STA ($3F),Y
    STA $49
    INY
    TXA
    STA ($3F),Y
    STA $4A
}

    CLC
    LDA $3F
    ADC #$04
    STA $47
    LDA $40
    ADC #$00
    STA $48
.lB178  LDA $49
    ORA $4A
    BEQ .lB196
    JSR .l8ACD
    LDY #$00
    STA ($47),Y
    INC $47
    BNE +
    INC $48
+   LDA $4A
    BNE +
    DEC $49
+   DEC $4A
    JMP .lB178
---------------------------------
.lB196  LDA $45
!if VER_NEW = 1 {
    ORA $46
    BEQ .lB1A7
}
!if VER_OLD = 1 {
    BPL .lB1A7
}
    JSR .l8ACD
    INC $46
    BNE .lB196
    INC $45
    BNE .lB196
.lB1A7  CLC
    LDA $3F
    ADC $3E
    STA $3F
    LDA $40
    ADC $3D
    STA $40
    LDA $42
    BNE +
    DEC $41
+   DEC $42
    LDA $41
    ORA $42
    BEQ +
    JMP .lB10F
---------------------------------
+   JSR .lB1CB
    JMP .l911F
---------------------------------
.lB1CB  JSR $CE88
    LDA $43
    STA $C822,X
    RTS
---------------------------------
.lB1D4  LDA $2C
    BNE +
    LDX #$C8
    !by $2C
-   LDX #$66
    JMP P3_BF32
---------------------------------
+   LDY #$00
    LDA ($2B),Y
    CMP #$AB
    BNE +
    INY
    LDA ($2B),Y
    INY
    TAX
    LDA ($2B),Y
    STA $2C
    STX $2B
    JMP .lB1D4
---------------------------------
+   LDX $38
    CPX #$02
    BEQ .lB260
    CMP #$03
    BEQ -
    CMP #$02
    BEQ .lB22B
    CMP #$CE
    BEQ ++
    CMP #$D9
    BEQ +++
    CMP #$D3
    BEQ +++
    INC $2B
    BNE +
    INC $2C
+   LDX $2B
    LDA $2C
    JSR P3_8514
    LDA #$05
    BNE .lB253
++  INY
    LDA ($2B),Y
    JSR .l858B
    LDA #$02
    BNE .lB253
.lB22B  LDY #$02
    LDA ($2B),Y
    TAX
    DEY
    LDA ($2B),Y
    JSR P3_8547
    LDA #$03
    BNE .lB253
+++ LDY #$01
    LDA ($2B),Y
    TAX
    INY
    LDA ($2B),Y
    JSR P3_8536
    LDA #$03
    BNE .lB253
.lB249  CLC
    ADC $2B
    STA $2B
    BCC +
    INC $2C
+   RTS
---------------------------------
.lB253  JSR .lB249
.lB256  LDX $38
    BNE +
    JMP .lA2E3
---------------------------------
+   JMP .lA2EC
---------------------------------
.lB260  CMP #$03
    BEQ +
    LDX #$66
    JMP P3_BF32
---------------------------------
+   INY
    LDA ($2B),Y
    INY
    STA $3B
    STA $3C
    CLC
    ADC #$02
    ADC $2D
    STA $3D
    TAX
    LDA $2E
    ADC #$00
    STA $3E
    CPX $2F
    SBC $30
    BCC +
    JMP .l8EAC
---------------------------------
+   STY $41
    LDA #$00
    STA $3F
    CMP $3B
    BEQ +
-   LDY $41
    LDA ($2B),Y
    LDY $3F
    STA ($2D),Y
    INC $41
    INC $3F
    DEC $3C
    BNE -
+   LDY $3F
    LDA #$00
    STA ($2D),Y
    INY
    LDA $3B
    STA ($2D),Y
    LDA $3D
    STA $2D
    LDA $3E
    STA $2E
    LDA $41
    JSR .lB249
.lB2BA  JSR .l8AE4
    JMP .l911F
---------------------------------
.lB2C0  JSR .l8E2D
    JMP .l911F
---------------------------------
.lB2C6
    LDA $C7C3
    STA $2B
    LDA $C7C4
    STA $2C
    JMP .l911F
---------------------------------
.lB2D3
    JSR .l8E10
    JSR .l83FB
    LDA #$80
    BNE ++
.lB2DD
    JSR .l8C15
    LDA $64
    BNE +
    LDA $65
    CMP #$79
    BCC ++
+   LDA #$78
++  LDY #$09
    STA ($10),Y
.lB2F0  LDA #$FF
    STA $89
    BNE +
.lB2F6
    JSR $CDD6
    JSR .lB302
    JSR .lB408
+   JMP .l911F
---------------------------------
.lB302  JSR P3_8CBA
    JMP .l8A58
---------------------------------
.lB308
    LDX #$00
    !by $2C
.lB30B
    LDX #$01
    STX $38
    LDY #$07
    LDA ($10),Y
    BNE .lB384
.lB315  JSR $CDD6
    LDA $89
    CMP #$FF
    BEQ ++
    JSR $CAEE
    STA ($FC,X)
    LDY $15F0,X
    CMP #$01
    BNE +
    LDX #$CE
    JMP P3_BF32
---------------------------------
+   JSR $CE03
++  JSR .l90E8
    JSR .lB408
    JMP .lB315
---------------------------------
    LDA $8A
    CMP #$0D
    BNE +
    LDA #$FF
    STA $89
+   JMP .lB256
---------------------------------
.lB348
    LDY #$07
    LDA ($10),Y
    BNE ++
    JSR $CDD6
    LDA $89
    CMP #$FF
    BNE +
    JSR .l90E8
    JSR .lB408
+   LDY #$00
    STY $49
-   JSR .l83FB

    JSR $CAEE
    !by PAGE2
    !word P2_83FC

    CMP #$0D
    BEQ +
    STA ($47),Y
    INC $49
    BNE -
+   TYA
    STA ($47),Y
    JSR .l83FB
    LDA $49
    STA ($47),Y
    JSR .l8AE4
    JMP .lB2F0
---------------------------------
.lB384  JSR .lB396
    JSR .lAE65
    JMP .lB256
---------------------------------
++  JSR .lB396
    JSR .l8AE4
    JMP .l911F
---------------------------------
.lB396  JSR .l8D51
    LDA #$00
    STA $49
    STA $4A
.lB39F  STA $45
--  JSR .l83FB
-   BIT $90
    BVS ++
    JSR $CE4E
    INC $45
    CMP #$0A
    BEQ -
    CMP #$0D
    BEQ ++
    INC $49
    BNE +
    INC $4A
+   LDY #$00
    STA ($47),Y
    BEQ --
++  LDY #$01
    LDA $49
    STA ($47),Y
    DEY
    LDA $4A
    STA ($47),Y
    JSR .l83FB
    CLC
    LDY #$06
    LDA $45
    ADC ($10),Y
    STA ($10),Y
    JSR $CE88
    LDA $90
    STA $C822,X
    RTS
---------------------------------
.lB3E1
    LDY #$07
    LDA ($10),Y
    BNE +
    JSR .l8E2D
    JSR $CDF4
    JMP .l911F
---------------------------------
+   LDY #$03
    LDA ($10),Y
    BNE +
    JSR .l8DA0
+   JMP .lB2C0
---------------------------------
.lB3FC
    JSR $CE03
    JMP .lB2C0
---------------------------------
.lB402
    JSR .lA765
    JMP .lB2C0
---------------------------------
.lB408  JSR $CDD6
    LDY #$09
    LDA ($10),Y
    JSR P3_B4EF
    LDA $4D
    AND #$0A
    CMP #$08
    BNE +
    JSR .l8450
    LDX $C7BC
    TXS
    JMP .l9197
---------------------------------
+   RTS
---------------------------------
.lB425    !by $00,$02,$04,$06,$01,$03,$05,$07
---------------------------------
P3_B42D
    LDY $C865
    BNE +
    LDY $C868
    BNE ++
    CLI
-   LDA $C6
    STA $CC
    BEQ -
    JSR .lB4C9
    LDA $CF
    BEQ +++
    STY $CF
    LDA $CE
    LDY $D3
    STA ($D1),Y
    LDA $0287
    STA ($07),Y
    LDA #$02
    STA $CD
    BNE +++
+   DEC $C865
    LDX $C866
    LDA $C867
    STX $07
    STA $08
    LDA #$44
    STA $09
    INC $C866
    BNE +
    INC $C867
+   LDY #$00
    JSR $CB66
    TAY
    JSR .lB4D6
    STY $0277
    JMP .lB4C9
---------------------------------
++  JSR $CDD6
    LDX #$FD
    JSR $CDC1
    JSR $CE4E
    PHA
    JSR $CDD6
    BIT $90
    BVC +

    JSR $CAEE
    !by PAGE2
    !word P2_BDF4

+   JSR .lB4D6
    PLA
    STA $0277
+++ LDX $0277
    CPX #$85
    BCC .lB4C9
    CPX #$8D
    BCS .lB4C9
    LDA .lB39F+1,X
    LDX $C845                   ; status of comal program
    CPX #$04
    BCC +
    ADC #$07

    JSR $CAEE
    !by PAGE1
    !word P1_A62A

    JSR $FFE4
    JMP P3_B42D
---------------------------------
+   JSR $CAEE
    !by PAGE1
    !word P1_A62A

.lB4C9  LDA $D1
    STA $07
    LDA $D2
    AND #$03
    ORA #$D8
    STA $08
    RTS
---------------------------------
.lB4D6  SEI
    LDX $C6
    BEQ +
-   LDA $0276,X
    STA $0277,X
    DEX
    BNE -
+   LDX $C6
    INX
    CPX $0289
    BCS +
    STX $C6
+   RTS
---------------------------------
P3_B4EF
    TAX
    BPL +++
    LDA #$78
    JSR .lB644
    LDX #$00
    LDY $D3
-   CPX $7C
    BEQ ++
    CLC
    TXA
    ADC $3A
    BCC +
    LDA ($D1),Y
    CMP #$20
    BNE ++
+   INX
    INY
    BNE -
++  TXA
    BPL +
+++ JSR .lB644
+   CLC
    ADC $D3
    STA $7C
    LDA $D3
    STA $CA
    PHA
.lB51F  JSR P3_B42D
    JSR $FFE4
    CLI
    CMP #$0D
    BEQ +
    CMP #$03
    BNE ++
    LDA #$02
    BIT $4D
    BNE .lB51F
+   JMP .lB5ED
---------------------------------
++  LDY $CA
    CPY $7C
    BEQ .lB51F
    TAX
    AND #$7F
    CMP #$20
    BCC +++
    TXA
    CMP #$40
    BCC ++
    CMP #$C0
    BCS +
    SBC #$3F
    !by $2C
+   AND #$7F
++  LDY $D3
    STA ($D1),Y
    LDA $0286
    STA ($07),Y
--- LDY $D3
    INY
    CPY $7C
    BCS .lB51F
    STY $D3
    BCC .lB51F
+++ CPX #$10
    BNE +

    JSR $CAEE
    !by PAGE1
    !word P1_A95D

    JMP .lB51F
+   CPX #$13
    BNE +
--  LDY $CA
    STY $D3
    BPL .lB51F
+   CPX #$93
    BNE +
    LDY $CA
    LDA #$20
-   STA ($D1),Y
    INY
    CPY $7C
    BNE -
    BEQ --
+   CPX #$1D
    BEQ ---
    CPX #$9D
    BEQ +
    CPX #$14
    BNE ++
+   LDY $D3
    CPY $CA
    BEQ +
    DEC $D3
+   LDY $D3
    CPX #$14
    BNE +++
-   INY
    CPY $7C
    BEQ +
    LDA ($D1),Y
    TAX
    LDA ($07),Y
    DEY
    STA ($07),Y
    TXA
    STA ($D1),Y
    INY
    BNE -
+   DEY
    LDA #$20
    STA ($D1),Y
    BNE +++
++  CPX #$94
    BNE +++
    LDY $7C
    DEY
    LDA ($D1),Y
    CMP #$20
    BNE +++
.lB5CF  CPY $D3
    BEQ +

    DEY
    LDA ($D1),Y
    TAX
    LDA ($07),Y
    INY
    STA ($07),Y
    TXA
    STA ($D1),Y

!if VER_OLD = 1 {
    DEY
    BPL .lB5CF
}
!if VER_NEW = 1 {
    TYA
    BEQ +
    DEY
    JMP .lB5CF    
}
---------------------------------
+   LDA #$20
    STA ($D1),Y
+++ JMP .lB51F
---------------------------------
.lB5ED  LDY #$00
    STY $9E
    STY $89
    LDY $7C
    STY $D3
    CPY $CA
    BEQ ++
    DEY
-   LDA ($D1),Y
    CMP #$20
    BNE .lB60B
    DEC $D3
    DEY
    CPY $CA
    BPL -
    BMI ++
.lB60B  LDY $CA
    CPY $D3
    BCS ++
    LDA ($D1),Y
    STA $D7
    AND #$7F
    ASL $D7
    BIT $D7
    BPL +
    ORA #$80
+   BVS +
    ORA #$40
+   LDX $9E
    STA $C5E8,X
    INC $9E
    INC $CA
    BNE .lB60B
++  LDY $9E
    LDA #$0D
    STA $C5E8,Y
    PLA
    STA $D3
    TYA
    BEQ +
-   LDA #$1D
    JSR $CE05
    DEY
    BNE -
+   RTS
---------------------------------
.lB644  STA $7C
    LDA $D3
    SEC
    SBC #$28
    BCC +
    SBC #$28
+   LDX $D6
    STA $3A
    CLC
    ADC $7C
    BMI +
-   INX
    SEC
    SBC #$28
    BPL -
+   STA $7D
    LDA $7C
-   CPX #$19
    BCC +
    SBC #$28
    SEC
    SBC $7D
    LDY #$00
    STY $7D
    DEX
    BNE -
+   STA $7C
    RTS
---------------------------------
.lB675
    JSR .l8CB0
    SEC
    SBC #$01
    LDY #$06
    STA ($10),Y
.lB67F
    JSR .l8C15
    LDY #$03
    LDA #$01
    STA ($10),Y
    INY
    LDA $64
    STA ($10),Y
    INY
    LDA $65
    STA ($10),Y
.lB692
    JSR .l8CA4
    LDY #$08
    STA ($10),Y
    DEY
    LDA #$01
    STA ($10),Y
    LDY #$03
    LDA ($10),Y
    BNE ++
    LDY #$08
    LDA ($10),Y
    JSR $CE8A
    BNE ++
    LDA $C80E,X
    AND #$04
    BEQ +
    LDY #$03
    LDA #$01
    STA ($10),Y
    INY
    LDA $C836,X
    STA ($10),Y
    INY
    LDA $C82C,X
    STA ($10),Y
+   LDY #$06
    LDA $C818,X
    STA ($10),Y
++  JMP .l911F
---------------------------------
.lB6D0
    JSR .lA7B0
    JMP .lB2C0
---------------------------------
.lB6D6
    LDA #$01
    !by $2C
.lB6D9
    LDA #$02
    !by $2C
.lB6DC
    LDA #$0A
    !by $2C
.lB6DF
    LDA #$03
    JSR .lB6FF
-   JMP .l911F
---------------------------------
.lB6E7
    JSR .l8CB0
    TAX
    LDA #$37
    JSR .lB6FF
    JSR $CE88
    LDA #$00
    STA $C836,X
    LDA #$01
    STA $C82C,X
    BNE -
.lB6FF
    PHA
    TXA
    PHA

    JSR $CAEE
    !by PAGE1
    !word P1_88A8

    JSR .l8CA4
    PLA
    TAX
    PLA
    JSR $CA12
    JMP $CD51
---------------------------------
.lB714
    JSR .l8CA4
    JSR $CCEB
    JMP .l911F
---------------------------------
.lB71D
    JSR .lB723
    JMP .l911F
---------------------------------
.lB723  LDX $98
-   DEX
    BMI +
    LDA $0259,X
    BEQ -
    CMP #$FF
    BEQ -
    CMP #$FD
    BEQ -
    STA $B8
    JSR $CCEB
    JMP .lB723
---------------------------------
+   RTS
---------------------------------
.lB73E
    JSR .lB7A0
    JSR .l8CB0
    PHA
    JSR .l8C15
    PLA
    TAX
    LDA #$37
    JSR .lB7A7
    LDX $C843
    CPX #$01
    BNE +
    JSR $CD51
    LDA #$64
    JSR .l8E05
    LDA #$50
    STA $02A7
    LDA $B9
    STA $02A8
    LDA $65
    STA $02A9
    LDA $64
    STA $02AA
    LDA #$01
    STA $02AB
    LDA #$05
    LDX #$A7
    LDY #$02
    JSR $FFBD
    JSR .l82BF
    LDA #$64
    JSR .l8E05
    LDX #$FE
    JSR $CDDF
    LDA #$FF
    JSR $CE05
    JSR $CDD6
    JSR .lB7A0
    JMP .l911F
---------------------------------
+   LDX #$DA
    JMP P3_BF32
---------------------------------

.lB7A0  JSR $CAEE
    !by PAGE1
    !word P1_8E28

    RTS

.lB7A7  JSR $CAEE
    !by PAGE1
    !word P1_88C6

    RTS
---------------------------------
.lB7AE
    JSR P3_8CBA
    LDA $49
    BNE ++
    LDA $4A
    BEQ ++
    CMP #$FB
    BCS ++
    ADC #$05
    JSR P3_8400
    CLC
    LDA $47
    ADC #$05
    STA $47
    BCC +
    INC $48
+   LDY $4A
-   DEY
    LDA ($45),Y
    STA ($47),Y
    TYA
    BNE -
    LDY #$09
    STA ($10),Y
    LDY #$0D
    LDA $4A
    STA ($10),Y

    JSR $CAEE
    !by PAGE1
    !word P1_8F20

    JMP .l911F
++  LDX #$08
    JMP P3_BF32
---------------------------------
.lB7EF
    JSR P3_84BE

    JSR $CAEE
    !by PAGE1
    !word P1_8FF0

    JMP .l911F
---------------------------------
.lB7FB
    JSR .l8C65
    STA $38
    JSR .l8C15
    LDA #$8C
    JSR .lB80B
    JMP .l911F
---------------------------------
.lB80B  LDX $64
    STX $66
    STA $64
    LDX #$64
    LDA #$00
.lB815  STX $22
    STA $23
    LDA $C840
    STA $09
    LDA #$60
    STA $67
    LDX #$22
    LDA #$00
    STX $07
    STA $08
    LDY #$00
    JMP $CBBC
---------------------------------
.lB82F
    JSR .l8C15
    LDA #$AC
    JSR .lB80B
    TYA
    JSR .l858B
    JMP .l911F
---------------------------------
.lB83E
    JSR .l8C15
    LDA $64
    LDX $65
    JSR .lB815
    JMP .l911F
---------------------------------
.lB84B
    JSR P3_84BE
    LDA $61
    BNE +
    STA $62
    STA $63
    STA $64
    STA $65
    BEQ ++
+   SEC
    LDA #$A0
    SBC $61
    BPL +
--  LDX #$02
    JMP P3_BF32
---------------------------------
+   STA $3B
    BEQ ++
-   LSR $62
    ROR $63
    ROR $64
    ROR $65
    DEC $3B
    BNE -
++  LDA $62
    BNE --
    PHP
    SEI
    LDY #$02
-   LDA $0063,Y
    STA $00A0,Y
    DEY
    BPL -
    PLP
    JMP .l911F
---------------------------------
.lB88D
    JSR .l85CE
    JSR .l854B
.lB893
    JSR .lB94B
    JSR .l848F
    PHA
    LDA $2E
    PHA
    JSR .lA7F2
    PLA
    STA $4A
    PLA
    STA $49
    LDA $2D
    STA $47
    LDA $2E
    STA $48
    JSR .l851B
    CLC
    LDA $2D
    ADC #$05
    STA $2D
    BCC .lB8BC
    INC $2E
.lB8BC  LDX #$04
.lB8BE  LDA $39
    AND #$08
    BEQ .lB8CF
    TXA
.lB8C5  LDY #$00
    STA ($2D),Y
    INC $2D
    BNE .lB8CF
    INC $2E
.lB8CF  JMP .l911F
---------------------------------
.lB8D2
    JSR .lB94B
    JSR .lA7F2
    JMP .l911F
---------------------------------
.lB8DB
    JSR .lB94B
    LDX $2D
    LDA $2E
    STX $43
    STA $44
    JSR .lA7F2
.lB8E9  LDA $39
    AND #$20
    BNE +
    DEC $44
    LDY #$FF
    CLC
    LDA ($43),Y
    ADC #$02
    STA $4A
    DEY
    LDA ($43),Y
    ADC #$00
    STA $49
    INC $44
    LDA $43
    SEC
    SBC $4A
    STA $45
    LDA $44
    SBC $49
    STA $46
    CLC
    LDA $2D
    STA $47
    ADC $4A
    STA $2D
    LDA $2E
    STA $48
    ADC $49
    STA $2E
    JSR P3_82F4
    LDX #$06
    JMP .lB8BE
---------------------------------
+   LDA $2E
    PHA
    LDA $2D
    PHA
    LDA $43
    STA $2D
    LDA $44
    STA $2E
.lB937  LDA #$09
    JSR .l8422
    LDA #$09
    STA ($10),Y
    INY
    PLA
    STA ($10),Y
    INY
    PLA
    STA ($10),Y
    JMP .l911F
---------------------------------
.lB94B  LDY #$02
    LDA ($10),Y
    CMP #$0C
    BEQ ++
    CMP #$02
    BCS +
    JSR .lAAEC
+   LDY #$00
    LDA ($10),Y
    TAX
    INY
    LDA ($10),Y
    STX $10
    STA $11
    JMP .lB94B
---------------------------------
++  RTS
---------------------------------
.lB96A
    JSR P3_84BE
    JMP .lB9AF
---------------------------------
-   LDA #$01
    JSR P3_8483
.lB975
    JSR P3_8CBA
    JMP .lB9D9
---------------------------------
.lB97B
    LDX #$02
    !by $2C
.lB97E
    LDX #$01
    !by $2C
.lB981
    LDX #$00
    STX $38
    DEC $2E
    LDY #$FF
    LDA ($2D),Y
    INC $2E
    CMP #$05
    BEQ +++
    CMP #$06
    BEQ -
    CPX #$02
    BEQ ++
    JSR .l897F
    LDA $38
    BEQ .lB9AF
    JSR P3_85C6
    LDA $64
    STA $4E
    LDA $65
    STA $4F
    LDA #$02
    BNE +
.lB9AF  LDX #$4E
    LDY #$00
    JSR $CAA0
    LDA #$05
+   STA $38
    JSR .l8D3E
    CLC
    LDY #$06
    LDA ($10),Y
    ADC $38
    STA ($10),Y
    LDY #$00
-   LDA $004E,Y
    JSR $CE05
    INY
    CPY $38
    BNE -
    JMP .l911F
---------------------------------
++  JSR .l89B9
.lB9D9  JSR .l8D3E
    JSR .l8A48
    JMP .l911F
---------------------------------
+++ LDA #$03
    JSR P3_8483
    LDY #$00
    LDA ($2D),Y
    STA $47
    INY
    LDA ($2D),Y
    STA $48
    JSR P3_8A84
    JSR .l8D3E
    LDY #$00
    LDA ($47),Y
    STA $3F
    INY
    LDA ($47),Y
    STA $40
    LDX $38
    BNE +
    LDA #$05
    BNE ++
+   DEX
    BNE +
    LDA #$02
++  STA $3E
    LDA #$00
    STA $3D
    BEQ .lBA28
+   LDY #$01
    CLC
    LDA ($3F),Y
    ADC #$04
    STA $3E
    DEY
    LDA ($3F),Y
    ADC #$00
    STA $3D
.lBA28  LDA $38
    CMP #$02
    BEQ +
    LDY #$06
    LDA ($10),Y
    CLC
    ADC $3E
    STA ($10),Y
    LDA #$00
    STA $39
-   LDY $39
    LDA ($3F),Y
    INY
    STY $39
    JSR $CE05
    LDA $39
    CMP $3E
    BNE -
    BEQ ++
+   LDY #$02
    LDA ($3F),Y
    STA $49
    INY
    LDA ($3F),Y
    STA $4A
    CLC
    LDA $3F
    ADC #$04
    STA $45
    LDA $40
    ADC #$00
    STA $46
    JSR .l8A48
++  CLC
    LDA $3F
    ADC $3E
    STA $3F
    LDA $40
    ADC $3D
    STA $40
    LDA $42
    BNE +
    DEC $41
+   DEC $42
    LDA $41
    ORA $42
    BEQ +
    JMP .lBA28
---------------------------------
+   JMP .l911F
---------------------------------

.lBA89
    JSR $CAEE
    !by PAGE1
    !word $CCE3

    LDA #$00
    STA $C7C6
    LDA #$22
    JSR .lB7A7
    LDY $BA
    CPY #$03
    BEQ +
    JSR $CD51
    INC $C7DD
+   JMP .l911F
---------------------------------

.lBAA8
    JSR $CAEE
    !by PAGE2
    !word P2_BDF4

    LDA #$21
    JSR .lB7A7
    LDY $BA
    BEQ +
    JSR $CD51
    INC $C868
+   JMP .l911F
---------------------------------
    LDX #$C9
    !by $2C
--  LDX #$CB
    !by $2C
-   LDX #$01
    JMP P3_BF32
---------------------------------
--- JMP .l8EAC
---------------------------------
.lBACE
    JSR $CDD6
    JSR .l85CE
    LDA $65
    STA $3B
    LDA $64
    BMI -
    STA $3C
    JSR .l8CB0
    LDX $2D
    STX $45
    STX $43
    LDX $2E
    STX $46
    STX $44
    STA $3F
    JSR $CE8A
    BNE --
    LDA $3B
    ORA $3C
    BEQ +++
    LDA #$00
    STA $C822,X
    STX $3D
    LDX $3F
    JSR $CDC1
    LDA $3B
    ORA $3C
    BEQ +++
.lBB0C  LDA $45
    CMP $2F
    LDA $46
    SBC $30
    BCS ---
    JSR $CE4E
    LDY #$00
    STA ($45),Y
    LDX $3D
    LDA $90
    STA $C822,X
    BNE ++
    LDX $3B
    BNE +
    DEC $3C
+   DEX
    STX $3B
    TXA
    ORA $3C
    BEQ ++
    INC $45
    BNE .lBB0C
    INC $46
    JMP .lBB0C
---------------------------------
++  INC $45
    BNE +
    INC $46
+   LDA $45
    STA $2D
    LDA $46
    STA $2E
+++ LDA #$02
    JSR P3_8400
    LDY #$01
    SEC
    LDA $45
    SBC $43
    STA $38
    STA ($47),Y
    DEY
    LDA $46
    SBC $44
    STA ($47),Y
    LDX $3D
    LDA $C818,X
    CLC
    ADC $38
    STA $C818,X
    JSR $CDD6
    JMP .l911F
---------------------------------
.lBB73
    LDA #$03
    JSR P3_8400
    LDA $C865
    ORA $C6
    ORA $C868
    BEQ +
    JSR P3_B42D
    JSR $FFE4
+   JMP .l928D
---------------------------------
.lBB8B
    JSR .lBFBE
    STA $C7C7
    JSR .lBFBE
    STA $C7C8
    PHP
    SEI
    LDA $4D
    ORA #$10
    AND #$FB
.lBB9F  STA $4D
    PLP
    JMP .l911F
---------------------------------
.lBBA5
    LDA #$FF
    STA $C7C8
    PHP
    SEI
    LDA $4D
    AND #$EB
    JMP .lBB9F
---------------------------------
.lBBB3
    JSR $CB5F
    !by PAGE1
    !word $0045

.lBBB9
    JSR $CAEE
    !by PAGE1
    !word P1_99E2

    RTS

.lBBC0
    JSR $CAEE
    !by PAGE1
    !word P1_9871

    JMP .l911F
---------------------------------
.lBBC9
    LDA #$00
    JSR .lBBD3
    JMP P3_BCA1
---------------------------------
.lBBD1
    LDA #$01
.lBBD3  STA $93
    LDA #$00
    STA $C7D3
    LDA #$11
    JSR P3_8C06

P3_BBDF  JSR $CAEE
    !by PAGE1
    !word P1_8CAA
    RTS

.lBBE6
    LDA $88
    AND #$03
    BEQ +
    LDX #$3A
    JMP P3_BF44
---------------------------------
+   LDA $0252
    AND #$F7
    STA $4D
    LDA #$08
    JSR P3_8287
    LDX #$01
-   LDA $0250,X
    STA $31,X
    STA $78,X
    LDA $0254,X
    STA $10,X
    DEX
    BPL -
    LDA $0253
    STA $33
    LDA #$05
    STA $C845                   ; status of comal program
    LDY #$02
    LDA ($31),Y
    STA $1F
    JMP .l911F
---------------------------------
.lBC21
    JSR .lB723
    JSR .lBCF9
    PHA
    LDA $B7
    PHA
    LDX $C843
    CPX #$01
    BNE +
    LDA $02A8
    JSR .lBD2E
    LDX #$A8
    LDA #$02
    STX $BB
    STA $BC
+   LDA #$00
    STA $C7D3
    PLA
    STA $B7
    PLA
    JSR P3_BBDF
.lBC4C
    JSR .lB723
    JSR .lBCEA
    JSR .lBC81
    LDA #$06
    JSR P3_8287
    LDX $16
    LDA $17
    STX $31
    STA $32
    LDY #$02
    LDA ($31),Y
    BEQ .lBC74
    LDA #$05
    STA $C845                   ; status of comal program
    LDA #$00
    STA $88
    JMP .l9114
---------------------------------
.lBC74  LDA #$0A
    JMP P3_8287
---------------------------------
.lBC79
    JSR .lBC81
    LDA #$01
    STA $88
    RTS
---------------------------------
.lBC81  JSR P3_BCA1

    JSR $CAEE
    !by PAGE2
    !word P2_A879

    LDX #$00
    STX $35
    STX $4D
    STX $0F
    LDA $C7C3
    STA $2B
    LDA $C7C4
    STA $2C
    DEX
    STX $C7C8
    RTS
---------------------------------
P3_BCA1
    LDA #$00
    STA $C7C5
P3_BCA6
    JSR .lBCB2
    LDA #$00
    STA $11
    LDA #$05
    JMP P3_8287
---------------------------------
.lBCB2  LDX $18
    LDA $19
    CLC
--  STX $3B
    STA $3C
    LDY #$00
    LDA ($3B),Y
    BEQ +
    TYA
    LDY #$03
-   STA ($3B),Y
    DEY
    BNE -
    TXA
    ADC ($3B),Y
    TAX
    LDA $3C
    ADC #$00
    BNE --
+   LDX #$02
-   LDA $19,X
    STA $2C,X
    LDA $1B,X
    STA $2E,X
    DEX
    BNE -
    STX $0255
    RTS
---------------------------------
.lBCE4
    LDA $88
    ORA #$02
    STA $88
.lBCEA  LDA $C7D4
    ORA $C7D5
    BEQ +
    JSR .lA037
    JMP .lBCEA
---------------------------------
+   RTS
---------------------------------
.lBCF9  JSR .lB7A0
    LDA #$00
    STA $93
    LDA #$11
    JMP .lB7A7
---------------------------------
.lBD05
    JSR .l8C65
    !by $2C
.lBD09
    LDA #$08
    STA $BA
    JSR P3_8CBA
    LDA $49
    BNE +
    STA $43
    JSR .lBDA4
    JMP .lBD59
---------------------------------
.lBD1C  LDX $43
    CPX #$50
    BCS +
    STA $C760,X
    INC $43
    RTS
---------------------------------
+   JSR $CB5F
    !by PAGE1
    !word P1_88A3

.lBD2E  INX
    STX $43
    LDX #$49
    STX $C760
    AND #$01
    ORA #$30
    STA $C761
.lBD3D  LDA $BA
    STA $C7D7
    LDX #$60
    LDA #$C7
    STX $BB
    STA $BC
    LDY $43
    STY $B7
    JSR .l82BF
    JMP $CEA7
---------------------------------
.lBD54
    LDA #$53
    JSR .lBD85
.lBD59  JSR .lBD3D
    JMP .l911F
---------------------------------
.lBD5F
    LDA $C7DA
    CLC
    ADC #$03
    JSR P3_8400
    LDY #$00
-   LDA $C7DB,Y
    STA ($47),Y
    INY
    CPY $C7DA
    BNE -
    LDA #$3A
    STA ($47),Y
    INY
    LDA #$00
    STA ($47),Y
    TYA
    INY
    STA ($47),Y
    JMP .l911F
---------------------------------
.lBD85  LDX #$00
    STX $43
.lBD89  JSR .lBD1C
    LDA #$00
    JSR .lB7A7
    LDA $C843
    CMP #$01
    BNE .lBDB3
    LDX $BB
    LDA $BC
    LDY $B7
    STX $45
    STA $46
    STY $4A
.lBDA4  LDY #$00
-   CPY $4A
    BEQ +
    LDA ($45),Y
    JSR .lBD1C
    INY
    BNE -
+   RTS
---------------------------------
.lBDB3  LDX #$DA
    !by $2C
--- LDX #$D9
    !by $2C
--  LDX #$01
    JMP P3_BF32
---------------------------------
.lBDBE
    JSR .lBDF3
    LDY $4A
    DEY
    STY $C7DA
-   DEY
    LDA ($45),Y
    STA $C7DB,Y
    TYA
    BNE -
-   JMP .l911F
---------------------------------
.lBDD3
    LDY $C7DA
    LDX #$DB    ; $C7D8
    LDA #$C7

    JSR $CAEE
    !by PAGE1
    !word P1_8AA9

    JMP .lBDE6
---------------------------------
.lBDE3
    JSR .lBDF3
.lBDE6  LDX $C843
    CPX #$02
    BEQ -
    JSR .lBD2E
    JMP .l911F
---------------------------------
.lBDF3  JSR P3_8CBA
    LDA $49
    BNE --
    LDY $4A
    DEY
    LDA ($45),Y
    CMP #$3A
    BNE --
    CPY #$03
    BCS ---
    LDX $45
    LDA $46

    JSR $CAEE
    !by PAGE1
    !word P1_8AA9

    LDX $C843
    BEQ .lBDB3
    RTS
---------------------------------
.lBE17
    LDA #$43
    JSR .lBE23
    CMP $BA
    BNE +
    JMP .lBD59
---------------------------------
.lBE23  JSR .lBD85
    LDA $BA
    PHA
    LDA #$3D
    JSR .lBD89
    PLA
    RTS
---------------------------------
+   LDX #$DA
    JMP P3_BF32
---------------------------------
.lBE35
    LDA #$52
    JSR .lBE23
    LDA $02A8
    STA $C761
    JMP .lBD59
---------------------------------

.lBE43
    JSR $CAEE
    !by PAGE1
    !word P1_951E

    JMP .l911F

.lBE4C
    JSR $CAEE
    !by PAGE1
    !word P1_9534

    JMP .l911F

.lBE55
    JSR $CDD6
    JSR P3_8D30
    LDA $C7DD
    BEQ +
    LDA #$00
    STA $C7C6
    LDA #$0C
    !by $2C
+   LDA #$93
    JSR $CE05
    JSR $CDD6
    JMP .l911F
---------------------------------
.lBE73
    LDA $C7D7
    CMP #$08
    BCS +
    LDA #$08
+   STA $BA
    LDA $0200
    BNE +
    JSR $CC5D
    LDA #$00
    STA $90
+   LDA $0200
    CLC
    ADC #$02
    JSR P3_8400
    LDY #$00
    LDX $0200
    BEQ +
-   LDA $0201,Y
    STA ($47),Y
    INY
    DEX
    BNE -
+   TXA
    STA ($47),Y
    INY
    LDA $0200
    STX $0200
    STA ($47),Y
    JMP .l911F
---------------------------------
.lBEB2
    JSR $CAEE
    !by PAGE1
    !word $CCE3

    JSR .lB723
    JSR $CA29
    LDA #$04
    JMP P3_8287
---------------------------------
.lBEC3
    RTS
---------------------------------
.lBEC4
    LDA #$39
    JMP P3_BF39
---------------------------------
.lBEC9  JSR $CDD6
    LDA #$00
    STA $90
    LDA $C7D9
    BEQ +
    DEC $C7D9
    JSR $CE88
    BNE +
    DEC $98
+   LDA $C842
    BEQ +
    DEC $C842
    LDX $40
    BNE +
    LDA $C7D3
    BNE +
    LDA $42
    STA $C7EF
    JSR $CA29
    LDA #$04
    JSR P3_8287
+   LDA $C7D3
    BEQ +
    DEC $C7D3
    JSR .lA037
+   LDA #$FE
    JSR $CE8A
    BNE +
    LDA #$00
    STA $C80E,X
    JSR .lB7A0
+   LDX $44
    LDA $43
    CPX #$DC
    SBC #$00
    BCC +
    LDA $0200
    BNE ++
    LDX #$E9

+   JSR $CAEE
    !by PAGE2
    !word P2_87EA

++  RTS
---------------------------------
P3_BF2F
    LDY $B8
    !by $2C
P3_BF32
    LDY #$00
    LDA #$00
    JMP ($C7DE)
---------------------------------
P3_BF39
    PHA
    LDA #$05
    STA $C845                   ; status of comal program
    JSR P3_BCA6
    PLA
    TAX
P3_BF44
    STX $44
    LDA #$00
    STA $43
    JSR .lBEC9
.lBF4D
    LDA $C845                   ; status of comal program
    CMP #$04
    BCC +++
    LDA $D3
    BEQ +
    JSR $CDF4
+   LDY #$00
    LDA ($31),Y
    STA $64
    INY
    LDA ($31),Y
    STA $65
    LDA $31
    CMP #$61
    BNE +
    LDA $32
    CMP #$C6
    BEQ ++
+   JSR P3_BFC5
    JSR $CDF4

    JSR $CAEE
    !by PAGE2
    !word P2_BD7D

    LDX #$F2
    JSR .l8CE1
    JSR .l8348
    LDA #$3A
    JSR $CE05
    JSR $CE03
    JMP .lBF97
---------------------------------

++  JSR $CAEE
    !by PAGE2
    !word P2_BD7D

.lBF97  JSR .l91E7
    LDX #$FF

    JSR $CAEE
    !by PAGE2
    !word P2_87FF

    JSR $CDF4
    JSR $CDF4
    LDA #$09
    JSR P3_8287
    JMP $CA30
---------------------------------
+++ LDA $88
    ORA #$01
    STA $88
    LDX #$FF
    JSR $CB5F
    !by PAGE2
    !word P2_8827

.lBFBE  LDY $33
    LDA ($31),Y
    INC $33
    RTS
---------------------------------
P3_BFC5
    LDY #$00
    STY $0105
--  LDX #$30
-   SEC
    LDA $65
    SBC .lBFF5,Y
    PHA
    LDA $64
    SBC .lBFFA,Y
    BCC +
    INX
    STA $64
    PLA
    STA $65
    BCS -
+   PLA
    TXA
    STA $0100,Y
    INY
    CPY #$05
    BNE --
    LDA #$01
    STA $7C
    LDA #$01
    STA $7D
    RTS
---------------------------------

.lBFF5    !by $10,$E8,$64,$0A,$01
.lBFFA    !by $27,$03,$00,$00,$00,$20

!if VER_OLD = 1 {
        !by $20,$20,$20,$20,$20,$20
}
}