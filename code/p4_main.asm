; ###############################################################
; #                                                             #
; #  p4_main.asm for                                            #
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
.start=*

    !word COLD      ; $CFAA
    !word WARM      ; $CF70

    !pet "CBM80comal"

    !by >.start                 ; $80
    !by PAGE4 + ROMMED          ; PAGE 4 =$83 + %00010000 <> $93

    !word .end4                 ; the module end address
    !word .signal               ; the address of the signal handler 
; $8081

; start of package table
;
    !pet $08,"graphics"         ; char amount, 'name'
    !word ptGraphics            ; $850C
    !word init_Graphics         ; $8CDC

    !pet $06,"turtle"
    !word ptTurtle              ; $84C5
    !word init_Turtle           ; $8CE2

    !pet $07,"sprites"
    !word ptSprites             ; $979B
    !word init_Sprites          ; $98B9

    !pet $04,"font"
    !word ptFont                ; $86FA
    !word DUMMY

    !pet $05,"sound"
    !word ptSound               ; $B091
    !word init_Sound            ; $B287

    !pet $07,"paddles"
    !word ptPaddles             ; $B618
    !word DUMMY

    !pet $09,"joysticks"
    !word ptJoysticks           ; $B6A5
    !word DUMMY

    !pet $08,"lightpen"
    !word ptLightpen            ; $B704
    !word init_Lightpen         ; $B77D

    !by $00

.l8073
    !word $C593
.l8075
    !word $C58C
.l8077
    !word P4_AA07
.l8079
    !word $C59A
.l807B
    !word $C3BF
.l807D
    !word P4_8228
.l807F
    !word $C3BF

.signal
    CPY #$00                     ; POWER1
    BEQ .l808C
    CPY #$02                     ; LINK
    BEQ .l808C

    JMP .l80FC
---------------------------------

.l808C
    SEI
    JSR .l8218
    LDA #$05
    STA $C2FE
    LDX #$21
    LDA #$00
    STA RESOL
.l809B
    STA $C29A,X
    DEX
    BNE .l809B
    LDX #$02
.l80A3
    LDA .l8073-1,X
    STA ISAVEC+1,X
    LDA .l8075-1,X
    STA IGETLN+1,X
    LDA .l8077-1,X
    STA $C24D,X
    LDA ILOADC+1,X
    STA $C24F,X
    LDA .l8079-1,X
    STA ILOADC+1,X
    LDA SAREG+7,X
    STA $C279,X
    LDA .l807B-1,X
    STA SAREG+7,X
    LDA .l807D-1,X
    STA Q5+1,X
    LDA .l807F-1,X
    STA COPY1+1,X
    DEX
    BNE .l80A3
.l80DA
    LDA (COPY1,X)
    STA (COPY2,X)
    INC COPY1
    BNE .l80E4
    INC COPY1+1
.l80E4
    INC COPY2
    BNE .l80EA
    INC COPY2+1
.l80EA
    LDA COPY1
    CMP #$44
    BNE .l80DA
    LDA COPY1+1
    CMP #$84
    BNE .l80DA
    JSR .l8183
    JMP procClearscreen          ; $88FA
---------------------------------
.l80FC
    CPY #$04                     ; NEW
    BEQ .l8107
    CPY #$07                     ; WARM1
    BNE .l811F
    JSR .l8218
.l8107
    SEI
    JSR .l8183
    LDA ACBACK
    STA $D025
    LDA COLOR
    STA $D026
    JSR procTextscreen           ; $90FC
    JSR .lAB05
    CLI
.l811E
    RTS
---------------------------------
.l811F
    CPY #$09
    BEQ .l8127
    CPY #$0A
    BNE .l8147
.l8127
    LDA $D011
    LDX $C278
    BEQ .l8141
    AND #$20
    BEQ .l811E
    CPY #$0A
    BEQ .l811E
    LDA #$91
    JSR CWRT
    LDA #$91
    JMP CWRT
---------------------------------
.l8141
    STA $C265
    JMP procTextscreen           ; $90FC
---------------------------------
.l8147
    CPY #$08
    BNE .l8155
    LDA $C265
    AND #$20
    BEQ .l8182
    JMP .l8E3C
---------------------------------
.l8155
    CPY #$06
    BNE .l8162
    LDA CSTAT                   ; status of comal program
    CMP #$05
    BEQ .l811E
    BNE .l8107
.l8162
    CPY #$03
    BNE .l8182
    LDA #$00
    STA $D418
    SEI
    LDA $D01A
    AND #$F7
    STA $D01A
    CLI
    JSR .lAC02
    LDA CSTAT                   ; status of comal program
    CMP #$05
    BEQ .l811E
    JMP .l8107
---------------------------------
.l8182
    RTS
---------------------------------
.l8183
    LDA #$00
    STA $C2FC
    STA $C2FF
    STA $C277
    STA $C26A
    STA $C261
    STA $D01B
    STA $D01D
    STA $D017
    STA $D015
    STA $D01C
    STA $D010
    STA $C263
    STA $C278
    LDX #$04
.l81AE
    STA $C26B,X
    STA $C264,X
    STA $C306,X
    STA $C3BA,X
    DEX
    BNE .l81AE
    LDX #$10
.l81BF
    STA $C2BB,X
    STA $C2CB,X
    STA $C348,X
    STA $C358,X
    STA $C388,X
    STA $CFFF,X
    STA $C398,X
    DEX
    BNE .l81BF
    INX
    STX $C298
    STX $C29A
    STX $C299
    STX $C2FD
    JSR .l8D8F
.l81E7
    LDX #$00
    LDA #$D0
    STX $07
    STA PAGEPT+1
    STX T1                      ; temporary 1
.l81F1
    LDY #$3F
    JSR $C574
    PHP
    LDX T1                      ; temporary 1
    INC T1                      ; temporary 1
    LDA $C29B,X
    AND #$7F
    PLP
    BEQ .l8205
    ORA #$80
.l8205
    STA $C29B,X
    CLC
    LDA $07
    ADC #$40
    STA $07
    BCC .l8213
    INC PAGEPT+1
.l8213
    CPX #$1F
    BCC .l81F1
    RTS
---------------------------------
.l8218
    LDA $D021
    AND #$0F
    STA GRWK3
    LDA $D020
    AND #$0F
    STA $C262
    RTS
---------------------------------
P4_8228
    LDA PAGE
    PHA
    LDA #$83
    STA PAGE
    STA $DE00
    LDA D1ICR                   ; $DC0D
    BMI .l824A
    LDA $D019
    BPL .l824A
    AND #$08
    BNE .l8269
    LDA #$01
    BIT $D019
    BEQ .l826C
    JSR .lB96F
.l824A
    LDA $C278
    BEQ .l8252
    JSR .lB835
.l8252
    LDA $C308
    ORA $C309
    ORA $C30A
    BEQ .l8260
    JSR .lBC44
.l8260
    PLA
    STA PAGE
    STA $DE00
    JMP ($C27A)
---------------------------------
.l8269
    JSR .lBCD5
.l826C
    PLA
    STA PAGE
    STA $DE00
    PLA
    TAY
    PLA
    TAX
    PLA
    RTI
    LDA #$34
    STA $01
    LDA RESOL
    BNE .l8298
    LDA (GRWK1),Y
    AND $C50D,X
    BNE .l8290
.l8287
    LDA (GRWK2),Y
    AND #$0F
.l828B
    LDX #$37
    STX $01
    RTS
---------------------------------
.l8290  LDA (GRWK2),Y
    LSR
    LSR
    LSR
    LSR
    BPL .l828B
.l8298
    LDA (GRWK1),Y
    AND $C535,X
    BNE .l82A3
    LDA GRWK3
    BPL .l828B
.l82A3
    CMP $C52D,X
    BEQ .l8287
    BCC .l8290
    LDX #$37
    STX $01
    BCS .l8287
    LDA GRWK3+1
    BMI .l82D4
    JSR .l847A
    LDA #$34
    STA $01
    LDA RESOL
    BNE .l82E3
    LDA GRWK3
    CMP GRWK3+1
    BEQ .l82D5
    ORA GCOLH
    STA (GRWK2),Y
    LDA (GRWK1),Y
    ORA $C50D,X
.l82CE
    STA (GRWK1),Y
    LDX #$37
    STX $01
.l82D4
    RTS
---------------------------------
.l82D5   
    LDA (GRWK1),Y
    AND $C515,X
    BCS .l82CE
.l82DC
    LDA (GRWK1),Y
    AND $C51D,X
    BCS .l82CE
.l82E3
    LDA GRWK3
    CMP GRWK3+1
    BEQ .l82DC
    LDA (GRWK2),Y
    AND #$0F
    CMP GRWK3+1
    BEQ .l82FB
    BNE .l8305
.l82F3
    LDA (GRWK2),Y
    AND #$F0
    ORA GRWK3+1
    STA (GRWK2),Y
.l82FB
    LDA (GRWK1),Y
    AND $C51D,X
    ORA $C52D,X
    BNE .l82CE
.l8305
    LDA (GRWK2),Y
    AND #$F0
    CMP GCOLH
    BEQ .l8317
    BNE .l8321
.l830F
    LDA (GRWK2),Y
    AND #$0F
    ORA GCOLH
    STA (GRWK2),Y
.l8317
    LDA (GRWK1),Y
    AND $C51D,X
    ORA $C525,X
    BNE .l82CE
.l8321
    LDA #$37
    STA $01
    LDA (GRWK2),Y
    AND #$0F
    CMP GRWK3+1
    BEQ .l8333
    BNE .l833E
.l832F
    LDA GRWK3+1
    STA (GRWK2),Y
.l8333
    LDA #$34
    STA $01
    LDA (GRWK1),Y
    ORA $C535,X
    BNE .l82CE
.l833E
    LDA #$34
    STA $01
    TXA
    PHA
    LDA GRWK1
    PHA
    AND #$F8
    STA GRWK1
    STY AC2M1
    STY AC2M2
    LDY #$07
.l8351
    LDA (GRWK1),Y
.l8353
    PHA
    AND #$03
    TAX
    INC AC2E,X
    PLA
    LSR
    LSR
    BNE .l8353
    DEY
    BPL .l8351
    PLA
    STA GRWK1
    PLA
    TAX
    LDY AC2M2
    BEQ .l82F3
    LDY AC2M1
    BEQ .l830F
    LDA #$37
    STA $01
    LDY #$00
    BEQ .l832F

.l8376
    !by $80,$40,$20,$10,$08,$04,$02,$01
.l837E
    !by $7F,$BF,$DF,$EF,$F7,$FB,$FD,$FE 
.l8386
    !by $3F,$3F,$CF,$CF,$F3,$F3,$FC,$FC 
.l838E
    !by $40,$40,$10,$10,$04,$04,$01,$01 
.l8396
    !by $80,$80,$20,$20,$08,$08,$02,$02 
.l839E
    !by $C0,$C0,$30,$30,$0C,$0C,$03,$03 
.l83A6
    !by $00,$00,$20,$01,$40,$02,$60,$03 
.l83AE
    !by $80,$04,$A0,$05,$C0,$06,$E0,$07 


    PHA
.l83B7
    LDA (COPY3),Y
    ASL
    ASL
    ASL
    ASL
    ORA ACBACK
    STX $01
    STA (COPY1),Y
    PLA
    PHA
    STA $01
    DEY
    BPL .l83B7
    PLA
    RTS
---------------------------------
    LDX $01
    LDA #$34
    STA $01
.l83D3
    LDA (Q5),Y
    STA (PAGEPT),Y
    DEY
    BPL .l83D3
    STX $01
    RTS
---------------------------------
    LDX $01
    LDA #$34
    STA $01
    LDA (PAGEPT),Y
    STX $01
    RTS
---------------------------------
    LDX $01
    PHA
    LDA #$34
    STA $01
    PLA
    STA (PAGEPT),Y
    STX $01
    RTS
---------------------------------
    JSR CALL
    !by $83
    !by $6D
    !by $AA
    RTS
    JSR CALL
    !by $83
    !by $A6
    !by $AA
.l8402
    RTS
---------------------------------
    JSR CALL
    !by $83
    !by POLYPT+1
    !by $A2
    BCC .l8402
    JMP ($C250)
---------------------------------
    !by $82
    !by $49
    !by $0F
    !by $DA
    !by $A2
    !by $89
    !by $34
    !by $00
    !by $00
    !by $00
---------------------------------
    STA $01
    LDA $DF00,Y
    STA $C3A9,X
    LDA $DE00,Y
    BMI .l8432
    LDY $C53E,X
    STA $DBF8,Y
    LDY #$37
    STY $01
    JMP .lBA9B
---------------------------------
.l8432
    TAY
    LDA #$37
    STA $01
    LDA .lBACE-1,Y
    PHA
    LDA .lBAD4,Y
    PHA
    LDY $C3A9,X
    RTS
---------------------------------
    !by $03
.l8444
    !by $DA

    STA $01
    LDA GRWK2
.l8449
    STA (GRWK1),Y
    INY
    BNE .l8449
    INC GRWK1+1
    INX
    CPX #$DB
    BCC .l8449
.l8455
    STA (GRWK1),Y
    INY
    CPY #$E8
    BCC .l8455
    LDA #$37
    STA $01
.l8460
    RTS
---------------------------------
    STA $01
    BNE .l8468
.l8465
    TYA
    STA (PAGEPT),Y
.l8468
    CLC
    LDA PAGEPT
    ADC #$08
    STA PAGEPT
    BCC .l8473
    INC PAGEPT+1
.l8473
    DEC Q2+1
    BNE .l8465
    STX $01
    RTS
---------------------------------
.l847A
    LDY #$00
    STY GRWK1+1
    SEC
    LDA #$C7
    SBC YY                      ; current y (graphics)
    STA GRWK2
    AND #$F8
    STA GRWK1
    ASL
    ROL GRWK1+1
    ASL
    ROL GRWK1+1
    ADC GRWK1
    BCC .l8495
    INC GRWK1+1
.l8495
    ASL
    ROL GRWK1+1
    ASL
    ROL GRWK1+1
    ASL
    ROL GRWK1+1
    ADC XX                      ; current x (graphics)
    AND #$F8
    EOR GRWK2
    EOR GRWK1
    STA GRWK1
    STA GRWK2
    LDA GRWK1+1
    ADC XX+1                    ; current x (graphics)
    EOR #$E0
    STA GRWK1+1
    LSR
    ROR GRWK2
    LSR
    ROR GRWK2
    LSR
    ROR GRWK2
    EOR #$C4
    STA GRWK2+1
    LDA XX                      ; current x (graphics)
    AND #$07
    TAX
    RTS
---------------------------------
; Turtle
ptTurtle

    !pet $02,"bk"
    !word phBK                  ; $882E
;
    !pet $02,"bg"
    !word phBg                  ; $880E
;
    !pet $02,"cs"
    !word phCs                  ; $878B
;
    !pet $02,"fd"
    !word phFd                  ; $87D3
;
    !pet $02,"ht"
    !word phHt                  ; $885C
;
    !pet $02,"lt"
    !word phLt                  ; $87D9
;
    !pet $02,"pc"
    !word phPc                  ; $87F4
;
    !pet $02,"pd"
    !word phPd                  ; $8849
;
    !pet $02,"pu"
    !word phPu                  ; $8844
;
    !pet $02,"rt"
    !word phRt                  ; $8834
;
    !pet $04,"seth"
    !word phSeth                ; $87DF
;
    !pet $02,"st"
    !word phSt                  ; $8857
;
    !pet $06,"textbg"
    !word phTextbg              ; $8814
; -------------------------------

; $850c
; Graphics
ptGraphics

    !pet $06,"window"
    !word phWindow              ; $95C2
;
    !pet $08,"viewport"
    !word phViewport            ; $87C3
;
    !pet $06,"drawto"
    !word phDrawto              ; $8795
;
    !pet $04,"draw"
    !word phDraw                ; $879C
;
    !pet $04,"plot"
    !word phPlot                ; $87A3
;
    !pet $06,"moveto"
    !word phMoveto              ; $87AA
;
    !pet $04,"move"
    !word phMove                ; $87B1
;
    !pet $06,"circle"
    !word phCircle              ; $889C
;
    !pet $03,"arc"
    !word phArc                 ; $88a4
;
    !pet $04,"arcl"
    !word phArcl                ; $88AE
;
    !pet $04,"arcr"
    !word phArcr                ; $88B5
;
    !pet $09,"textstyle"
    !word phTextstyle           ; $884E
;
    !pet $08,"plottext"
    !word phPlottext            ; $881A
;
    !pet $08,"pencolor"
    !word phPencolor            ; $87F4
;
    !pet $09,"textcolor"
    !word phTextcolor           ; $87FA
;
    !pet $08,"getcolor"
    !word phGetcolor            ; $87CC
;
    !pet $04,"fill"
    !word phFill                ; $8800
;
    !pet $05,"paint"
    !word phPaint               ; $8807
;
    !pet $0a,"background"
    !word phBackground          ; $880E
;
    !pet $0e,"textbackground"
    !word phTextbackground      ; $8814
;
    !pet $06,"border"
    !word phBorder              ; $8822
;
    !pet $0a,"textborder"
    !word phTextborder          ; $8828
;
    !pet $0d,"graphicscreen"
    !word phGraphicscreen       ; $87B8
;
    !pet $0a,"textscreen"
    !word phTextscreen          ; $87BE
;
    !pet $0b,"splitscreen"
    !word phSplitscreen         ; $883A
;
    !pet $0a,"fullscreen"
    !word phFullscreen          ; $883F
;
    !pet $0b,"clearscreen"
    !word phClearscreen         ; $878B
;
    !pet $05,"clear"
    !word phClear               ; $8790
;
    !pet $0a,"showturtle"
    !word phShowturtle          ; $8857
;
    !pet $0a,"hideturtle"
    !word phHideturtle          ; $885C
;
    !pet $0a,"turtlesize"
    !word phTurtlesize          ; $8861
;
    !pet $04,"xcor"
    !word phXcor                ; $87EA
;
    !pet $04,"ycor"
    !word phYcor                ; $87EF
;
    !pet $05,"setxy"
    !word phSetxy               ; $8795
;
    !pet $0a,"setheading"
    !word phSetheading          ; $87DF
;
    !pet $07,"heading"
    !word phHeading             ; $87E5
;
    !pet $04,"left"
    !word phLeft                ; $87D9
;
    !pet $05,"right"
    !word phRight               ; $8834
;
    !pet $07,"forward"
    !word phForward             ; $87D3
;
    !pet $04,"back"
    !word phBack                ; $882E
;
    !pet $05,"penup"
    !word phPenup               ; $8844
;
    !pet $07,"pendown"
    !word phPendown             ; $8849
;
    !pet $04,"home"
    !word phHome                ; $8867
;
    !pet $04,"wrap"
    !word phWrap                ; $8892
;
    !pet $06,"nowrap"
    !word phNowrap              ; $8897
;
    !pet $03,"inq"
    !word phInq                 ; $88BC
;
    !pet $0a,"savescreen"
    !word phSavescreen          ; $88C2
;
    !pet $0a,"loadscreen"
    !word phLoadscreen          ; $88C8
;
    !pet $0b,"printscreen"
    !word phPrintscreen         ; $88CE
;
    !pet $00
; -------------------------------

; Font
ptFont
    !pet $08,"linkfont"
    !word phLinkfont            ; $886C
;
    !pet $08,"loadfont"
    !word phLoadfont            ; $8871
;
    !pet $08,"keepfont"
    !word phKeepfont            ; $888D
;
    !pet $08,"savefont"
    !word phSavefont            ; $8877
;
    !pet $0c,"getcharacter"
    !word phGetcharacter        ; $887D
;
    !pet $0c,"putcharacter"
    !word phPutcharacter        ; $8885
;
    !by $00
; -------------------------------

.l8745
    !by $81,$00,$00,$00,$00,$7B,$0E,$FA
    !by $35,$12,$89,$B4,$00,$00
.l8753
    !by $00,$00
    !by $00,$00,$00,$00,$00,$00,$00,$00
    !by $00,$89,$1F,$80,$00,$00,$88,$47
    !by $00,$00
.l8767
    !by $00,$88,$A0,$00,$00,$00
    !by $87,$C8,$00,$00,$00,$88,$1F,$00
    !by $00,$00,$87,$46,$00,$00,$00
.l877C
    !by $87,$34,$00,$00,$00,$80,$5D,$B3
    !by $D7,$43
.l8786
    !by $84,$20,$00,$00,$00



; turtle / graphics
; $878B
phCs
phClearscreen
    !by PROC
    !word procClearscreen
    !by $00
    !by ENDPRC

; $8790
phClear
    !by PROC
    !word procClear
    !by $00
    !by ENDPRC

; $8795
phSetxy
phDrawto
    !by PROC
    !word procDrawto
    !by $02
    !by VALUE + REAL
    !by VALUE + REAL
    !by ENDPRC

; $879C
phDraw
    !by PROC
    !word procDraw
    !by $02
    !by VALUE + REAL
    !by VALUE + REAL
    !by ENDPRC

; $87A3
phPlot
    !by PROC
    !word procPlot
    !by $02
    !by VALUE + REAL
    !by VALUE + REAL
    !by ENDPRC

; $87AA
phMoveto
    !by PROC
    !word procMoveto
    !by $02
    !by VALUE + REAL
    !by VALUE + REAL
    !by ENDPRC

; $87B1
phMove
    !by PROC
    !word procMove
    !by $02
    !by VALUE + REAL
    !by VALUE + REAL
    !by ENDPRC

; $87B8
phGraphicscreen
    !by PROC
    !word procGraphicscreen
    !by $01
    !by VALUE + INT
    !by ENDPRC

; $87BE
phTextscreen
    !by PROC
    !word procTextscreen
    !by $00 
    !by ENDPRC

; $87C3
phViewport
    !by PROC
    !word procViewport
    !by $04
    !by VALUE + INT
    !by VALUE + INT
    !by VALUE + INT
    !by VALUE + INT
    !by ENDPRC

; $87CC
phGetcolor
    !by FUNC
    !word funcGetcolor
    !by $02
    !by VALUE + REAL
    !by VALUE + REAL
    !by ENDFNC

; $87D3
phFd
phForward
    !by PROC
    !word procForward
    !by $01
    !by VALUE + REAL
    !by ENDPRC

; $87D9
phLt
phLeft
    !by PROC
    !word procLeft
    !by $01
    !by VALUE + REAL
    !by ENDPRC

; $87DF
phSeth
phSetheading
    !by PROC
    !word procSetheading
    !by $01
    !by VALUE + REAL
    !by ENDPRC

; $87E5
phHeading
    !by FUNC
    !word funcHeading
    !by $00
    !by ENDFNC

; $87EA
phXcor
    !by FUNC
    !word funcXcor
    !by $00
    !by ENDFNC

; $87EF
phYcor
    !by FUNC
    !word funcYcor
    !by $00
    !by ENDFNC

; $87F4
phPc
phPencolor
    !by PROC
    !word procPencolor
    !by $01
    !by VALUE + INT
    !by ENDPRC

; $87FA
phTextcolor
    !by PROC
    !word procTextcolor
    !by $01
    !by VALUE + INT
    !by ENDPRC

; $8800
phFill
    !by PROC
    !word procFill
    !by $02
    !by VALUE + REAL
    !by VALUE + REAL
    !by ENDPRC

; $8807
phPaint
    !by PROC
    !word procPaint
    !by $02
    !by VALUE + REAL
    !by VALUE + REAL
    !by ENDPRC

; $880E
phBg
phBackground
    !by PROC
    !word procBackground
    !by $01
    !by VALUE + INT
    !by ENDPRC

; $8814
phTextbg
phTextbackground
    !by PROC
    !word procTextbackground
    !by $01
    !by VALUE + INT
    !by ENDPRC

; $881A
phPlottext
    !by PROC
    !word procPlottext
    !by $03
    !by VALUE + REAL
    !by VALUE + REAL
    !by VALUE + STR
    !by ENDPRC

; $8822
phBorder
    !by PROC
    !word procBorder
    !by $01
    !by VALUE + INT
    !by ENDPRC

; $8828
phTextborder
    !by PROC
    !word procTextborder
    !by $01
    !by VALUE + INT
    !by ENDPRC

; $882E
phBK
phBack
    !by PROC
    !word procBack
    !by $01
    !by VALUE + REAL
    !by ENDPRC

; $8834
phRt
phRight
    !by PROC
    !word procRight
    !by $01
    !by VALUE + REAL
    !by ENDPRC

; $883A
phSplitscreen
    !by PROC
    !word procSplitscreen
    !by $00 
    !by ENDPRC

; $883F
phFullscreen
    !by PROC
    !word procFullscreen
    !by $00 
    !by ENDPRC

; $8844
phPu
phPenup
    !by PROC
    !word procPenup
    !by $00 
    !by ENDPRC

; $8849
phPd
phPendown
    !by PROC
    !word procPendown
    !by $00 
    !by ENDPRC

; $884E
phTextstyle
    !by PROC
    !word procTextstyle
    !by $04
    !by VALUE + INT
    !by VALUE + INT
    !by VALUE + INT
    !by VALUE + INT
    !by ENDPRC

; $8857
phSt
phShowturtle
    !by PROC
    !word procShowturtle
    !by $00 
    !by ENDPRC

; $885C
phHt
phHideturtle
    !by PROC
    !word procHideturtle
    !by $00 
    !by ENDPRC

; $8861
phTurtlesize
    !by PROC
    !word procTurtlesize
    !by $01
    !by VALUE + REAL
    !by ENDPRC

; $8867
phHome
    !by PROC
    !word procHome
    !by $00 
    !by ENDPRC


; font
; $886C
phLinkfont
    !by PROC
    !word procLinkfont
    !by $00
    !by ENDPRC

; $8871
phLoadfont
    !by PROC
    !word procLoadfont
    !by $01
    !by VALUE + STR
    !by ENDPRC

; $8877
phSavefont
    !by PROC
    !word procSavefont
    !by $01
    !by VALUE + STR
    !by ENDPRC

; $887D
phGetcharacter
    !by PROC
    !word procGetcharacter
    !by $03
    !by VALUE + INT
    !by VALUE + INT
    !by REF + STR
    !by ENDPRC

; $8885
phPutcharacter
    !by PROC
    !word procPutcharacter
    !by $03
    !by VALUE + INT
    !by VALUE + INT
    !by VALUE + STR
    !by ENDPRC

; $888D
phKeepfont
    !by PROC
    !word procKeepfont
    !by $00
    !by ENDPRC


; graphics 2
; $8892
phWrap
    !by PROC
    !word procWrap
    !by $00
    !by ENDPRC

; $8897
phNowrap
    !by PROC
    !word procNowrap
    !by $00
    !by ENDPRC

; $889C
phCircle
    !by PROC
    !word procCircle
    !by $03
    !by VALUE + REAL
    !by VALUE + REAL
    !by VALUE + REAL
    !by ENDPRC

; $88a4
phArc
    !by PROC
    !word procArc
    !by $05
    !by VALUE + REAL
    !by VALUE + REAL
    !by VALUE + REAL
    !by VALUE + REAL
    !by VALUE + REAL
    !by ENDPRC

; $88AE
phArcl
    !by PROC
    !word procArcl
    !by $02
    !by VALUE + REAL
    !by VALUE + REAL
    !by ENDPRC

; $88B5
phArcr
    !by PROC
    !word procArcr
    !by $02
    !by VALUE + REAL
    !by VALUE + REAL
    !by ENDPRC

; $88BC
phInq
    !by FUNC
    !word funcInq
    !by $01
    !by VALUE + INT
    !by ENDFNC

; $88C2
phSavescreen
    !by PROC
    !word procSavescreen
    !by $01
    !by VALUE + STR
    !by ENDPRC

; $88C8
phLoadscreen
    !by PROC
    !word procLoadscreen
    !by $01
    !by VALUE + STR
    !by ENDPRC

; $88CE
phPrintscreen
    !by PROC
    !word procPrintscreen
    !by $02
    !by VALUE + STR
    !by VALUE + INT
    !by ENDPRC


.l88D5
    JMP .error5                 ; error "value out of range"
.l88D8
    LDA XX                      ; current x (graphics)
    PHA
    LDA XX+1                    ; current x (graphics)
    PHA
    LDA YY                      ; current y (graphics)
    PHA
    LDA COPY2
    STA XX                      ; current x (graphics)
    LDA COPY2+1
    STA XX+1                    ; current x (graphics)
    LDA COPY3
    STA YY                      ; current y (graphics)
    JSR .l847A
    PLA
    STA YY                      ; current y (graphics)
    PLA
    STA XX+1                    ; current x (graphics)
    PLA
    STA XX                      ; current x (graphics)
    RTS
---------------------------------

;
; procClearscreen
;
procClearscreen
    LDY #$16
    JMP ($C24E)
---------------------------------
.l88FF
    LDX #$E0
    STX GRWK1+1
    LDY #$00
    STY GRWK1
    TYA
.l8908
    STA (GRWK1),Y
    INY
    BNE .l8908
    INC GRWK1+1
    INX
    CPX #$FF
    BNE .l8908
.l8914
    STA (GRWK1),Y
    INY
    CPY #$40
    BCC .l8914
    LDA RESOL
    BEQ .l8942
    LDX #$D8
    STX GRWK1+1
    LDA $D026
    LDY #$00
    STY GRWK1
.l892A
    STA (GRWK1),Y
    INY
    BNE .l892A
    INC GRWK1+1
    INX
    CPX #$DC
    BCC .l892A
    LDA $D025
    ASL
    ASL
    ASL
    ASL
    ORA GRWK3+1
    JMP .l8946
---------------------------------
.l8942
    LDA GRWK3
    ORA GCOLH
.l8946
    STA GRWK2
    LDY #$1C
.l894A
    LDA .l8444,Y
    STA TXT-1,Y                 ; string constant buffer $C760
    DEY
    BNE .l894A
    LDX #$D8
    STX GRWK1+1
    STY GRWK1
    LDA #$34
    JMP TXT                     ; string constant buffer $C760

;
; procClear
;
procClear
    LDY #$17
    JMP ($C24E)
---------------------------------
.l8963
    LDY #$19
.l8965
    LDA .l8460,Y
    STA TXT1,Y                  ; string constant buffer $C760-1
    DEY
    BNE .l8965
    LDA $C210
    STA COPY3
    LDA $C212
    STA Q2
    LDA $C213
    LSR
    ROR Q2
    LSR
    ROR Q2
    LSR
    ROR Q2
    LDA $C20E
    STA Q2+1
    LDA $C20F
    LSR
    ROR Q2+1
    LSR
    ROR Q2+1
    LSR
    ROR Q2+1
    LDA Q2+1
    SEC
    SBC Q2
    STA Q2
    LDA $C212
    AND #$07
    TAX
    LDA .l8A04,X
    STA Q1
    LDA $C20E
    AND #$07
    TAX
    LDA Q2
    BNE .l89BA
    LDA Q1
    ORA .l89FD,X
    STA Q1
    BNE .l89BF
.l89BA
    LDA .l89FD,X
    STA Q1+1
.l89BF
    LDA $C212
    STA COPY2
    LDA $C213
    STA COPY2+1
.l89C9
    JSR .l88D8
    LDA GRWK1
    STA PAGEPT
    LDA GRWK1+1
    STA PAGEPT+1
    LDY #$00
    JSR $C574
    AND Q1
    JSR $C57F
    LDA Q2
    BEQ .l89F3
    STA Q2+1
    LDA #$34
    LDX #$37
    JSR TXT                     ; string constant buffer $C760
    JSR $C574
    AND Q1+1
    JSR $C57F
.l89F3
    LDA COPY3
    DEC COPY3
    CMP $C214
    BNE .l89C9
    RTS
---------------------------------
.l89FD
    !by $7F,$3F,$1F,$0F,$07,$03,$01 
.l8A04
    !by $00,$80,$C0,$E0,$F0,$F8,$FC,$FE 


.l8A0C
    BIT $C24C
    BPL .l8A5D
    SEC
    TXA
    SBC $C216
    STA XX                      ; current x (graphics)
    LDA XX+1                    ; current x (graphics)
    SBC $C217
    STA XX+1                    ; current x (graphics)
    BIT $C24C
    BVS .l8A35
    LDA #$38
    LDY #$C2
    JSR LDAC1
    LDA #$00
    LDY #$C2
    JSR FPSUB
.l8A32
    JSR .l8E20
.l8A35
    JMP .l8A5E
---------------------------------
.l8A38
    BIT $C24C
    BPL .l8A5D
    TXA
    CLC
    ADC $C216
    STA XX                      ; current x (graphics)
    LDA XX+1                    ; current x (graphics)
    ADC $C217
    STA XX+1                    ; current x (graphics)
    BIT $C24C
    BVS .l8A35
    JSR .l8E13
    LDA #$38
    LDY #$C2
    JSR FPADD
    JMP .l8A32
---------------------------------
.l8A5D  RTS
---------------------------------
.l8A5E
    LDX XX                      ; current x (graphics)
    LDA XX+1                    ; current x (graphics)
    CPX $C212
    SBC $C213
    BMI .l8A38
    LDA XX+1                    ; current x (graphics)
    CPX $C20A
    SBC $C20B
    BPL .l8A0C
.l8A74
    LDX YY                      ; current y (graphics)
    LDA YY+1                    ; current y (graphics)
    BMI .l8AB5
    BNE .l8A89
    CPX $C214
    BCC .l8AB5
    CPX $C20C
    BCS .l8A89
    JMP $C447
---------------------------------
.l8A89
    BIT $C24C
    BPL .l8A5D
    SEC
    TXA
    SBC $C218
    STA YY                      ; current y (graphics)
    LDA YY+1                    ; current y (graphics)
    SBC $C219
    STA YY+1                    ; current y (graphics)
    BIT $C24C
    BVS .l8AB2
    LDA #$3D
    LDY #$C2
    JSR LDAC1
    LDA #$05
    LDY #$C2
    JSR FPSUB
.l8AAF
    JSR .l8E1A
.l8AB2
    JMP .l8A74
---------------------------------
.l8AB5
    BIT $C24C
    BPL .l8A5D
    TXA
    CLC
    ADC $C218
    STA YY                      ; current y (graphics)
    LDA YY+1                    ; current y (graphics)
    ADC $C219
    STA YY+1                    ; current y (graphics)
    BIT $C24C
    BVS .l8AB2
    JSR .l8E0D
    LDA #$3D
    LDY #$C2
    JSR FPADD
    JMP .l8AAF

;
; procDraw
;
procDraw
    LDY #$03
    JMP ($C24E)
---------------------------------
.l8ADF
    JSR .l9741
    JSR .l9768
    JMP .l8B14

;
; procMove
;
procMove
    LDY #$06
    JMP ($C24E)
---------------------------------
.l8AED
    JSR .l9768
    LDX AC1M4
    LDA AC1M3
    STX YY                      ; current y (graphics)
    STA YY+1                    ; current y (graphics)
    JSR .l9741
.l8AFB
    LDX AC1M4
    LDA AC1M3
    STX XX                      ; current x (graphics)
    STA XX+1                    ; current x (graphics)
    JMP .l8C8F

;
; procPlot
;
procPlot
    LDY #$04
    JMP ($C24E)
---------------------------------
.l8B0B
    JSR procMoveto               ; $8C7C
    JSR .l8A5E
    JMP .lA03C
---------------------------------
.l8B14
    CLC
    LDA COPY2
    ADC XX                      ; current x (graphics)
    TAX
    LDA COPY2+1
    ADC XX+1                    ; current x (graphics)
    TAY
    BIT GRWK3+1
    BPL .l8B37
    STX XX                      ; current x (graphics)
    STY XX+1                    ; current x (graphics)
    CLC
    LDA COPY3
    ADC YY                      ; current y (graphics)
    STA YY                      ; current y (graphics)
    LDA COPY3+1
    ADC YY+1                    ; current y (graphics)
    STA YY+1                    ; current y (graphics)
    JMP .l8C8F
---------------------------------
.l8B37
    CPX $C212
    SBC $C213
    BMI .l8B8A
    TYA
    CPX $C20A
    SBC $C20B
    BPL .l8B8A
    CLC
    LDA COPY3
    ADC YY                      ; current y (graphics)
    TAX
    LDA COPY3+1
    ADC YY+1                    ; current y (graphics)
    BNE .l8B8A
    CPX $C214
    BCC .l8B8A
    CPX $C20C
    BCS .l8B8A
    LDX XX                      ; current x (graphics)
    LDA XX+1                    ; current x (graphics)
    CPX $C212
    SBC $C213
    BMI .l8B8A
    LDA XX+1                    ; current x (graphics)
    CPX $C20A
    SBC $C20B
    BPL .l8B8A
    LDX YY                      ; current y (graphics)
    LDA YY+1                    ; current y (graphics)
    BNE .l8B8A
    CPX $C214
    BCC .l8B8A
    CPX $C20C
    BCS .l8B8A
    LDA #$47
    LDY #$C4
    BNE .l8B8E
.l8B8A
    LDA #$5E
    LDY #$8A
.l8B8E
    STA $C275
    STY $C276
    JSR .l8B9A
    JMP .lA03C
---------------------------------
.l8B9A
    LDY #$00
    STY Q2
    STY Q2+1
    STY Q3
    STY Q3+1
    LDA COPY2+1
    ORA COPY2
    BEQ .l8BC1
    LDA COPY2+1
    BPL .l8BBF
    SEC
    TYA
    SBC COPY2
    STA COPY2
    TYA
    SBC COPY2+1
    STA COPY2+1
    DEC Q2
    DEC Q2+1
    BMI .l8BC1
.l8BBF
    INC Q2
.l8BC1
    LDA COPY3+1
    ORA COPY3
    BEQ .l8BDE
    LDA COPY3+1
    BPL .l8BDC
    SEC
    TYA
    SBC COPY3
    STA COPY3
    TYA
    SBC COPY3+1
    STA COPY3+1
    DEC Q3
    DEC Q3+1
    BMI .l8BDE
.l8BDC
    INC Q3
.l8BDE
    LDX COPY3
    LDA COPY3+1
    CPX COPY2
    SBC COPY2+1
    BMI .l8BFC
    LDX COPY2+1
    LDY COPY2
    LDA COPY3
    STA COPY2
    LDA COPY3+1
    STA COPY2+1
    STX COPY3+1
    STY COPY3
    LDY #$02
    BNE .l8BFE
.l8BFC
    LDY #$00
.l8BFE
    STY Q4
    LDA COPY2+1
    EOR #$FF
    SEC
    ROR
    STA Q1+1
    LDA COPY2
    EOR #$FF
    ROR
    STA Q1
    INC Q1
    BNE .l8C15
    INC Q1+1
.l8C15
    LDA COPY2
    STA COPY1
    LDA COPY2+1
    STA COPY1+1
    JSR .l8C79
.l8C20
    LDA COPY1
    BEQ .l8C74
.l8C24
    DEC COPY1
    CLC
    LDA Q1
    ADC COPY3
    STA Q1
    LDA Q1+1
    ADC COPY3+1
    STA Q1+1
    BMI .l8C5F
    CLC
    LDA XX                      ; current x (graphics)
    ADC Q2
    STA XX                      ; current x (graphics)
    LDA XX+1                    ; current x (graphics)
    ADC Q2+1
    STA XX+1                    ; current x (graphics)
    CLC
    LDA YY                      ; current y (graphics)
    ADC Q3
    STA YY                      ; current y (graphics)
    LDA YY+1                    ; current y (graphics)
    ADC Q3+1
    STA YY+1                    ; current y (graphics)
    SEC
    LDA Q1
    SBC COPY2
    STA Q1
    LDA Q1+1
    SBC COPY2+1
    STA Q1+1
    JMP .l8C6E
---------------------------------
.l8C5F
    LDX Q4
    CLC
    LDA XX,X                    ; current x (graphics)
    ADC Q2,X
    STA XX,X                    ; current x (graphics)
    LDA XX+1,X                  ; current x (graphics),X
    ADC Q2+1,X
    STA XX+1,X                  ; current x (graphics),X
.l8C6E
    JSR .l8C79
    JMP .l8C20
---------------------------------
.l8C74
    DEC COPY1+1
    BPL .l8C24
    RTS
---------------------------------
.l8C79
    JMP ($C275)
---------------------------------

;
; procMoveto
;
procMoveto
    LDY #$05
    JMP ($C24E)
---------------------------------
.l8C81
    JSR .l96C6
    STX XX+1                    ; current x (graphics)
    STA XX                      ; current x (graphics)
    JSR .l970A
    STX YY+1                    ; current y (graphics)
    STA YY                      ; current y (graphics)
.l8C8F
    BIT $C24C
    BPL .l8CA0
    LDA GRWK3+1
    PHA
    JSR procPenup                ; $9536
    JSR .l8A5E
    PLA
    STA GRWK3+1
.l8CA0
    JMP .lA03C

;
; procDrawto
;
procDrawto
    LDY #$02
    JMP ($C24E)
---------------------------------
.l8CA8
    JSR .l9707
.l8CAB
    JSR .l8CB1
    JMP .l8B14
---------------------------------
.l8CB1
    LDA COPY2
    SEC
    SBC XX                      ; current x (graphics)
    STA COPY2
    LDA COPY2+1
    SBC XX+1                    ; current x (graphics)
    STA COPY2+1
    LDA COPY3
    SEC
    SBC YY                      ; current y (graphics)
    STA COPY3
    LDA COPY3+1
    SBC YY+1                    ; current y (graphics)
    STA COPY3+1
    RTS
---------------------------------

.l8CCC
    !by $40,$01,$C8,$00,$3F,$01,$C7,$00 
    !by $00,$00,$00,$00,$40,$01,$C8,$00 

;
init_Graphics
    LDA $C298
    BNE .l8CE8
    RTS
---------------------------------

;
init_Turtle
    LDA $C298
    BNE .l8CEA
    RTS
---------------------------------

.l8CE8
    LDA #$00
.l8CEA
    STA $C26B
    LDY #$04
.l8CEF
    LDA .l877C,Y
    STA $C252,Y
    LDA .l8786,Y
    STA $C270,Y
    DEY
    BPL .l8CEF
    JSR .l8D8F
    JSR .l8FB3
    LDY #$C8
    LDA #$00
    JSR INTFP
    LDX #$3D
    LDY #$C2
    JSR STAC1
    LDA COLOR
    JSR .l8DB5
    LDA ACBACK
    STA GRWK3
    LDA ACBORD
    STA $C262
    LDX #$01
    STX $C263
    STX $C295
    STX $C296
    DEX
    STX $C280
    STX $C297
    STX RESOL
    STX $C298
    STX $C278
    STX XX+1                    ; current x (graphics)
    STX YY+1                    ; current y (graphics)
    JSR .l935E
    JSR procClearscreen          ; $88FA
    LDA $C26B
    LSR
    ROR
    STA $C24C
    BEQ .l8D70
    LDY #$14
.l8D53
    LDA .l8767,Y
    STA $C219,Y
    DEY
    BNE .l8D53
    JSR .l95F0
    JSR .l8D86
    JSR .lA008
    LDA CSTAT                   ; status of comal program
    CMP #$05
    BEQ .l8D6F
    JSR procSplitscreen          ; $A25D
.l8D6F
    RTS
---------------------------------
.l8D70
    LDY #$14
.l8D72
    LDA .l8753,Y
    STA $C219,Y
    DEY
    BNE .l8D72
    JSR .l95F0
    LDY #$00
    STY $C264
    JSR .lA061
.l8D86
    JSR procPenup                ; $9536
    JSR procHome                 ; $954E
    JMP procPendown              ; $9542
---------------------------------
.l8D8F
    LDY #$10
.l8D91
    LDA .l8CCC-1,Y
    STA $C209,Y
    DEY
    BNE .l8D91
    RTS

;
; procPencolor
;
procPencolor
    LDY #$0B
    JMP ($C24E)
---------------------------------
.l8DA0
    JSR .l8DD3
    LDX $C26B
    BEQ .l8DAB
    STA $D02E
.l8DAB
    PHA
    LDA GRWK3+1
    AND #$F0
    STA GRWK3+1
    PLA
    ORA GRWK3+1
.l8DB5
    STA GRWK3+1
    ASL
    ASL
    ASL
    ASL
    STA GCOLH
    RTS

;
; procTextcolor
;
procTextcolor
    LDY #$0C
    JMP ($C24E)
---------------------------------
.l8DC3
    JSR .l8DCA
    STA COLOR
    RTS
---------------------------------
.l8DCA
    JSR .l8DD3
    BCC .l8DD2
    LDA ACBACK
.l8DD2
    RTS
---------------------------------
.l8DD3
    JSR .l9589
.l8DD6
    LDY #$00
    LDA (COPY1),Y
    BPL .l8DEA
    CMP #$FF
    BNE .l8DF2
    INY
    LDA (COPY1),Y
    CMP #$FF
    BNE .l8DF2
    LDA GRWK3
    RTS
---------------------------------
.l8DEA
    INY
    LDA (COPY1),Y
    CMP #$10
    BCS .l8DF2
    RTS
---------------------------------
.l8DF2
    LDX #$1E
    !by $2c
.l8DF5
    LDX #$22                    ; invalid sprite number
    JMP RUNERR
---------------------------------
.l8DFA
    JSR .l95B0
    BNE .l8DF5
    CPX #$08
    BCS .l8DF5
    TXA
    ASL
    TAY
    RTS
---------------------------------
.l8E07
    LDA #$52
    LDY #$C2
    BNE .l8E17
.l8E0D
    LDA #$05
    LDY #$C2
    BNE .l8E17
.l8E13
    LDA #$00
    LDY #$C2
.l8E17
    JMP LDAC1
---------------------------------
.l8E1A
    LDX #$05
    LDY #$C2
    BNE .l8E24
.l8E20
    LDX #$00
    LDY #$C2
.l8E24
    JMP STAC1
---------------------------------
.l8E27
    JMP .l88D5

;
; procGraphicscreen
;
procGraphicscreen
    LDY #$12
    JMP ($C24E)
---------------------------------
.l8E2F
    JSR .l95B0
    BNE .l8E27
    TXA
    CMP #$02
    BPL .l8E27
.l8E39
    JSR .l8E9C
.l8E3C
    JSR .l95BC
    PHP
    BNE .l8E53
    LDA $D018
    STA $C27D
    LDA $DD00
    AND #$03
    STA $C27E
    JSR .l8EF7
.l8E53
    LDA $D016
    LDX RESOL
    BEQ .l8E5E
    ORA #$10
    BNE .l8E60
.l8E5E
    AND #$EF
.l8E60
    STA $D016
    LDA $D018
    AND #$02
    PHA
    LSR
    ROR
    ROR
    STA UPPER2
    PLA
    ORA #$68
    STA $D018
    LDA $DD00
    AND #$FC
    STA $DD00
    LDA $D011
    ORA #$20
    AND #$7F
    STA $D011
    LDA $C267
    STA $D015
    LDA GRWK3
    STA $D021
    LDA $C262
    STA $D020
    PLP
    BEQ .l8EB0
    RTS
---------------------------------
.l8E9C
    LDX RESOL
    STA RESOL
    CPX RESOL
    BEQ .l8EAA
    JSR procClearscreen          ; $88FA
    JSR .l935E
.l8EAA
    RTS
---------------------------------
.l8EAB
    JSR .l95BC
    BEQ .l8ECF
.l8EB0
    LDA $C2FD
    BNE .l8ECF
    SEI
    LDA #$7F
    STA D1ICR                   ; $DC0D
    AND $D011
    STA $D011
    LDA #$FC
    STA $D012
    LDA $D01A
    ORA #$01
    STA $D01A
    CLI
.l8ECF
    RTS
---------------------------------
.l8ED0
    JSR .l95BC
    BEQ .l8EEE
    LDA $C2FD
    BNE .l8EEE
    SEI
    LDA $D01A
    AND #$FE
    STA $D01A
    LDA #$01
    STA $D019
    LDA #$81
    STA D1ICR                   ; $DC0D
    CLI
.l8EEE
    LDA $D015
    LDY #$00
    STY $D015
    RTS
---------------------------------
.l8EF7
    LDA TIME+2
    STA T1                      ; temporary 1
.l8EFB
    LDA TIME+2
    SBC T1                      ; temporary 1
    CMP #$04
    BPL .l8F0F
    LDA $D012
    CMP #$0F
    BCS .l8EFB
    BIT $D011
    BMI .l8EFB
.l8F0F
    RTS
---------------------------------
.l8F10
    LDX #$1F                    ; invalid boundary
    JMP RUNERR

;
; procViewport
;
procViewport
    LDY #$01
    JMP ($C24E)
---------------------------------
.l8F1A
    JSR .l95B0
    STX COPY2
    STA COPY2+1
    CPX #$00
    SBC #$00
    BMI .l8F10
    LDA RESOL
    EOR #$FF
    AND COPY2
    STA COPY2
    JSR .l95AB
    STX COPY3
    STA COPY3+1
    CPX #$40
    SBC #$01
    BPL .l8F10
    TXA
    ORA RESOL
    STA COPY3
    LDA COPY3+1
    CPX COPY2
    SBC COPY2+1
    BCC .l8F10
    JSR .l95A6
    STX Q2
    BNE .l8F10
    CPX #$00
    BCC .l8F10
    JSR .l95A1
    STX Q3
    BNE .l8F10
    CPX #$C8
    BCS .l8F10
    CPX Q2
    BCC .l8F10
    LDX Q3
    STX $C210
    INX
    STX $C20C
    TXA
    SEC
    SBC Q2
    STA $C218
    TAY
    LDA #$00
    JSR INTFP
    LDX #$3D
    LDY #$C2
    JSR STAC1
    LDA Q2
    STA $C214
    LDX COPY2
    LDA COPY2+1
    STX $C212
    STA $C213
    CLC
    LDA COPY3
    STA $C20E
    ADC #$01
    STA $C20A
    TAY
    LDA COPY3+1
    STA $C20F
    ADC #$00
    STA $C20B
    TAX
    TYA
    SEC
    SBC COPY2
    STA $C216
    TXA
    SBC COPY2+1
    STA $C217
.l8FB3
    LDY $C216
    LDA $C217
    JSR INTFP
    LDX #$38
    LDY #$C2
    JMP STAC1

;
; funcGetcolor
;
funcGetcolor
    LDY #$0D
    JMP ($C24E)
---------------------------------
.l8FC8
    JSR .l8FD3
    TAX
    BMI .l8FD0
    LDA #$00
.l8FD0
    JMP PSHINT
---------------------------------
.l8FD3
    JSR .l978F
    JSR .l8FE4
    BCS .l8FDE
    LDA #$FF
    RTS
---------------------------------
.l8FDE
    JSR .l88D8
    JMP $C40F
---------------------------------
.l8FE4
    LDX COPY2
    LDA COPY2+1
    CPX $C212
    SBC $C213
    BCC .l9009
    LDA COPY2+1
    CPX $C20A
    SBC $C20B
    BCS .l9009
    LDA COPY3+1
    BNE .l9009
    LDA COPY3
    CMP $C20C
    BCS .l9009
    CMP $C214
    RTS
---------------------------------
.l9009
    CLC
    RTS
---------------------------------
.l900B
    JSR .l9589
.l900E
    LDY #$01
    LDA (COPY1),Y
    EOR #$80
    STA (COPY1),Y
    RTS
---------------------------------

;
; procBack
;
procBack
    JSR .l900B

;
; procForward
;
procForward
    LDY #$20
    JMP ($C24E)
---------------------------------
.l901F
    JSR .l96FD
    LDA #$5C
    LDY #$C2
    JSR FPMUL
    JSR .l9747
    JSR .l9700
    LDA #$57
    LDY #$C2
    JSR FPMUL
    JSR .l976E
    JMP .l8B14
---------------------------------

;
; procRight
;
procRight
    JSR .l900B

;
; procLeft
;
procLeft
    LDY #$1F
    JMP ($C24E)
---------------------------------
.l9044
    JSR .l96FD
    LDA #$52
    LDY #$C2
    BNE .l905C

;
; procSetheading
;
procSetheading
    LDY #$1D
    JMP ($C24E)
---------------------------------
.l9052
    JSR .l96FD
    JSR FPNEG
    LDA #$7C
    LDY #$87
.l905C
    JSR FPADD
    JSR .l906C
    LDX #$52
    LDY #$C2
    JSR STAC1
    JMP .lA061
---------------------------------
.l906C
    LDA #$AA
    LDY #$C5
    JSR FPCOM
    BEQ .l9077
    BCS .l9081
.l9077
    LDA #$4F
    LDY #$87
    JSR FPADD
    JMP .l906C
---------------------------------
.l9081
    LDA AC1E
    BEQ .l9093
    LDA AC1S
    BPL .l9093
    LDA #$AA
    LDY #$C5
    JSR FPADD
    JMP .l9081
---------------------------------
.l9093
    RTS

;
; funcHeading
;
funcHeading
    LDY #$1E
    JMP ($C24E)
---------------------------------
.l9099
    JSR .l8E07
    LDA #$7C
    LDY #$87
    JSR FPSUB
    JSR .l906C
    JMP PUSHA1

;
; funcXcor
;
funcXcor
    LDY #$1B
    JMP ($C24E)
---------------------------------
.l90AE
    LDX #$00
    LDA #$C2
.l90B2
    LDY $C264
    BEQ .l90D3
    STX COPY1
    STA COPY1+1
    LDA #$42
    LDY #$C2
    JSR LDAC1
    LDA COPY1
    LDY COPY1+1
    JSR FPDIV
    LDA #$2E
    LDY #$C2
.l90CD
    JSR FPADD
    JMP PUSHA1
---------------------------------
.l90D3
    JMP PUSHRL

;
; funcYcor
;
funcYcor
    LDY #$1C
    JMP ($C24E)
---------------------------------
.l90DB
    LDX #$05
    LDA #$C2
.l90DF
    LDY $C264
    BEQ .l90D3
    STX COPY1
    STA COPY1+1
    LDA #$47
    LDY #$C2
    JSR LDAC1
    LDA COPY1
    LDY COPY1+1
    JSR FPDIV
    LDA #$33
    LDY #$C2
    BNE .l90CD

;
; procTextscreen
;
procTextscreen
    LDY #$13
    JMP ($C24E)
---------------------------------
.l9101
    JSR .l95BC
    BEQ .l913F
    JSR .l8ED0
    STY $C278
    JSR .l8EF7
    JSR .lB932
    LDA $C27D
    STA $D018
    LDA $D016
    AND #$EF
    STA $D016
    LDA $DD00
    AND #$FC
    ORA $C27E
    STA $DD00
    LDA $D011
    AND #$1F
    STA $D011
    LDA ACBACK
    STA $D021
    LDA ACBORD
    STA $D020
.l913F
    RTS
---------------------------------
.l9140
    CLC
    LDA COPY1
    ADC #$04
    STA COPY1
    BCC .l914B
    INC COPY1+1
.l914B
    RTS
---------------------------------
.l914C
    LDX #$04
.l914E
    LDA TXTHI,X
    STA FLEVEL,X
    DEX
    BNE .l914E
    RTS

;
; procPlottext
;
procPlottext
    LDY #$0A
    JMP ($C24E)
---------------------------------
.l915C
    JSR .l914C
    JSR .l978F
    LDX #$03
.l9164
    LDA COPY2,X
    STA XX,X                    ; current x (graphics)
    DEX
    BPL .l9164
    JSR .l95A6
    STA COPY3
    STX COPY3+1
    STY Q5
    JSR .l9140
    JSR .lB932
    LDX #$41
    STX PAGEX
    LDA GRWK3+1
    AND #$80
    ORA GRWK3
    LDX $C297
    BEQ .l918B
    ORA #$80
.l918B
    STA Q3+1
    LDA $C280
    AND #$01
    TAX
    ASL
    STA Q1+1
    TAY
    LDA $C281,Y
    STA RESM1
    LDA $C282,Y
    STA RESM2
    LDA $C295
    STA COPY2
    LDA $C296
    STA COPY2+1
    LDA RESOL
    BEQ .l91B1
    LSR COPY2,X
.l91B1
    LDA COPY3
    ORA COPY3+1
    BNE .l91CC
    LDX #$04
.l91B9
    LDA TXTHI,X
    STA $C3BA,X
    DEX
    BNE .l91B9
.l91C1
    LDX #$04
.l91C3
    LDA FLEVEL,X
    STA TXTHI,X
    DEX
    BNE .l91C3
    RTS
---------------------------------
.l91CC
    LDY #$00
    LDA (COPY1),Y
    STA INF1
    AND #$7F
    CMP #$20
    LDA INF1
    BCS .l91FF
    CMP #$12
    BNE .l91E8
    LDA #$FF
    !by $2c
.l91E1
    LDA #$00
    STA Q5
.l91E5
    JMP .l9329
---------------------------------
.l91E8
    CMP #$92
    BEQ .l91E1
    LDY #$0F
.l91EE
    CMP .l9416,Y
    BEQ .l91F8
    DEY
    BPL .l91EE
    BMI .l91E5
.l91F8
    TYA
    JSR .l8DAB
    JMP .l91E5
---------------------------------
.l91FF
    AND #$3F
    TAX
    LDA INF1
    BPL .l920A
    TXA
    ORA #$40
    TAX
.l920A
    LDA INF1
    AND #$60
    BNE .l9214
    TXA
    ORA #$80
    TAX
.l9214
    STX PAGEPT
    LDA #$00
    SEC
    ROL PAGEPT
    ROL
    SEC
    ROL PAGEPT
    ROL
    SEC
    ROL PAGEPT
    ROL
    ORA $C27F
    STA PAGEPT+1
    LDX XX                      ; current x (graphics)
    LDY XX+1                    ; current x (graphics)
    TYA
    CPX $C212
    SBC $C213
    BMI .l9287
    TYA
    CPX $C20A
    SBC $C20B
    BPL .l9287
    CLC
    TXA
    ADC $C28D
    TAX
    TYA
    ADC $C28E
    TAY
    CPX $C212
    SBC $C213
    BMI .l9287
    TYA
    CPX $C20A
    SBC $C20B
    BPL .l9287
    LDX YY                      ; current y (graphics)
    LDY YY+1                    ; current y (graphics)
    BNE .l9287
    CPX $C214
    BCC .l9287
    CPX $C20C
    BCS .l9287
    CLC
    TXA
    ADC $C28F
    TAX
    TYA
    ADC $C290
    BNE .l9287
    CPX $C214
    BCC .l9287
    CPX $C20C
    BCS .l9287
    LDX #$47
    LDA #$C4
    BNE .l928B
.l9287
    LDX #$5E
    LDA #$8A
.l928B
    STX Q4
    STA Q4+1
    LDA #$08
    STA INF1
    LDA GRWK3+1
    STA Q3
    PHA
.l9298
    LDY #$00
    JSR LOAD
    EOR Q5
    BNE .l92A8
    BIT GRWK3+1
    BPL .l92A8
    JMP .l933A
---------------------------------
.l92A8
    STA Q5+1
    LDA COPY2+1
    STA Q2
.l92AE
    LDA Q5+1
    STA INF3
    LDA #$08
    STA INF2
.l92B6
    LDA COPY2
    STA Q1
    ASL INF3
    BCS .l92C2
    LDA Q3+1
    BCC .l92C4
.l92C2
    LDA Q3
.l92C4
    STA GRWK3+1
.l92C6
    JSR .l935B
    LDX Q1+1
    CLC
    LDA XX,X                    ; current x (graphics)
    ADC RESM1
    STA XX,X                    ; current x (graphics)
    LDA XX+1,X                  ; current x (graphics),X
    ADC RESM2
    STA XX+1,X                  ; current x (graphics),X
    DEC Q1
    BNE .l92C6
    DEC INF2
    BNE .l92B6
    CLC
    LDA XX                      ; current x (graphics)
    ADC $C289
    STA XX                      ; current x (graphics)
    LDA XX+1                    ; current x (graphics)
    ADC $C28A
    STA XX+1                    ; current x (graphics)
    CLC
    LDA YY                      ; current y (graphics)
    ADC $C28B
    STA YY                      ; current y (graphics)
    LDA YY+1                    ; current y (graphics)
    ADC $C28C
    STA YY+1                    ; current y (graphics)
    DEC Q2
    BNE .l92AE
.l9302
    DEC PAGEPT
    DEC INF1
    BNE .l9298
    CLC
    LDA XX                      ; current x (graphics)
    ADC $C291
    STA XX                      ; current x (graphics)
    LDA XX+1                    ; current x (graphics)
    ADC $C292
    STA XX+1                    ; current x (graphics)
    CLC
    LDA YY                      ; current y (graphics)
    ADC $C293
    STA YY                      ; current y (graphics)
    LDA YY+1                    ; current y (graphics)
    ADC $C294
    STA YY+1                    ; current y (graphics)
    PLA
    STA GRWK3+1
.l9329
    INC COPY1
    BNE .l932F
    INC COPY1+1
.l932F
    LDA COPY3+1
    BNE .l9335
    DEC COPY3
.l9335
    DEC COPY3+1
    JMP .l91B1
---------------------------------
.l933A
    CLC
    LDA XX                      ; current x (graphics)
    ADC $C285
    STA XX                      ; current x (graphics)
    LDA XX+1                    ; current x (graphics)
    ADC $C286
    STA XX+1                    ; current x (graphics)
    CLC
    LDA YY                      ; current y (graphics)
    ADC $C287
    STA YY                      ; current y (graphics)
    LDA YY+1                    ; current y (graphics)
    ADC $C288
    STA YY+1                    ; current y (graphics)
    JMP .l9302
---------------------------------
.l935B
    JMP ($0041)
---------------------------------
.l935E
    LDA RESOL
    BEQ .l9389
    LDA $C280
    AND #$01
    PHA
    TAX
    LDY $C295,X
    INY
    TYA
    LSR
    STA $C295,X
    JSR .l9389
    PLA
    TAX
    ASL $C295,X
    LDX #$14
.l937C
    ASL $C27D,X
    ROL $C27E,X
    DEX
    DEX
    DEX
    DEX
    BNE .l937C
    RTS
---------------------------------
.l9389
    LDX #$14
    LDA #$00
.l938D
    STA $C280,X
    DEX
    BNE .l938D
    INC $C281
    INC $C28B
    LDA $C295
    JSR .l9406
    STA $C28D
    STY $C28E
    STA $C291
    STY $C292
    SEC
    TXA
    SBC COPY1
    STA $C289
    TXA
    SBC COPY1+1
    STA $C28A
    LDA $C296
    STA $C287
    JSR .l9406
    STA $C28F
    STY $C290
    SEC
    TXA
    SBC COPY1
    STA $C293
    TXA
    SBC COPY1+1
    STA $C294
    LDX $C280
    BEQ .l9405
.l93D9
    LDY #$14
.l93DB
    LDA $C27D,Y
    PHA
    LDA $C27E,Y
    PHA
    SEC
    LDA #$00
    SBC $C27F,Y
    STA $C27D,Y
    LDA #$00
    SBC $C280,Y
    STA $C27E,Y
    PLA
    STA $C280,Y
    PLA
    STA $C27F,Y
    DEY
    DEY
    DEY
    DEY
    BNE .l93DB
    DEX
    BNE .l93D9
.l9405
    RTS
---------------------------------
.l9406
    STX COPY1+1
    ASL
    ROL COPY1+1
    ASL
    ROL COPY1+1
    ASL
    ROL COPY1+1
    STA COPY1
    LDY COPY1+1
    RTS
---------------------------------

.l9416
    !by $90,$05,$1C,$9F,$9C,$1E,$1F,$9E
    !by $81,$95,$96,$97,$98,$99,$9A,$9B

;
; procTextstyle
;
procTextstyle
    LDY #$09
    JMP ($C24E)
---------------------------------
.l942B
    LDA #$01
    JSR .l9462
    BCS .l9437
    BEQ .l9480
    STA $C295
.l9437
    LDA #$02
    JSR .l9462
    BCS .l9443
    BEQ .l9480
    STA $C296
.l9443
    LDA #$03
    JSR .l9462
    BCS .l9451
    CMP #$04
    BCS .l9480
    STA $C280
.l9451
    LDA #$04
    JSR .l9462
    BCS .l945F
    CMP #$02
    BCS .l9480
    STA $C297
.l945F
    JMP .l935E
---------------------------------
.l9462
    JSR FNDPAR
    LDY #$00
    LDA (COPY1),Y
    BEQ .l9477
    CMP #$FF
    BNE .l9480
    INY
    LDA (COPY1),Y
    CMP #$FF
    BNE .l9480
    RTS
---------------------------------
.l9477
    INY
    LDA (COPY1),Y
    CMP #$FF
    BCS .l9480
    TAX
    RTS
---------------------------------
.l9480
    JMP .l88D5

;
; procTextbackground
;
procTextbackground
    LDY #$10
    JMP ($C24E)
---------------------------------
.l9488
    JSR .l8DCA
    STA ACBACK
    TAY
    JSR .l95BC
    BNE .l94B0
    BEQ .l94AA

;
; procBackground
;
procBackground
    LDY #$0F
    JMP ($C24E)
---------------------------------
.l949B
    JSR .l8DD3
.l949E
    STA GRWK3
    TAY
    LDA RESOL
    BEQ .l94B1
    JSR .l95BC
    BEQ .l94B0
.l94AA
    JSR .l8EF7
    STY $D021
.l94B0
    RTS
---------------------------------
.l94B1
    LDX #$26
.l94B3
    LDA .l94E5-1,X
    STA TXT1,X                  ; string constant buffer $C760-1
    DEX
    BNE .l94B3
    JSR .l95BC
    BEQ .l94D4
    STY $D021
.l94C4
    BIT $D011
    BMI .l94C4
    LDA $D012
    CMP #$46
    BCC .l94C4
    CMP #$AF
    BCS .l94C4
.l94D4
    LDA #$00
    LDY #$D8
    STA GRWK1
    STY GRWK1+1
    LDX #$03
    LDY #$34
    LDA $01
    JMP TXT                     ; string constant buffer $C760
---------------------------------
.l94E5
    PHA
    STY $01
    LDY #$00
.l94EA
    LDA (GRWK1),Y
    AND #$F0
    ORA GRWK3
    STA (GRWK1),Y
    INY
    BNE .l94EA
    INC GRWK1+1
    DEX
    BNE .l94EA
.l94FA
    LDA (GRWK1),Y
    AND #$F0
    ORA GRWK3
    STA (GRWK1),Y
    INY
    CPY #$E8
    BNE .l94FA
    PLA
    STA $01
    RTS

;
; procBorder
;
procBorder
    LDY #$11
    JMP ($C24E)
---------------------------------
.l9510
    JSR .l8DD3
.l9513
    STA $C262
    TAY
    JSR .l95BC
    BEQ .l9535
    BNE .l952F

;
; procTextborder
;
procTextborder
    LDY #$28
    JMP ($C24E)
---------------------------------
.l9523
    JSR .l8DCA
    STA ACBORD
    TAY
    JSR .l95BC
    BNE .l9535
.l952F
    JSR .l8EF7
    STY $D020
.l9535
    RTS

;
; procPenup
;
procPenup
    LDY #$21
    JMP ($C24E)
---------------------------------
.l953B
    LDA GRWK3+1
    ORA #$80
    STA GRWK3+1
    RTS

;
; procPendown
;
procPendown
    LDY #$22
    JMP ($C24E)
---------------------------------
.l9547
    LDA GRWK3+1
    AND #$0F
    STA GRWK3+1
    RTS

;
; procHome
;
procHome
    LDY #$23
    JMP ($C24E)
---------------------------------
.l9553
    LDY #$04
.l9555
    LDA .l877C,Y
    STA $C252,Y
    DEY
    BPL .l9555
    JSR .lA061
    LDA #$00
    STA TEMPF3
    LDA #$4E
    STA COPY1
    LDA #$00
    STA COPY1+1
    JSR .l96C9
    JSR .l970D
    JMP .l8CAB
---------------------------------

;
; procWrap
;
procWrap
    LDY #$24
    JMP ($C24E)
---------------------------------
.l957B
    LDA #$80
    !by $2c
.l957E
    LDA #$00
    STA $C24C
    RTS
---------------------------------

;
; procNowrap
;
procNowrap
    LDY #$25
    JMP ($C24E)
---------------------------------
.l9589
    LDY #$0B
.l958B
    LDA (FORPT),Y               ; stack entry chain
    STA COPY1
    INY
    LDA (FORPT),Y               ; stack entry chain
    STA COPY1+1
    RTS
---------------------------------
.l9595
    LDY #$10
    BNE .l958B
.l9599
    LDY #$15
    BNE .l958B
.l959D
    LDY #$1A
    BNE .l958B
.l95A1
    JSR .l959D
    BNE .l95B3                  ; load COPY1 with A and X
.l95A6
    JSR .l9599
    BNE .l95B3                  ; load COPY1 with A and X
.l95AB
    JSR .l9595
    BNE .l95B3                  ; load COPY1 with A and X
.l95B0
    JSR .l9589
.l95B3
    LDY #$01
    LDA (COPY1),Y
    TAX
    DEY
    LDA (COPY1),Y
    RTS
---------------------------------
.l95BC
    LDA $D011
    AND #$20
    RTS
---------------------------------

; $95C2
phWindow
    !by PROC
    !word procWindow
    !by $04
    !by VALUE + REAL
    !by VALUE + REAL
    !by VALUE + REAL
    !by VALUE + REAL
    !by ENDPRC
;
; procWindow
;
procWindow

    LDY #$00
    JMP ($C24E)
---------------------------------
.l95D0
    JSR .l9589
    LDX #$00
    JSR .l96AF
    JSR .l9595
    LDX #$0A
    JSR .l96AF
    JSR .l9599
    LDX #$05
    JSR .l96AF
    JSR .l959D
    LDX #$0F
    JSR .l96AF
.l95F0
    LDA #$1A
    LDY #$C2
    JSR LDAC1
    LDA #$24
    LDY #$C2
    JSR FPSUB
    JSR PUSHA1
    SEC
    LDA $C216
    SBC #$01
    TAY
    LDA $C217
    SBC #$00
    JSR INTFP
    JSR C1T2
    JSR POPA1
    JSR .l96BD
    JSR FPDIV2
    LDX #$42
    LDY #$C2
    JSR STAC1
    LDA $C213
    LDY $C212
    JSR INTFP
    JSR C1T2
    LDA #$42
    LDY #$C2
    JSR LDAC1
    JSR .l96BD
    JSR FPDIV2
    JSR FPNEG
    LDA #$1A
    LDY #$C2
    JSR FPADD
    LDX #$2E
    LDY #$C2
    JSR STAC1
    LDA #$1F
    LDY #$C2
    JSR LDAC1
    LDA #$29
    LDY #$C2
    JSR FPSUB
    JSR PUSHA1
    SEC
    LDA $C218
    SBC #$01
    TAY
    LDA $C219
    SBC #$00
    JSR INTFP
    JSR C1T2
    JSR POPA1
    JSR .l96BD
    JSR FPDIV2
    LDX #$47
    LDY #$C2
    JSR STAC1
    LDA #$00
    LDY $C214
    JSR INTFP
    JSR C1T2
    LDA #$47
    LDY #$C2
    JSR LDAC1
    JSR .l96BD
    JSR FPDIV2
    JSR FPNEG
    LDA #$1F
    LDY #$C2
    JSR FPADD
    LDX #$33
    LDY #$C2
    JSR STAC1
    LDA #$01
    STA $C264
    RTS
---------------------------------
.l96AF
    LDY #$00
.l96B1
    LDA (COPY1),Y
    STA $C21A,X
    INX
    INY
    CPY #$05
    BNE .l96B1
    RTS
---------------------------------
.l96BD
    LDA AC1S
    EOR AC2S
    STA ARISGN
    LDA AC1E
    RTS
---------------------------------
.l96C6
    JSR .l9589
.l96C9
    JSR .l96DE
    JSR .l8E20
.l96CF
    JSR TRUNC
    LDX AC1M3
    STX COPY2+1
    LDA AC1M4
    STA COPY2
    RTS
---------------------------------
.l96DB
    JSR .l9589
.l96DE
    LDA $C264
    BEQ .l9700
    LDA #$2E
    LDY #$C2
    JSR LDAC1
    LDA COPY1
    LDY COPY1+1
    JSR FPSUB
.l96F1
    LDA $C264
    BEQ .l971E
    LDA #$42
    LDY #$C2
    JMP FPMUL
---------------------------------
.l96FD
    JSR .l9589
.l9700
    LDA COPY1
    LDY COPY1+1
    JMP LDAC1
---------------------------------
.l9707
    JSR .l96C6
.l970A
    JSR .l9595
.l970D
    JSR .l9722
    JSR .l8E1A
.l9713
    JSR TRUNC
    LDX AC1M3
    STX COPY3+1
    LDA AC1M4
    STA COPY3
.l971E
    RTS
---------------------------------
.l971F
    JSR .l9595
.l9722
    LDA $C264
    BEQ .l9700
    LDA #$33
    LDY #$C2
    JSR LDAC1
    LDA COPY1
    LDY COPY1+1
    JSR FPSUB
.l9735
    LDA $C264
    BEQ .l971E
    LDA #$47
    LDY #$C2
    JMP FPMUL
---------------------------------
.l9741
    JSR .l9589
    JSR .l9700
.l9747
    JSR .l96F1
.l974A
    LDA #$00
    LDY #$C2
    JSR FPADD
    JSR .l8E20
    JSR TRUNC
    SEC
    LDA AC1M4
    SBC XX                      ; current x (graphics)
    STA COPY2
    PHA
    LDA AC1M3
    SBC XX+1                    ; current x (graphics)
    STA COPY2+1
    TAX
    PLA
    RTS
---------------------------------
.l9768
    JSR .l9595
    JSR .l9700
.l976E
    JSR .l9735
.l9771
    LDA #$05
    LDY #$C2
    JSR FPADD
    JSR .l8E1A
    JSR TRUNC
    SEC
    LDA AC1M4
    SBC YY                      ; current y (graphics)
    STA COPY3
    PHA
    LDA AC1M3
    SBC YY+1                    ; current y (graphics)
    STA COPY3+1
    TAX
    PLA
    RTS
---------------------------------
.l978F
    JSR .l96DB
    JSR .l96CF
    JSR .l971F
    JMP .l9713
---------------------------------

; Sprites
ptSprites

    !pet $06,"define"
    !word phDefine              ; $98C5
;
    !pet $08,"identify"
    !word phIdentify            ; $98CC
;
    !pet $0b,"spritecolor"
    !word phSpritecolor         ; $98D9
;
    !pet $09,"spritepos"
    !word phSpritepos           ; $98E0
;
    !pet $0a,"spritesize"
    !word phSpritesize          ; $98E8
;
    !pet $0a,"showsprite"
    !word phShowsprite          ; $98D3
;
    !pet $0a,"hidesprite"
    !word phHidesprite          ; $98F0
;
    !pet $0a,"spriteback"
    !word phSpriteback          ; $98F6
;
    !pet $0f,"spritecollision"
    !word phSpritecollision     ; $98FD
;
    !pet $0d,"datacollision"
    !word phDatacollision       ; $9904
;
    !pet $08,"priority"
    !word phPriority            ; $990B
;
    !pet $09,"linkshape"
    !word phLinkshape           ; $9920
;
    !pet $09,"loadshape"
    !word phLoadshape           ; $9912
;
    !pet $09,"saveshape"
    !word phSaveshape           ; $9919
;
    !pet $0a,"movesprite"
    !word phMovesprite          ; $9926
;
    !pet $0a,"stopsprite"
    !word phStopsprite          ; $9955
;
    !pet $07,"animate"
    !word phAnimate             ; $9930
;
    !pet $06,"moving"
    !word phMoving              ; $994A
;
    !pet $0c,"startsprites"
    !word phStartsprites        ; $9950
;
    !pet $07,"spritex"
    !word phSpritex             ; $9937
;
    !pet $07,"spritey"
    !word phSpritey             ; $993D
;
    !pet $09,"spriteinq"
    !word phSpriteinq           ; $9943
;
    !pet $0b,"stampsprite"
    !word phStampsprite         ; $995B
;
    !by $00

;
init_Sprites
    LDA $C2FD
    BEQ .l98C4
    DEC $C2FD
    JMP .l8EAB
-----------------------------------
.l98C4
    RTS


; $98C5
phDefine
!by PROC
!word procDefine
!by $02
!by VALUE + INT
!by VALUE + STR
!by ENDPRC

; $98CC
phIdentify
!by PROC
!word procIdentify
!by $02
!by VALUE + INT
!by VALUE + INT
!by ENDPRC

; $98D3
phShowsprite          
!by PROC
!word procShowsprite
!by $01
!by VALUE + INT
!by ENDPRC

; $98D9
phSpritecolor
!by PROC
!word procSpriteolor
!by $02
!by VALUE + INT
!by VALUE + INT
!by ENDPRC

; $98E0
phSpritepos
!by PROC
!word procSpritepos
!by $03
!by VALUE + INT
!by VALUE + INT
!by VALUE + INT
!by ENDPRC

; $98E8
phSpritesize
!by PROC
!word procSpritesize
!by $03
!by VALUE + INT
!by VALUE + INT
!by VALUE + INT
!by ENDPRC

; $98F0
phHidesprite
!by PROC
!word procHidesprite
!by $01
!by VALUE + INT
!by ENDPRC

; $98F6
phSpriteback
!by PROC
!word procSpriteback
!by $02
!by VALUE + INT
!by VALUE + INT
!by ENDPRC

; $98FD
phSpritecollision
!by FUNC
!word funcSpritecollision
!by $02
!by VALUE + INT
!by VALUE + INT
!by ENDFNC

; $9904
phDatacollision
!by FUNC
!word funcDatacollision
!by $02
!by VALUE + INT
!by VALUE + INT
!by ENDFNC

; $990B
phPriority
!by PROC
!word procPriority
!by $02
!by VALUE + INT
!by VALUE + INT
!by ENDPRC

; $9912
phLoadshape
!by PROC
!word procLoadshape
!by $02
!by VALUE + INT
!by VALUE + STR
!by ENDPRC

; $9919
phSaveshape
!by PROC
!word procSaveshape
!by $02
!by VALUE + INT
!by VALUE + STR
!by ENDPRC

; $9920
phLinkshape
!by PROC
!word procLinkshape
!by $01
!by VALUE + INT
!by ENDPRC

; $9926
phMovesprite
!by PROC
!word procMovesprite
!by $05
!by VALUE + INT
!by VALUE + INT
!by VALUE + INT
!by VALUE + INT
!by VALUE + INT
!by ENDPRC

; $9930
phAnimate
!by PROC
!word procAnimate
!by $02
!by VALUE + INT
!by VALUE + STR
!by ENDPRC

; $9937
phSpritex
!by FUNC
!word funcSpritex
!by $01
!by VALUE + INT
!by ENDFNC

; $993D
phSpritey
!by FUNC
!word funcSpritey
!by $01
!by VALUE + INT
!by ENDFNC

; $9943
phSpriteinq
!by FUNC
!word funcSpriteinq
!by $02
!by VALUE + INT
!by VALUE + INT
!by ENDFNC

; $994A
phMoving
!by FUNC
!word funcMoving
!by $01
!by VALUE + INT
!by ENDFNC

; $9950
phStartsprites
!by PROC
!word procStartsprites
!by $00
!by ENDPRC

; $9955
phStopsprite
!by PROC
!word procStopsprite
!by $01
!by VALUE + INT
!by ENDPRC

; $995B
phStampsprite
!by PROC
!word procStampsprite
!by $01
.l995F
!by VALUE + INT
!by ENDPRC

.l9961
    !by $01,$FE,$02,$FD,$04,$FB,$08,$F7 
    !by $10,$EF,$20,$DF,$40,$BF,$80,$7F 

.error5
    LDX #$05                    ; value out of range
    !by $2c
.error21
    LDX #$21                    ; shape length must be 64
    JMP RUNERR
---------------------------------

;
; procDefine
;
procDefine
    JSR .l9AEC
    STX INF1
    JSR .l95AB
    BNE .error21                ; shape length must be 64
    CPX #$40
    BNE .error21                ; shape length must be 64
    LDY #$43
    LDA (COPY1),Y
    PHP
    LDX INF1
    LDA $C29B,X
    AND #$7F
    PLP
    BEQ .l9998
    ORA #$80
.l9998
    STA $C29B,X
    LDA COPY1
    ADC #$03
    STA Q5
    LDA COPY1+1
    ADC #$00
    STA Q5+1
    LDY #$3F
    JMP $C564

;
; procSpriteolor
;
procSpriteolor
    JSR .l9595
    JSR .l8DD6
    PHA
    JSR .l8DFA
    PLA
    STA $D027,X
    RTS

;
; procSpritepos
;
procSpritepos
    JSR .l95AB
    STA AC1M1
    STX AC1M2
    JSR .l95A6
    STA AC1M3
    STX AC1M4
    JSR .l8DFA
.l99CC
    SEC
    LDA #$F9
    SBC AC1M4
    STA $C2CD,Y
    TAX
    LDA #$00
    SBC AC1M3
    STA $C2BD,Y
    BEQ .l99E0
    LDX #$FF
.l99E0
    TXA
    STA $D001,Y
    CLC
    LDA AC1M2
    ADC #$18
    STA $C2CC,Y
    TAX
    LDA AC1M1
    ADC #$00
    STA $C2BC,Y
    LSR
    BEQ .l99F9
    LDX #$FF
.l99F9
    TXA
    STA $D000,Y
    LDA $D010
    LDX $C2BC,Y
    BEQ .l9A0A
    ORA .l9961,Y
    BNE .l9A0D
.l9A0A
    AND .l9961+1,Y
.l9A0D
    STA $D010
    RTS

;
; procStopsprite
;
procStopsprite
    JSR .l8DFA
    SEI
    LDX .l9961+1,Y
    BNE .l9A2C
.l9A1A
    SEI
    LDX .l9961+1,Y
    TXA
    AND $C2FF
    STA $C2FF
    TXA
    AND $C277
    STA $C277
.l9A2C
    TXA
    AND $C26A
    STA $C26A
    TXA
    AND $C266
    STA $C266
    TXA
    AND $C261
    STA $C261
    TXA
    AND $C2FC
    STA $C2FC
    CLI
    RTS

;
; procSpritesize
;
procSpritesize
    JSR .l9595
    JSR .lB21A
    PHA
    JSR .l9599
    JSR .lB21A
    PHP
    JSR .l8DFA
    LDA $D017
    PLP
    SEI
    BEQ .l9A67
    ORA .l9961,Y
    BNE .l9A6A
.l9A67
    AND .l9961+1,Y
.l9A6A
    STA $D017
    PLA
    BEQ .l9A78
    LDA $D01D
    ORA .l9961,Y
    BNE .l9A7E
.l9A78
    LDA $D01D
    AND .l9961+1,Y
.l9A7E
    STA $D01D
    CLI
    RTS

;
; procSpriteback
;
procSpriteback
    JSR .l8DD3
    STA $D025
    JSR .l9595
    JSR .l8DD6
    STA $D026
    RTS

;
; funcSpritecollision
;
funcSpritecollision
    LDA #$00
    !by $2c

;
; funcDatacollision
;
funcDatacollision
    LDA #$02
    STA INF1
    JSR .l9595
    JSR .lB21A
    PHP
    JSR .l8DFA
    LDX INF1
    PLP
    BEQ .l9AB6
    SEI
    LDA $C26C,X
    STA $C26D,X
    LDA #$00
    STA $C26C,X
    CLI
.l9AB6
    LDA $C26D,X
    AND .l9961,Y
    JMP .lA998

;
; procPriority
;
procPriority
    JSR .l9595
    JSR .lB21A
    PHP
    JSR .l8DFA
    LDA $D01B
    PLP
    BEQ .l9AD4
    ORA .l9961,Y
    BNE .l9AD7
.l9AD4
    AND .l9961+1,Y
.l9AD7
    STA $D01B
    RTS
---------------------------------
.l9ADB
    TYA
    LSR
    TAY
    LDA #$F8
    STA PAGEPT
    LDA #$DB
    STA PAGEPT+1
    JSR $C574
    AND #$1F
    RTS
---------------------------------
.l9AEC
    JSR .l9589
.l9AEF
    JSR .l95B3                  ; load COPY1 with A and X
    BNE .l9B08
    CPX #$20
    BCS .l9B08
    TXA
.l9AF9
    LDY #$00
    STY PAGEPT
    LSR
    ROR PAGEPT
    LSR
    ROR PAGEPT
    ORA #$D0
    STA PAGEPT+1
    RTS
---------------------------------
.l9B08
    LDX #$20                    ; invalid shape number
    JMP RUNERR

;
; procIdentify
;
procIdentify
    JSR .l9595
    JSR .l9AEF
    STX Q1
    JSR .l8DFA
    PHA
    TXA
    TAY
    LDA #$F8
    STA PAGEPT
    LDA #$DB
    STA PAGEPT+1
    LDA Q1
    ORA #$40
    JSR $C57F
    TAX
    PLA
    TAY
    LDA $C25B,X
    SEI
    BPL .l9B3B
    LDA $D01C
    ORA .l9961,Y
    BNE .l9B41
.l9B3B
    LDA $D01C
    AND .l9961+1,Y
.l9B41
    STA $D01C
    CLI
    RTS

;
; procShowsprite
;
procShowsprite
    JSR .l8DFA
.l9B49
    LDA .l9961,Y
    SEI
    ORA $C267
    BNE .l9B5C

;
; procHidesprite
;
procHidesprite
    JSR .l8DFA
.l9B55
    LDA .l9961+1,Y
    SEI
    AND $C267
.l9B5C
    STA $C267
    TAX
    LDA $D011
    AND #$20
    BEQ .l9B6A
    STX $D015
.l9B6A
    CLI
    RTS
---------------------------------
.l9B6C
    JMP .error5                 ; error "value out of range"

;
; procMovesprite
;
procMovesprite
    LDA #$05
    JSR FNDPAR
    JSR .l95B3                  ; load COPY1 with A and X
    BNE .l9B6C
    TXA
    CMP #$08
    BCS .l9B6C
    PHA
    JSR .l95A1
    BMI .l9B6C
    STX Q1
    STA Q1+1
    ORA Q1
    BNE .l9B8F
    JSR procSpritepos ; $99BB
.l9B8F
    JSR .l8DFA
    STX PAGEPT+1
    STY PAGEPT
    JSR .l9A1A
    SEC
    LDA #$00
    SBC Q1
    STA $C38A,Y
    LDA #$00
    SBC Q1+1
    STA $C389,Y
    LDA $C2CC,Y
    STA TEMPF3
    LDA $C2BC,Y
    STA TEMPF3+1
    LDA $C2CD,Y
    STA TEMPF3+2
    LDA $C2BD,Y
    STA TEMPF3+3
    JSR .l9595
    LDY #$01
    CLC
    LDA (COPY1),Y
    ADC #$18
    PHA
    DEY
    TYA
    ADC (COPY1),Y
    TAX
    PLA
    SEC
    SBC TEMPF3
    TAY
    TXA
    SBC TEMPF3+1
    JSR .l9C60
    LDY PAGEPT
    LDA RESM1
    STA $C349,Y
    LDA RESM2
    STA $C359,Y
    LDA RESM3
    STA $C369,Y
    LDA RESM4
    STA $C379,Y
    JSR .l9599
    LDY #$01
    SEC
    LDA #$F9
    SBC (COPY1),Y
    PHA
    DEY
    TYA
    SBC (COPY1),Y
    TAX
    PLA
    SEC
    SBC TEMPF3+2
    TAY
    TXA
    SBC TEMPF3+3
    JSR .l9C60
    LDY PAGEPT
    LDA RESM1
    STA $C34A,Y
    LDA RESM2
    STA $C35A,Y
    LDA RESM3
    STA $C36A,Y
    LDA RESM4
    STA $C37A,Y
    LDA #$00
    STA $C2EC,Y
    STA $C2ED,Y
    LDA #$80
    STA $C2DC,Y
    STA $C2DD,Y
    LDX .l9961,Y
    PLA
    SEI
    LSR
    TAY
    BCC .l9C40
    TXA
    ORA $C261
    STA $C261
    BNE .l9C47
.l9C40
    TXA
    ORA $C2FC
    STA $C2FC
.l9C47
    TYA
    LSR
    BCC .l9C54
    TAY
    TXA
    ORA $C26A
    STA $C26A
    TYA
.l9C54
    LSR
    BCC .l9C5E
    TXA
    ORA $C266
    STA $C266
.l9C5E
    CLI
    RTS
---------------------------------
.l9C60
    STY AC1M4
    STA AC1M3
    STA AC1S
    LDY #$00
    LDX #$00
    BIT AC1S
    BPL .l9C6F
    DEX
.l9C6F
    STX AC1M1
    STX AC1M2
    BPL .l9C80
    SEC
    LDX #$03
.l9C78
    TYA
    SBC AC1M1,X
    STA AC1M1,X
    DEX
    BPL .l9C78
.l9C80
    STY RESM1
    STY RESM2
    STY RESM3
    STY RESM4
    LDA Q1
    ORA Q1
    BEQ .l9CEA
    TYA
    LDY #$20
    LDX AC1M3
    CPX Q1
    SBC Q1+1
    BCS .l9CB8
    STX AC1M2
    TXA
    LDX AC1M4
    STX AC1M3
    LDY #$00
    STY AC1M4
    LDY #$18
    CPX Q1
    SBC Q1+1
    BCS .l9CB8
    LDA AC1M2
    STA AC1M1
    STX AC1M2
    LDA #$00
    STA AC1M3
    LDY #$10
.l9CB8
    ASL AC1M4
    ROL AC1M3
    ROL AC1M2
    ROL AC1M1
    SEC
    LDA AC1M2
    SBC Q1
    TAX
    LDA AC1M1
    SBC Q1+1
    BCC .l9CD0
    STX AC1M2
    STA AC1M1
.l9CD0
    ROL RESM4
    ROL RESM3
    ROL RESM2
    ROL RESM1
    DEY
    BNE .l9CB8
    LDA AC1S
    BPL .l9CEA
    LDX #$03
    SEC
.l9CE2
    TYA
    SBC RESM1,X
    STA RESM1,X
    DEX
    BPL .l9CE2
.l9CEA
    RTS

;
; funcSpritex
;
funcSpritex
    JSR .l8DFA
    SEI
    SEC
    LDA $C2CC,Y
    SBC #$18
    TAX
    LDA $C2BC,Y
    SBC #$00
    CLI
    JMP PSHINT

;
; funcSpritey
;
funcSpritey
    JSR .l8DFA
    SEI
    SEC
    LDA #$F9
    SBC $C2CD,Y
    TAX
    LDA #$00
    SBC $C2BD,Y
    CLI
    JMP PSHINT

;
; funcMoving
;
funcMoving
    JSR .l8DFA
    LDA $C2FC
    AND .l9961,Y
    JMP .lA998

;
; procStartsprites
;
procStartsprites
    SEI
    LDX #$10
    LDA $C261
.l9D25
    ASL
    BCC .l9D33
    TAY
    LDA $C2FC
    ORA .l995F,X
    STA $C2FC
    TYA
.l9D33
    DEX
    DEX
    BNE .l9D25
    STX $C261
    CLI
    RTS
---------------------------------
.l9D3C
    JMP .error5                 ; error "value out of range"

;
; funcSpriteinq
;
funcSpriteinq
    JSR .l8DFA
    STY INF1
    JSR .l95AB
    BNE .l9D3C
    CPX #$0F
    BCS .l9D3C
    LDA .l9DDE,X
    PHA
    LDA .l9DED,X
    PHA
    LDY INF1
    LDA .l9961,Y
    RTS
---------------------------------
.l9D5B
     BIT $C267
    JMP .lA998
---------------------------------
.l9D61
    LDA $D025
    BCC .l9D6E
.l9D66
    LDA $D027,Y
    BCC .l9D6E
.l9D6B
    LDA $D026
.l9D6E
    AND #$0F
    JMP .lA992
---------------------------------
.l9D73
    BIT $D01D
    JMP .lA998
---------------------------------
.l9D79
    BIT $D017
    JMP .lA998
---------------------------------
.l9D7F
    BIT $D01C
    JMP .lA998
---------------------------------
.l9D85
    BIT $D01B
    JMP .lA998
---------------------------------
.l9D8B
    JSR .l9ADB
    JMP .lA992
---------------------------------
.l9D91
    SEC
    LDA #$00
    SEI
    SBC $C38A,Y
    TAX
    LDA #$00
    SBC $C389,Y
    CLI
    JMP PSHINT
---------------------------------
.l9DA2
    BIT $C2FF
    JMP .lA998
---------------------------------
.l9DA8
    BIT $C277
    JMP .lA998
---------------------------------
.l9DAE
    LDX #$00
    BIT $C266
    BEQ .l9DB7
    LDX #$04
.l9DB7
    BIT $C26A
    BEQ .l9DBE
    INX
    INX
.l9DBE
    BIT $C261
    BEQ .l9DC4
    INX
.l9DC4
    JMP .lA993
---------------------------------
.l9DC7
    LDX $C399,Y
    JMP .lA993
---------------------------------
.l9DCD
    LDX $C399,Y
    BEQ .l9DDB
    SEC
    LDA $C3AA,Y
    SBC $C53D,Y
    TAX
    INX
.l9DDB
JMP .lA993

.l9DDE
    !by >.l9D5B-1,>.l9D61-1,>.l9D66-1,>.l9D6B-1,>.l9D73-1
    !by >.l9D79-1,>.l9D7F-1,>.l9D85-1,>.l9D8B-1,>.l9D91-1
    !by >.l9DA2-1,>.l9DA8-1,>.l9DAE-1,>.l9DC7-1,>.l9DCD-1
.l9DED
    !by <.l9D5B-1,<.l9D61-1,<.l9D66-1,<.l9D6B-1,<.l9D73-1
    !by <.l9D79-1,<.l9D7F-1,<.l9D85-1,<.l9D8B-1,<.l9D91-1
    !by <.l9DA2-1,<.l9DA8-1,<.l9DAE-1,<.l9DC7-1,<.l9DCD-1

;
; procAnimate
;
procAnimate
    JSR .l8DFA
    STY INF1
    JSR .l95AB
    BNE .l9E4B
    STA INF3
    TXA
    TAY
    LSR
    STA INF2
    BCS .l9E4B
    BNE .l9E14
    JMP .l9E97
---------------------------------
.l9E14
    CMP #$21
    BCS .l9E4B
    STA T2                      ; temporary 2
    JSR .l9140
.l9E1D
    DEY
    LDA (COPY1),Y
    STA T1                      ; temporary 1
    DEY
    LDA (COPY1),Y
    CMP #$20
    BCC .l9E64
    LDX #$80
    AND #$7F
    CMP #$53
    BEQ .l9E53
    INX
    CMP #$48
    BEQ .l9E53
    INX
    CMP #$58
    BEQ .l9E69
    INX
    CMP #$59
    BEQ .l9E69
    INX
    CMP #$43
    BNE .l9E4E
    LDA T1                      ; temporary 1
    CMP #$10
    BCC .l9E69
.l9E4B
    JMP .error5                 ; error "value out of range"
---------------------------------
.l9E4E
    INX
    CMP #$47
    BNE .l9E5D
.l9E53
    LDA T1                      ; temporary 1
    CMP #$08
    BCS .l9E4B
    ASL T1                      ; temporary 1
    BCC .l9E69
.l9E5D
    INX
    CMP #$50
    BNE .l9E4B
    BEQ .l9E67
.l9E64
    ORA #$40
    TAX
.l9E67
    STA INF3
.l9E69
    TXA
    LDX T2                      ; temporary 2
    STA TXT1,X                  ; string constant buffer $C760-1
    LDA T1                      ; temporary 1
    STA TXT+31,X                ; string constant buffer $C760
    DEC T2                      ; temporary 2
    BNE .l9E1D
    LDA INF3
    BEQ .l9E4B
    LDY #$18
.l9E7E
    LDA .l9EB4,Y
    STA STACK,Y
    DEY
    BPL .l9E7E
    CLC
    LDA INF2
    TAX
    LDY INF1
    ADC $C53D,Y
    TAY
    SEI
    LDA $01
    JSR STACK
.l9E97
    LDY INF1
    SEI
    LDA INF2
    STA $C399,Y
    LDA #$00
    STA $C3A9,Y
    LDA $C53D,Y
    STA $C3AA,Y
    CLC
    DEC INF2
    ADC INF2
    STA $C39A,Y
    CLI
    RTS
---------------------------------
.l9EB4
    PHA
    LDA #$34
    STA $01
.l9EB9
    DEY
    LDA TXT1,X                  ; string constant buffer $C760-1
    STA $DE00,Y
    LDA TXT+31,X                   ; string constant buffer $C760
    STA $DF00,Y
    DEX
    BNE .l9EB9
    PLA
    STA $01
    RTS

;
; procStampsprite
;
procStampsprite
    JSR .l8DFA
    STY INF1
    SEI
    LDA $C267
    AND .l9961,Y
    BNE .l9EDD
.l9EDB  CLI
    RTS
---------------------------------
.l9EDD
    LDA GRWK3+1
    BMI .l9EDB
    PHA
    LDA $D027,X
    AND #$0F
    STA Q1+1
    JSR .l8DB5
    LDA #$00
    STA Q2
    STA Q3
    STA Q3+1
    STA INF3
    LDA .l9961,Y
    TAX
    BIT $D01D
    BEQ .l9F01
    INC Q3
.l9F01
    BIT $D017
    BEQ .l9F08
    INC Q3+1
.l9F08
    JSR .l914C
    LDA $C24C
    PHA
    ORA #$40
    STA $C24C
    TXA
    BIT $D01C
    BEQ .l9F21
    LDX Q3
    INX
    TXA
    ASL
    STA Q2
.l9F21
    JSR .l9ADB
    JSR .l9AF9
    LDY INF1
    SEC
    LDA #$F9
    SBC $C2CD,Y
    STA YY                      ; current y (graphics)
    LDA #$00
    SBC $C2BD,Y
    STA YY+1                    ; current y (graphics)
    SEC
    LDA $C2CC,Y
    SBC #$18
    STA COPY2
    LDA $C2BC,Y
    SBC #$00
    STA COPY2+1
    CLI
    LDA RESOL
    EOR #$FF
    AND COPY2
    STA COPY2
    LDY #$3F
.l9F52
    JSR $C574
    STA TXT,Y                   ; string constant buffer $C760
    DEY
    BPL .l9F52
    LDX #$02
.l9F5D
    LDA $D024,X
    AND #$0F
    STA Q3+1,X
    DEX
    BNE .l9F5D
    LDY #$15
    STY INF1
.l9F6B
    JSR .l9F8A
    LDA Q3+1
    BEQ .l9F7B
    DEC INF3
    DEC INF3
    DEC INF3
    JSR .l9F8A
.l9F7B
    DEC INF1
    BNE .l9F6B
    PLA
    STA $C24C
    JSR .l91C1
    PLA
    JMP .l8DB5
---------------------------------
.l9F8A
    LDY #$03
    STY INF2
    LDA COPY2
    LDY COPY2+1
    STA XX                      ; current x (graphics)
    STY XX+1                    ; current x (graphics)
.l9F96
    LDY INF3
    LDA TXT,Y                   ; string constant buffer $C760
    INC INF3
    LDX Q2
    BNE .l9FC2
    LDX #$08
    STX Q1
.l9FA5
    LDX Q3
    STX Q2+1
    ASL
    PHA
.l9FAB
    BCC .l9FB1
    JSR .l8A5E
    SEC
.l9FB1
    INC XX                      ; current x (graphics)
    BNE .l9FB7
    INC XX+1                    ; current x (graphics)
.l9FB7
    DEC Q2+1
    BPL .l9FAB
    PLA
    DEC Q1
    BNE .l9FA5
    BEQ .l9FF8
.l9FC2
    LDX #$04
    STX Q1
.l9FC6
    ASL
    BCC .l9FD4
    ASL
    BCC .l9FD0
    LDX Q4+1
    BCS .l9FDD
.l9FD0
    LDX Q1+1
    BCC .l9FDD
.l9FD4  ASL
    BCC .l9FDB
    LDX Q4
    BCS .l9FDD
.l9FDB
    LDX #$80
.l9FDD
    PHA
    TXA
    JSR .l8DB5
    LDA Q2
    STA Q2+1
.l9FE6
    JSR .l8A5E
    INC XX                      ; current x (graphics)
    BNE .l9FEF
    INC XX+1                    ; current x (graphics)
.l9FEF
    DEC Q2+1
    BNE .l9FE6
    PLA
    DEC Q1
    BNE .l9FC6
.l9FF8
    DEC INF2
    BNE .l9F96
    LDA YY                      ; current y (graphics)
    BNE .lA002
    DEC YY+1                    ; current y (graphics)
.lA002
    DEC YY                      ; current y (graphics)
    RTS
---------------------------------
.lA005
    JSR .lA061
.lA008
    JSR .lA03C
    LDA GRWK3+1
    STA $D02E
    LDA $D017
    AND #$7F
    STA $D017
    LDA $D01D
    AND #$7F
    STA $D01D
    LDA $D01C
    AND #$7F
    STA $D01C
    LDA #$FF
    STA PAGEPT
    LDA #$DB
    STA PAGEPT+1
    LDY #$00
    LDA #$5F
    JSR $C57F
    LDY #$0E
    JMP .l9B49
---------------------------------
.lA03C
    LDA $C26B
    BEQ .lA060
    SEC
    LDA XX                      ; current x (graphics)
    SBC #$0C
    STA AC1M2
    LDA XX+1                    ; current x (graphics)
    SBC #$00
    STA AC1M1
    CLC
    LDA YY                      ; current y (graphics)
    ADC #$0A
    STA AC1M4
    LDA YY+1                    ; current y (graphics)
    ADC #$00
    STA AC1M3
    LDY #$0E
    JMP .l99CC
---------------------------------
.lA060
    RTS
---------------------------------
.lA061
    JSR .l8E07
    JSR .lA0E5
    PHP
    JSR C1T2
    JSR FPCOS
    LDX #$5C
    LDY #$C2
    JSR .lA0CF
    PLP
    BCS .lA07C
    LDA #$80
    STA AC1S
.lA07C
    LDX #$57
    LDY #$C2
    JSR STAC1
    LDA $C26B
    BEQ .lA060
    JSR .l914C
    LDX #$F3
    LDY #$A0
    STX $C275
    STY $C276
    LDA #$0C
    STA XX                      ; current x (graphics)
    LDA #$0A
    STA YY                      ; current y (graphics)
    LDA #$00
    STA XX+1                    ; current x (graphics)
    STA YY+1                    ; current y (graphics)
    LDY #$3F
.lA0A5
    STA TXT,Y                   ; string constant buffer $C760
    DEY
    BPL .lA0A5
    JSR .lA13A
    JSR .lA17B
    JSR .lA17B
    JSR .lA17B
    LDX #$60
    LDA #$C7
    STX Q5
    STA Q5+1
    LDX #$C0
    LDA #$D7
    STX PAGEPT
    STA PAGEPT+1
    LDY #$3F
    JSR $C564
    JMP .l91C1
---------------------------------
.lA0CF
    JSR STAC1
    JSR C1T2
    JSR .l96BD
    JSR FPMUL2
    LDA #$45
    LDY #$87
    JSR FPSUB
    JMP FPSQR
---------------------------------
.lA0E5
    LDA #$4A
    LDY #$87
    JSR FPMUL
    LDA #$A5
    LDY #$C5
    JMP FPCOM
---------------------------------
    LDX YY                      ; current y (graphics)
    CLC
    LDA .lA10D,X
    LDX XX                      ; current x (graphics)
    ADC .lA122,X
    TAY
    TXA
    AND #$07
    TAX
    LDA TXT,Y                   ; string constant buffer $C760
    ORA $C50D,X
    STA TXT,Y                   ; string constant buffer $C760
    RTS

.lA10D
    !by $3C,$39,$36,$33,$30,$2D,$2A,$27 
    !by $24,$21,$1E,$1B,$18,$15,$12,$0F 
    !by $0C,$09,$06,$03,$00 
.lA122
    !by $00,$00,$00,$00,$00,$00,$00,$00 
    !by $01,$01,$01,$01,$01,$01,$01,$01 
    !by $02,$02,$02,$02,$02,$02,$02,$02 

.lA13A
    LDA #$70
    LDY #$C2
    JSR FPMUL
    LDX #$0F
    LDY #$01
    JSR STAC1
    JSR .l9713
    CLC
    ADC #$0A
    STA COPY3
    BCC .lA154
    INC COPY3+1
.lA154
    LDA #$5C
    LDY #$C2
    JSR LDAC1
    LDA #$70
    LDY #$C2
    JSR FPMUL
    LDX #$0A
    LDY #$01
    JSR STAC1
    JSR .l96CF
    CLC
    ADC #$0C
    STA COPY2
    BCC .lA175
    INC COPY2+1
.lA175
    JSR .l8CB1
    JMP .l8B9A
---------------------------------
.lA17B
    LDA STACK+10
    STA STACK
    BEQ .lA196
    DEC STACK
    LDY #$04
.lA188
    LDA STACK+10,Y
    STA STACK,Y
    DEY
    BNE .lA188
    EOR #$80
    STA STACK+1
.lA196
    LDA #$81
    LDY #$87
    JSR LDAC1
    LDA #$0F
    LDY #$01
    JSR FPMUL
    LDA #$00
    LDY #$01
    JSR FPADD
    LDX #$00
    LDY #$01
    JSR STAC1
    JSR .l96CF
    CLC
    ADC #$0C
    STA COPY2
    BCC .lA1BE
    INC COPY2+1
.lA1BE
    LDA STACK+15
    STA STACK+5
    BEQ .lA1D9
    DEC STACK+5
    LDY #$04
.lA1CB
    LDA STACK+15,Y
    STA STACK+5,Y
    DEY
    BNE .lA1CB
    EOR #$80
    STA STACK+6
.lA1D9
    LDA #$81
    LDY #$87
    JSR LDAC1
    LDA #$0A
    LDY #$01
    JSR FPMUL
    LDA #$05
    LDY #$01
    JSR FPSUB
    LDX #$0F
    LDY #$01
    JSR STAC1
    JSR .l9713
    CLC
    ADC #$0A
    STA COPY3
    BCC .lA201
    INC COPY3+1
.lA201
    LDY #$04
.lA203
    LDA STACK,Y
    STA STACK+10,Y
    DEY
    BPL .lA203
    JMP .lA175

;
; procTurtlesize
;
procTurtlesize
    LDY #$1A
    JMP ($C24E)
---------------------------------
.lA214
    JSR .l9589
    JSR .l9700
    LDA AC1S
    BMI .lA229
    LDA #$86
    LDY #$87
    JSR FPSUB
    LDA AC1S
    BPL .lA22E
.lA229
    LDX #$01                    ; argument error
    JMP RUNERR
---------------------------------
.lA22E
    JSR .l9700
    LDX #$70
    LDY #$C2
    JSR STAC1
    JMP .lA061

;
; procShowturtle
;
procShowturtle
    LDY #$18
    JMP ($C24E)
---------------------------------
.lA240
    LDA #$01
    STA $C26B
    JMP .lA005

;
; procHideturtle
;
procHideturtle
    LDY #$19
    JMP ($C24E)
---------------------------------
.lA24D
    LDX #$00
    STX $C26B
    LDY #$0E
    JMP .l9B55
---------------------------------
    RTS

;
; procFullscreen
;
procFullscreen
    LDY #$15
    JMP ($C24E)

;
; procSplitscreen
;
procSplitscreen
    LDY #$14
    JMP ($C24E)
---------------------------------
.lA262
    LDA #$00
    !by $2c
.lA265
    LDA #$01
    LDX #$00
    STX $C279
    STA $C278
    JMP .l8E3C
---------------------------------
    CPX #$04
    BNE .lA27E
    JSR $FFE4
    JSR .lADD4
    CLC
    RTS
---------------------------------
.lA27E
    CPX #$15
    BNE .lA297
    LDA $C263
    EOR #$01
    STA $C263
    JMP .lA292
---------------------------------
.lA28D
    LDA #$00
    STA KLEN
.lA292
    JSR $FFE4
    CLC
    RTS
---------------------------------
.lA297
    LDA $C263
    BEQ .lA2BA
    CPX #$87
    BNE .lA2A6
    JSR procFullscreen           ; $A258
    JMP .lA28D
---------------------------------
.lA2A6
    CPX #$86
    BNE .lA2B0
    JSR procSplitscreen          ; $A25D
    JMP .lA28D
---------------------------------
.lA2B0
    CPX #$85
    BNE .lA2BA
    JSR procTextscreen           ; $90FC
    JMP .lA28D
---------------------------------
.lA2BA
    SEC
    RTS
---------------------------------
.lA2BC
    LDX #$34
    STX $01
    LDX #$37
    AND (GRWK1),Y
    STX $01
    RTS
---------------------------------
.lA2C7
    LDX #$34
    STX $01
    AND (GRWK1),Y
    BNE .lA2DB
    LDA #$37
    STA $01
    RTS
---------------------------------
.lA2D4
    JSR STACK+14
    BNE .lA2DF
    TXA
    RTS
---------------------------------
.lA2DB
    LDA #$37
    STA $01
.lA2DF
    LDA #$00
    RTS
---------------------------------
.lA2E2
    LDX #$34
    STX $01
    AND (GRWK1),Y
    BNE .lA2EF
    LDA #$37
    STA $01
    RTS
---------------------------------
.lA2EF
    CPY #$00
    BEQ .lA2FB
    BPL .lA2F9
    LDY #$FF
    BNE .lA2FB
.lA2F9
    LDY #$01
.lA2FB
    LDA (GRWK2),Y
    LDX #$37
    STX $01
    AND #$F0
    SBC Q5+1
    RTS
---------------------------------
.lA306
    LDX #$34
    STX $01
    AND (GRWK1),Y
    BNE .lA31A
    LDA #$37
    STA $01
    RTS
---------------------------------
.lA313
    JSR STACK+14
    BNE .lA31E
    TXA
    RTS
---------------------------------
.lA31A
    LDA #$37
    STA $01
.lA31E
    LDA #$00
    RTS
---------------------------------
.lA321
    LDX #$34
    STX $01
    AND (GRWK1),Y
    BNE .lA32E
    LDA #$37
    STA $01
    RTS
---------------------------------
.lA32E
    CPY #$00
    BEQ .lA33A
    BPL .lA338
    LDY #$FF
    BNE .lA33A
.lA338
    LDY #$01
.lA33A
    LDX #$37
    BIT Q3+1
    BEQ .lA34D
    AND #$55
    BEQ .lA356
    STX $01
    LDA (GRWK2),Y
    AND #$0F
    SBC Q5
    RTS
---------------------------------
.lA34D   
    LDA (GRWK2),Y
    STX $01
    AND #$F0
    SBC Q5+1
    RTS
---------------------------------
.lA356
    LDA (GRWK2),Y
    STX $01
    AND #$0F
    SBC Q5
.lA35E
    RTS


.lA35F
    !by <.lA2D4,<.lA313,<.lA2C7,<.lA306,<.lA2E2,<.lA321,<.lA2BC,<.lA2BC 
.lA367
    !by >.lA2D4,>.lA313,>.lA2C7,>.lA306,>.lA2E2,>.lA321,>.lA2BC,>.lA2BC 
.lA36F
    !by $31,$4B,$1A,$1A,$23,$3D,$0A,$0A 
.lA377
    !by $0D,$35 
.lA379
    !by $C5,$C5


;
; procFill
;
procFill
    LDY #$0E
    JMP ($C24E)

;
; procPaint
;
procPaint
    LDY #$29
    JMP ($C24E)
---------------------------------
.lA385
    LDA #$00
    !by $2c
.lA388
    LDA #$04
    ORA RESOL
    STA Q3
    LDA GRWK3+1
    BMI .lA35E
    JSR .l8FD3
    TAX
    BMI .lA35E
    CMP GRWK3+1
    BEQ .lA35E
    LDX Q3
    CPX #$04
    BCC .lA3A4
    LDA GRWK3+1
.lA3A4
    CMP GRWK3
    BNE .lA3AA
    INX
    INX
.lA3AA
    STA Q5
    ASL
    ASL
    ASL
    ASL
    STA Q5+1
    LDA .lA35F,X
    STA GRWK1
    LDA .lA367,X
    STA GRWK1+1
    LDA .lA36F,X
    TAY
.lA3C0
    LDA (GRWK1),Y
    STA STACK,Y
    DEY
    BPL .lA3C0
    LDA #$AA
    STA Q3+1
    LDX RESOL
    LDA .lA377,X
    STA TEMPF1
    LDA .lA379,X
    STA TEMPF1+1
    TXA
    EOR #$FF
    AND COPY2
    STA COPY2
    INX
    STX INF3
    DEC STOS+1
    JSR .lA544
    STY INF1
    STY INF2
.lA3EB
    JSR .l88D8
    STX COPY1
    LDY COPY1
    LDA (TEMPF1),Y
    STA TEMPF1+3
    SEC
    LDA COPY2
    SBC INF3
    STA RESM1
    TAY
    LDA COPY2+1
    SBC #$00
    STA RESM2
    LDX #$00
    STX Q1
    STX Q1+1
    CPY $C212
    SBC $C213
    BMI .lA414
    LDX #$80
.lA414
    TYA
    AND #$07
    TAY
    CMP COPY1
    TXA
    ROR
    STA Q4
    LDA (TEMPF1),Y
    STA TEMPF1+2
    LDA COPY2
    ADC INF3
    STA RESM3
    TAY
    LDA COPY2+1
    ADC #$00
    STA RESM4
    LDX #$80
    CPY $C20A
    SBC $C20B
    BMI .lA43B
    LDX #$00
.lA43B
    TYA
    AND #$07
    TAY
    CMP COPY1
    TXA
    ROR
    STA Q4+1
    LDA (TEMPF1),Y
    STA TEMPF1+4
    LDY #$00
.lA44B
    LDA TEMPF1+3
    JSR STACK
    BEQ .lA4A7
    INC COPY3
    LDA COPY3
    TAX
    AND #$07
    BEQ .lA46A
    LDA GRWK1
    BNE .lA461
    DEC GRWK1+1
.lA461
    DEC GRWK1
.lA463
    CPX $C20C
    BNE .lA44B
    BEQ .lA4A7
.lA46A
    SEC
    LDA GRWK1
    SBC #$39
    STA GRWK1
    LDA GRWK1+1
    SBC #$01
    STA GRWK1+1
    LDA GRWK2
    SBC #$28
    STA GRWK2
    BCS .lA463
    DEC GRWK2+1
    BCC .lA463
.lA483
    LDY INF1
    BNE .lA48F
    LDX INF2
    BEQ .lA4A4
    DEC INF2
    DEC STOS+1
.lA48F
    DEY
    DEY
    LDA (STOS),Y
    STA COPY3
    DEY
    LDA (STOS),Y
    STA COPY2+1
    DEY
    LDA (STOS),Y
    STA COPY2
    STY INF1
    JMP .lA3EB
---------------------------------
.lA4A4  RTS
---------------------------------
.lA4A5
    LDY #$00
.lA4A7
    LDA COPY3
    CMP $C214
    BEQ .lA483
    DEC COPY3
    AND #$07
    BEQ .lA4BC
    INC GRWK1
    BNE .lA4D2
    INC GRWK1+1
    BNE .lA4D2
.lA4BC
    LDA GRWK1
    ADC #$38
    STA GRWK1
    LDA GRWK1+1
    ADC #$01
    STA GRWK1+1
    LDA GRWK2
    ADC #$28
    STA GRWK2
    BCC .lA4D2
    INC GRWK2+1
.lA4D2
    LDA TEMPF1+3
    JSR STACK
    BEQ .lA483
    LDX COPY1
    JSR $C44E
    BIT Q4
    BVC .lA50A
    BPL .lA4EA
    DEC GRWK1+1
    DEC GRWK2+1
    LDY #$F8
.lA4EA
    LDA TEMPF1+2
    JSR STACK
    BNE .lA4F5
    STA Q1
    BEQ .lA500
.lA4F5
    LDA Q1
    BNE .lA500
    LDX #$26
    STX Q1
    JSR .lA52B
.lA500
    BIT Q4
    BPL .lA50A
    INC GRWK1+1
    INC GRWK2+1
    LDY #$00
.lA50A
    BIT Q4+1
    BVC .lA4A7
    BMI .lA512
    LDY #$08
.lA512
    LDA TEMPF1+4
    JSR STACK
    BNE .lA51D
    STA Q1+1
    BEQ .lA4A5
.lA51D
    LDA Q1+1
    BNE .lA4A5
    LDX #$28
    STX Q1+1
    JSR .lA52B
    JMP .lA4A7
---------------------------------
.lA52B
    LDY INF1
    LDA $00,X
    STA (STOS),Y
    INY
    LDA $01,X
    STA (STOS),Y
    INY
    LDA COPY3
    STA (STOS),Y
    INY
    INY
    STY INF1
    BEQ .lA544
.lA541
    LDY #$00
    RTS
---------------------------------
.lA544
    INC STOS+1
    INC STOS+1
    INC INF2
    LDX STOS
    LDA STOS+1
    DEC STOS+1
    CPX SFREE
    SBC SFREE+1
    BCC .lA541
    LDX #$34                    ; out of memory
    JMP RUNERR

;
; procArcr
;
procArcr
    JSR .l900B
    JSR .l9595
    JSR .l900E

;
; procArcl
;
procArcl
    LDY #$27
    JMP ($C24E)
---------------------------------
.lA569
    LDA #$01
    JSR .lA7E5
    LDA #$5C
    LDY #$C2
    JSR FPMUL
    LDA #$05
    LDY #$C2
    JSR FPADD
    JSR .l8E1A
    JSR .lA812
    LDA #$60
    LDY #$C7
    JSR LDAC1
    LDA #$57
    LDY #$C2
    JSR FPMUL
    LDA #$00
    LDY #$C2
    JSR FPSUB
    JSR .l8E20
    INC AC1E
    JSR .l96CF
    LDY #$04
.lA5A1
    LDA $C257,Y
    STA TXT+10,Y                ; string constant buffer $C760
    LDA $C25C,Y
    STA TXT+15,Y                ; string constant buffer $C760
    DEY
    BPL .lA5A1
    LDA TXT+16                  ; string constant buffer $C760
    EOR #$80
    STA TXT+16                  ; string constant buffer $C760
    LDA #$02
    JSR .lA817
    JSR .lA67A
    LDA #$7C
    LDY #$87
    JSR LDAC1
    LDA #$52
    LDY #$C2
    JSR FPSUB
    JSR .l9595
    LDA COPY1
    LDY COPY1+1
    JSR FPADD
    JSR .lA824
    LDA #$65
    LDY #$C7
    JSR FPMUL
    JSR .l9771
    LDX AC1M4
    LDA AC1M3
    STX YY                      ; current y (graphics)
    STA YY+1                    ; current y (graphics)
    JSR .lA81D
    LDA #$60
    LDY #$C7
    JSR FPMUL
    JSR .l974A
    JSR .l8AFB
    JSR .l9700
    LDA #$52
    LDY #$C2
    JSR FPADD
    JSR .l906C
    LDX #$52
    LDY #$C2
    JSR STAC1
    LDY #$04
.lA613
    LDA TXT+15,Y                ; string constant buffer $C760
    STA $C25C,Y
    DEY
    BPL .lA613
    LDA $C25D
    EOR #$80
    STA $C25D
    JSR .lA81D
    JMP .lA07C

;
; procCircle
;
procCircle
    LDY #$07
    JMP ($C24E)
---------------------------------
.lA62F
    JSR .l914C
    JSR .lA802
    LDY #$04
.lA637
    LDA .l8745,Y
    STA TXT+10,Y                ; string constant buffer $C760
    LDA #$00
    STA TXT+15,Y                ; string constant buffer $C760
    DEY
    BPL .lA637
    LDA #$AA
    LDY #$C5
    JSR LDAC1
    JMP .lA667

;
; procArc
;
procArc
    LDY #$08
    JMP ($C24E)
---------------------------------
.lA654
    JSR .l914C
    JSR .lA802
    LDA #$04
    JSR .lA817
    JSR .lA824
    LDA #$05
    JSR .lA817
.lA667
    LDA $C26B
    PHA
    LDA #$00
    STA $C26B
    JSR .lA67A
    PLA
    STA $C26B
    JMP .l91C1
---------------------------------
.lA67A
    BIT GRWK3+1
    BPL .lA67F
    RTS
---------------------------------
.lA67F
    LDA #$4A
    LDY #$87
    JSR FPMUL
    LDX #$74
    LDY #$C7
    JSR STAC1
    LDA TXT+1                   ; string constant buffer $C760
    PHA
    AND #$7F
    STA TXT+1                   ; string constant buffer $C760
    LDA #$65
    LDY #$C7
    JSR LDAC1
    LDA #$00
    STA AC1S
    LDA #$60
    LDY #$C7
    JSR FPCOM
    PLA
    STA TXT+1                   ; string constant buffer $C760
    BCC .lA6B5
    LDA #$60
    LDY #$C7
    JSR LDAC1
.lA6B5
    LDA AC1E
    BEQ .lA6BF
    EOR #$80
    CMP #$04
    BPL .lA6C1
.lA6BF
    LDA #$04
.lA6C1
    STA INF1
    LDA #$74
    LDY #$C7
    JSR LDAC1
    LDA AC1S
    STA Q3
    LDA AC1E
    CLC
    ADC INF1
    STA AC1E
    LDA #$00
    STA AC1S
    JSR FPAHF
    LDA #$FF
    STA AC1S
    JSR TRUNC
    LDX AC1M4
    LDY AC1M3
    STX Q2
    STA Q2+1
    LDA #$6F
    LDY #$C7
    JSR LDAC1
    LDX #$57
    JSR .lA843
    JSR .lA81D
    LDX #$4E
    JSR .lA843
    JSR .lA81D
    LDA #$65
    LDY #$C7
    LDX #$51
    JSR .lA847
    LDA #$6F
    LDY #$C7
    JSR LDAC1
    LDA #$65
    LDY #$C7
    LDX #$5C
    JSR .lA847
    DEC INF1
    DEC INF1
    DEC INF1
    LDA $C24C
    PHA
    ORA #$40
    STA $C24C
.lA72A
    CLC
    LDA COPY2
    ADC TEMPF3+1
    STA XX                      ; current x (graphics)
    LDA COPY2+1
    ADC TEMPF3+2
    CLC
    BPL .lA739
    SEC
.lA739
    ROR
    ROR XX                      ; current x (graphics)
    BCC .lA744
    INC XX                      ; current x (graphics)
    BNE .lA744
    ADC #$00
.lA744
    STA XX+1                    ; current x (graphics)
    CLC
    LDA COPY3
    ADC TEMPF2+1
    STA YY                      ; current y (graphics)
    LDA COPY3+1
    ADC TEMPF2+2
    CLC
    BPL .lA755
    SEC
.lA755
    ROR
    ROR YY                      ; current y (graphics)
    BCC .lA760
    INC YY                      ; current y (graphics)
    BNE .lA760
    ADC #$00
.lA760
    STA YY+1                    ; current y (graphics)
    JSR .l8A5E
    LDA $C26B
    BEQ .lA76D
    JSR .lA03C
.lA76D
    LDX TEMPF1
    LDY TEMPF1+1
    LDA TEMPF1+2
    JSR .lA880
    SEC
    LDA TEMPF3
    SBC RESM1
    STA TEMPF3
    TAX
    LDA TEMPF3+1
    SBC RESM2
    STA TEMPF3+1
    TAY
    LDA TEMPF3+2
    SBC RESM3
    STA TEMPF3+2
    JSR .lA880
    CLC
    LDA TEMPF1
    ADC RESM1
    STA TEMPF1
    LDA TEMPF1+1
    ADC RESM2
    STA TEMPF1+1
    LDA TEMPF1+2
    ADC RESM3
    STA TEMPF1+2
    LDX TEMPF2
    LDY TEMPF2+1
    LDA TEMPF2+2
    JSR .lA880
    SEC
    LDA TEMPF3+3
    SBC RESM1
    STA TEMPF3+3
    TAX
    LDA TEMPF3+4
    SBC RESM2
    STA TEMPF3+4
    TAY
    LDA TEMPF3+5
    SBC RESM3
    STA TEMPF3+5
    JSR .lA880
    CLC
    LDA TEMPF2
    ADC RESM1
    STA TEMPF2
    LDA TEMPF2+1
    ADC RESM2
    STA TEMPF2+1
    LDA TEMPF2+2
    ADC RESM3
    STA TEMPF2+2
    INC Q2
    BNE .lA7DD
    INC Q2+1
    BPL .lA7E0
.lA7DD
    JMP .lA72A
---------------------------------
.lA7E0
    PLA
    STA $C24C
    RTS
---------------------------------
.lA7E5
    JSR .lA817
    JSR .l9700
    JSR .l96F1
    LDX #$60
    LDY #$C7
    JSR STAC1
    JSR .l9700
    JSR .l9735
    LDX #$65
    LDY #$C7
    JMP STAC1
---------------------------------
.lA802
    LDA #$03
    JSR .lA7E5
    JSR .l96DB
    INC AC1E
    JSR .l96CF
    JSR .l971F
.lA812
    INC AC1E
    JMP .l9713
---------------------------------
.lA817
    JSR FNDPAR
    JMP .l9700
---------------------------------
.lA81D
    LDA #$6A
    LDY #$C7
    JMP LDAC1
---------------------------------
.lA824
    JSR .l906C
    JSR .lA0E5
    PHP
    JSR FPCOS
    LDX #$6A
    LDY #$C7
    JSR .lA0CF
    PLP
    BCS .lA83C
    LDA #$80
    STA AC1S
.lA83C
    LDX #$6F
    LDY #$C7
    JMP STAC1
---------------------------------
.lA843
    LDA #$60
    LDY #$C7
.lA847
    STX INF2
    JSR FPMUL
    LDA #$00
    LDX INF2
    STA $00,X
    STA $01,X
    STA $02,X
    LDA AC1E
    CMP #$78
    BCC .lA86E
    ADC #$88
    TAY
.lA85F
    ASL AC1M3
    ROL AC1M2
    ROL AC1M1
    ROL $00,X
    ROL $01,X
    ROL $02,X
    DEY
    BNE .lA85F
.lA86E
    BIT AC1S
    BPL .lA87F
    LDY #$03
    SEC
.lA875
    LDA #$00
    SBC $00,X
    STA $00,X
    INX
    DEY
    BNE .lA875
.lA87F
    RTS
---------------------------------
.lA880
    STX RESM1
    STY RESM2
    BMI .lA8B5
    LDY INF1
.lA888
    LSR
    ROR RESM2
    ROR RESM1
    DEY
    BNE .lA888
    STA RESM3
    LDA RESM2
    LSR
    ROR RESM1
    LSR
    ROR RESM1
    LSR
    ROR RESM1
    STA RESM2
    BIT Q3
    BMI .lA8A4
    RTS
---------------------------------
.lA8A4
    SEC
    TYA
    SBC RESM1
    STA RESM1
    TYA
    SBC RESM2
    STA RESM2
    TYA
    SBC RESM3
    STA RESM3
    RTS
---------------------------------
.lA8B5
    LDY INF1
.lA8B7
    SEC
    ROR
    ROR RESM2
    ROR RESM1
    DEY
    BNE .lA8B7
    STA RESM3
    LDA RESM2
    SEC
    ROR
    ROR RESM1
    SEC
    ROR
    ROR RESM1
    SEC
    ROR
    ROR RESM1
    STA RESM2
    BIT Q3
    BMI .lA8A4
    RTS

;
; funcInq
;
funcInq
    LDY #$26
    JMP ($C24E)
---------------------------------
.lA8DC
    JSR .l95B0
    BNE .lA8F1
    CPX #$0C
    BCC .lA8F6
    CPX #$11
    BCC .lA90D
    CPX #$17
    BCC .lA947
    CPX #$22
    BCC .lA95C
.lA8F1
    LDX #$05                    ; value out of range
    JMP RUNERR
---------------------------------
.lA8F6
    LDA .lA9DD,X
    STA COPY1
    LDA .lA9D1,X
    STA COPY1+1
    CPX #$07
    LDY #$00
    LDA (COPY1),Y
    BCS .lA90A
    AND #$0F
.lA90A
    JMP .lA992
---------------------------------
.lA90D
    CPX #$0C
    BNE .lA921
    LDX #$03
.lA913
    LDA XX,X                    ; current x (graphics)
    STA COPY2,X
    DEX
    BPL .lA913
    JSR .l8FE4
    BCS .lA99A
    BCC .lA99D
.lA921
    CPX #$0D
    BNE .lA92C
    JSR .l95BC
    BNE .lA99D
    BEQ .lA99A
.lA92C
    CPX #$0E
    BNE .lA936
    LDA $C278
    JMP .lA998
---------------------------------
.lA936
    CPX #$0F
    BNE .lA941
    BIT $C24C
    BMI .lA99A
    BPL .lA99D
.lA941
    BIT GRWK3+1
    BMI .lA99D
    BPL .lA99A
.lA947
    LDA .lA9DE,X
    STA COPY1
    LDA .lA9D8,X
    STA COPY1+1
    LDY #$00
    LDA (COPY1),Y
    TAX
    INY
    LDA (COPY1),Y
    JMP PSHINT
---------------------------------
.lA95C
    CPX #$20
    BCS .lA96B
    TXA
    TAY
    LDX .lA9E7,Y
    LDA .lA9DE,Y
    JMP PUSHRL
---------------------------------
.lA96B
    BNE .lA975
    LDX #$00
    JSR .lA97D
    JMP .l90B2
---------------------------------
.lA975
    LDX #$02
    JSR .lA97D
    JMP .l90DF
---------------------------------
.lA97D
    LDY $C3BB,X
    LDA $C3BC,X
    JSR INTFP
    LDX #$4E
    LDY #$00
    JSR STAC1
    LDX #$4E
    LDA #$00
    RTS
---------------------------------
.lA992
    TAX
.lA993
    LDA #$00
    JMP PSHINT
---------------------------------
.lA998
    BEQ .lA99D
.lA99A
    LDA #$81
    !by $2c
.lA99D
    LDA #$00
    PHA
    CLC
    LDA STOS
    STA COPY2
    ADC #$05
    TAX
    LDA STOS+1
    STA COPY2+1
    ADC #$00
    TAY
    CPX SFREE
    SBC SFREE+1
    BCS .lA9CC
    STX STOS
    STY STOS+1
    PLA
    LDY #$00
    STA (COPY2),Y
    TYA
    INY
    STA (COPY2),Y
    INY
    STA (COPY2),Y
    INY
    STA (COPY2),Y
    INY
    STA (COPY2),Y
    RTS
---------------------------------
.lA9CC
    LDX #$34                    ; out of memory
    JMP RUNERR
---------------------------------

.lA9D1
    !by $00,$C8,$C8,$02,$C2,$00,$00 
.lA9D8
    !by $C2,$C2,$C2,$C2,$C2
.lA9DD
    !by $0C
.lA9DE
    !by $53,$54,$86,$62,$86,$87,$95,$96,$80
.lA9E7
    !by $97,$6B,$00,$00,$C2,$C2,$C2,$C2 
    !by $7E,$80,$12,$0E,$14,$10,$C2,$C2
    !by $C2,$C2,$C2,$C2,$C2,$C2,$C2,$1A 
    !by $24,$1F,$29,$5C,$57,$70,$42,$47

P4_AA07
    LDA .lAA10,Y
    PHA
    LDA .lAA3A,Y
    PHA
    RTS

.lAA10
    !by >.l95D0-1,>.l8F1A-1,>.l8CA8-1,>.l8ADF-1,>.l8B0B-1,>.l8C81-1,>.l8AED-1,>.lA62F-1
    !by >.lA654-1,>.l942B-1,>.l915C-1,>.l8DA0-1,>.l8DC3-1,>.l8FC8-1,>.lA385-1,>.l949B-1
    !by >.l9488-1,>.l9510-1,>.l8E2F-1,>.l9101-1,>.lA265-1,>.lA262-1,>.l88FF-1,>.l8963-1
    !by >.lA240-1,>.lA24D-1,>.lA214-1,>.l90AE-1,>.l90DB-1,>.l9052-1,>.l9099-1,>.l9044-1
    !by >.l901F-1,>.l953B-1,>.l9547-1,>.l9553-1,>.l957B-1,>.l957E-1,>.lA8DC-1,>.lA569-1
    !by >.l9523-1,>.lA388-1 

.lAA3A
    !by <.l95D0-1,<.l8F1A-1,<.l8CA8-1,<.l8ADF-1,<.l8B0B-1,<.l8C81-1,<.l8AED-1,<.lA62F-1
    !by <.lA654-1,<.l942B-1,<.l915C-1,<.l8DA0-1,<.l8DC3-1,<.l8FC8-1,<.lA385-1,<.l949B-1
    !by <.l9488-1,<.l9510-1,<.l8E2F-1,<.l9101-1,<.lA265-1,<.lA262-1,<.l88FF-1,<.l8963-1
    !by <.lA240-1,<.lA24D-1,<.lA214-1,<.l90AE-1,<.l90DB-1,<.l9052-1,<.l9099-1,<.l9044-1
    !by <.l901F-1,<.l953B-1,<.l9547-1,<.l9553-1,<.l957B-1,<.l957E-1,<.lA8DC-1,<.lA569-1
    !by <.l9523-1,<.lA388-1


.lAA64
    LDA #$01
    ORA $C29B,X
    STA $C29B,X
    RTS
---------------------------------
    LDX #$20
    STX INF2
    LDA $C2BB
    BMI .lAAA1
    BEQ .lAAA1
    JSR .lAD78
    LDA #$03
    BNE .lAA8D
.lAA7F
    LDX INF2
    LDA $C29B,X
    ASL
    BEQ .lAAA1
    TXA
    JSR .lADAC
    LDA #$02
.lAA8D
    JSR CWRT
    LDA PAGEPT
    LDY PAGEPT+1
    JSR .lADE5
    LDA COPY2
    LDY COPY2+1
    JSR .lADE5
    JSR .lB007
.lAAA1
    DEC INF2
    BPL .lAA7F
.lAAA5
    RTS
---------------------------------
    CMP #$04
    BCS .lAAA5
    SBC #$01
    BMI .lAAA5
    PHA
    JSR .lAAF8
    STA COPY1
    JSR .lAAF8
    AND #$0F
    ASL COPY1
    ROL
    ASL COPY1
    ROL
    STA COPY1
    JSR .lAAF8
    JSR .lAAF8
    PLA
    BEQ .lAAD8
    LDX #$20
    JSR .lAA64
    JSR .lAB05
    JSR .lAD78
    JMP .lAAE1
---------------------------------
.lAAD8
    LDA COPY1
    TAX
    JSR .lADAC
    JSR .lAA64
.lAAE1
    JSR .lAAF8
    LDY #$00
    JSR $C57F
    INC PAGEPT
    BNE .lAAEF
    INC PAGEPT+1
.lAAEF
    INC GRWK2
    BNE .lAAE1
    INC GRWK2+1
    BNE .lAAE1
.lAAF7
    RTS
---------------------------------
.lAAF8
    JMP ($003D)
---------------------------------
.lAAFB
    LDA $C2BB
    BNE .lAAF7
    LDX #$20
    JSR .lAA64
.lAB05
    LDA $C2BB
    BEQ .lAAF7
    JSR .lACF6
    LDA PAGEPT+1
    ROL
    ROL
    ROL
    AND #$03
    EOR #$03
    STA $C27E
    LDA PAGEPT+1
    AND #$38
    LSR
    LSR
    STA PAGEPT
    LDA $D018
    AND #$02
    ORA PAGEPT
    STA PAGEPT
    LDA HIBASE
    AND #$3C
    ASL
    ASL
    ORA PAGEPT
    STA $C27D
    JSR .l95BC
    BNE .lAB4C
    LDA $DD00
    AND #$FC
    ORA $C27E
    STA $DD00
    LDA $C27D
    STA $D018
.lAB4C
    LDX ROWPOS
    LDY COLPOS
    CLC
    JMP $FFF0

;
; procLinkshape
;
procLinkshape
    JSR .l9AEC
    JMP .lAA64

;
; procLoadshape
;
procLoadshape
    JSR .l9AEC
    JSR .lADAF
    LDA #$02
    JSR .lAB8A
    JSR .lB077
    JSR .l81E7
    JMP .lAE77

;
; procSaveshape
;
procSaveshape
    JSR .l9AEC
    JSR .lADAF
    LDA #$02
    JSR .lAB97
    JMP .lABFC
---------------------------------
.lAB7C
    LDA #$FE
    STA LA
    JMP CCLOSE
---------------------------------
.lAB83
    LDX #$0B                    ; invalid file name
    JMP RUNERR
---------------------------------
.lAB88
    LDA #$01
.lAB8A
    JSR FNDPAR
    LDA #$21
    JSR .lABA2
    JMP CCHKIN
---------------------------------
.lAB95
    LDA #$01
.lAB97
    JSR FNDPAR
.lAB9A
    LDA #$22
    JSR .lABA2
    JMP CCKOUT
---------------------------------
.lABA2
    PHA
    JSR .l8ED0
    STA $C24D
    JSR .lAB7C
    CLC
    LDA COPY1
    ADC #$04
    STA FILADR
    LDA COPY1+1
    ADC #$00
    STA FILADR+1
    LDY #$02
    LDA (COPY1),Y
    BNE .lAB83
    INY
    LDA (COPY1),Y
    BMI .lAB83
    STA FNLEN
    PLA
    JSR CFNAME
    JSR COPEN
    LDX LA
.lABCF
    RTS

;
; procLinkfont
;
procLinkfont
    JSR .lAAFB
.lABD3
    LDA CSTAT                   ; status of comal program
    CMP #$05
    BNE .lABCF
    LDX #$3A                    ; con not possible
    JMP RUNERR

;
; procLoadfont
;
procLoadfont
    JSR .lAAFB
    JSR .lAB88
    JSR .lAD78
    JSR .lB077
    JSR .lAE77
    JMP .lABD3

;
; procSavefont
;
procSavefont
    LDA $C2BB
    BEQ .lAC54                  ; value out of range
    JSR .lAB95
    JSR .lAD78
.lABFC
    JSR .lB007
    JMP .lAE77
---------------------------------

.lAC02
    LDX #$20
    LDA $C29B,X
    BMI .lAC45
    BEQ .lAC45
    JSR .lAD78
    LDX $C3B9
    LDY $C3BA
    JSR .lADC5
    LDA $DD00
    ORA #$03
    STA $DD00
    STA $C27E
    LDA $D018
    AND #$02
    ORA #$14
    STA $D018
    STA $C27D
    LDA #$04
    STA HIBASE
    JSR .lAB4C
    LDX #$20
    LDA #$00
    BEQ .lAC42
.lAC3D
    LDA $C29B,X
    AND #$80
.lAC42
    STA $C29B,X
.lAC45
    DEX
    BPL .lAC3D
    RTS

;
; procKeepfont
;
procKeepfont
    LDA $C2BB
    BEQ .lAC53
    ORA #$80
    STA $C2BB
.lAC53
    RTS
---------------------------------
.lAC54
    JMP .error5                 ; value out of range

;
; procGetcharacter
;
procGetcharacter
    JSR .lACA7
    LSR INF1
    BNE .lAC63
    LDA $C2BB
    BEQ .lAC54
.lAC63
    LDA #$03
    JSR FNDPAR
    JSR .l95B3                  ; load COPY1 with A and X
    BNE .lAC71
    CPX #$08
    BCC .lAC54
.lAC71
    TYA
    LDY #$02
    STA (COPY1),Y
    INY
    LDA #$08
    STA (COPY1),Y
    INY
.lAC7C
    JSR LOAD
    STA (COPY1),Y
    INY
    CPY #$0C
    BNE .lAC7C
    RTS

;
; procPutcharacter
;
procPutcharacter
    JSR .lACA7
    LSR INF1
    BNE .lAC54
    JSR .l95A6
    BNE .lAC97
    CPX #$08
    BCC .lAC54
.lAC97
    LDY #$04
.lAC99
    LDA (COPY1),Y
    JSR STORE
    INY
    CPY #$0C
    BNE .lAC99
    RTS
---------------------------------
.lACA4
    JMP .error5                 ; error "value out of range"
---------------------------------
.lACA7
    JSR .l95B0
    BNE .lACA4
    CPX #$04
    BCS .lACA4
    TXA
    STA INF1
    CMP #$02
    BCC .lACC4
    AND #$01
    ASL
    ASL
    ASL
    ORA #$D0
    STA PAGEPT+1
    LDA #$43
    BNE .lACD7
.lACC4
    LDX $C2BB
    BEQ .lACA4
    PHA
    JSR .lAD78
    PLA
    ASL
    ASL
    ASL
    ADC PAGEPT+1
    STA PAGEPT+1
    LDA #$47
.lACD7
    STA PAGEX
    JSR .l95AB
    TXA
    STY COPY2+1
    ASL
    ROL COPY2+1
    ASL
    ROL COPY2+1
    ASL
    ROL COPY2+1
    SEC
    SBC #$04
    STA PAGEPT
    LDA PAGEPT+1
    ORA COPY2+1
    SBC #$00
    STA PAGEPT+1
    RTS
---------------------------------
.lACF6
    JSR .lAD78
    LDX #$00
    LDY PAGEPT+1
    STX COPY1
    STY COPY1+1
    LDY GRWK1+1
    STY HIBASE
    LDY COPY3+1
    CPX SMAX
    TYA
    SBC SMAX+1
    BCS .lAD78
    TXA
    BNE .lAD13
    DEY
.lAD13
    DEX
    LDA ENDADR
    STA $C3B9
    LDA ENDADR+1
    STA $C3BA
    JSR .lADC5
    LDA SSTACK
    STA STOS
    LDA SSTACK+1
    STA STOS+1
    BIT $C2BB
    BMI .lAD78
    LDX SVARS
    LDA SVARS+1
.lAD34
    STX COPY3
    STA COPY3+1
    LDY #$00
    LDA (COPY3),Y
    BEQ .lAD51
    TYA
    LDY #$03
.lAD41
    STA (COPY3),Y
    DEY
    BNE .lAD41
    CLC
    TXA
    ADC (COPY3),Y
    TAX
    LDA COPY3+1
    ADC #$00
    BNE .lAD34
.lAD51
    LDX #$00
    LDA #$D0
    STX PAGEPT
    STA PAGEPT+1
    LDA #$43
    STA PAGEX
    LDA #$10
    STA T1                      ; temporary 1
    LDY #$00
.lAD63
    JSR LOAD
    STA (COPY1),Y
    INY
    BNE .lAD63
    INC COPY1+1
    INC PAGEPT+1
    DEC T1                      ; temporary 1
    BNE .lAD63
    LDA #$93
    JSR $FFD2
.lAD78
    LDX #$00
    LDY #$F0
    STX GRWK2
    STY GRWK2+1
    LDA IEEEIN
    CMP #$49
    PHP
    LDX #$6C
    LDY #$70
    TXA
    PLP
    BNE .lAD93
    LDX #$70
    LDY #$60
    TYA
.lAD93
    STA COPY3+1
    LDA #$00
    STA PAGEPT
    STA COPY3
    STA GRWK1
    STX GRWK1+1
    CLC
    ADC #$FF
    STA COPY2
    TYA
    STA PAGEPT+1
    ADC #$0F
    STA COPY2+1
    RTS
---------------------------------
.lADAC
    JSR .l9AF9
.lADAF
    CLC
    LDA PAGEPT
    ADC #$3F
    STA COPY2
    LDA PAGEPT+1
    ADC #$00
    STA COPY2+1
    LDA #$C0
    LDY #$FF
    STA GRWK2
    STY GRWK2+1
    RTS
---------------------------------
.lADC5
    STX SMAX
    STY SMAX+1
    STX SFREE
    STY SFREE+1
    STX ENDADR
    STY ENDADR+1
    RTS
---------------------------------
.lADD4
    LDA CSTAT                   ; status of comal program
    PHA
    LDX #$05
    STX CSTAT                   ; status of comal program
    JSR .lADF6
    PLA
    STA CSTAT                   ; status of comal program
    RTS
---------------------------------
.lADE5
    JSR CWRT
    TYA
    JMP CWRT

.lADEC
    !by $00,$03,$4C,$50,$3A

.lADF1
    JMP .error5                 ; error "value out of range"

;
; procPrintscreen
;
procPrintscreen
    LDX #$00
.lADF6
    LDY #$0A
.lADF8
    LDA .lA2BC,Y
    STA TXT,Y                   ; string constant buffer $C760
    DEY
    BPL .lADF8
    TXA
    BEQ .lAE25
    LDX #$4F
    LDA #$00
    STX PAGEPT
    STA PAGEPT+1
    LDY #$05
.lAE0E
    LDA .lADEC-1,Y
    STA TXT+39,Y                ; string constant buffer $C760
    DEY
    BNE .lAE0E
    LDX #$86
    LDA #$C7
    STX COPY1
    STA COPY1+1
    JSR .lAB9A
    JMP .lAE35
---------------------------------
.lAE25
    JSR .l95AB
    STX PAGEPT
    STA PAGEPT+1
    CPX #$E0
    SBC #$01
    BCS .lADF1
    JSR .lAB95
.lAE35
    LDA #$08
    JSR CWRT
    LDA $C210
    STA Q1
    LDA $C214
    CLC
    ADC #$06
    STA Q1+1
.lAE47
    LDA Q1
    CMP Q1+1
    BCC .lAE64
    SBC #$06
    TAX
    LDY #$06
    JSR .lAE96
    JSR .lAE84
    BCS .lAE72
    SEC
    LDA Q1
    SBC #$07
    STA Q1
    JMP .lAE47
---------------------------------
.lAE64
    LDX $C214
    LDA Q1
    SEC
    SBC $C214
    TAY
    INY
    JSR .lAE96
.lAE72
    LDA #$0F
    JSR CWRT
.lAE77
    JSR .lAB7C
    JSR .l8EAB
    LDA $C24D
    STA $D015
    RTS
---------------------------------
.lAE84
    LDA ESCAPE
    BPL .lAE94
    LDA #$00
    STA ESCAPE
    LDA EXCINF
    AND #$02
    BNE .lAE94
    SEC
    RTS
---------------------------------
.lAE94
    CLC
    RTS
---------------------------------
.lAE96
    STX Q2
    STY Q2+1
    LDX #$02
.lAE9C
    LDA PAGE,X
    STA Q5+1,X
    LDA $C211,X
    STA COPY1+1,X
    DEX
    BNE .lAE9C
    STX INF3
    STX Q5+1
    STX Q4
.lAEAE
    LDA #$00
    STA INF2
    LDA Q2+1
    BMI .lAF12
    STA Q3
    LDA Q2
    STA COPY3
.lAEBC
    JSR .l88D8
    STX Q5
.lAEC1
    LDX Q5
    LDA RESOL
    BEQ .lAEED
    JSR $C40F
    TAX
    LDA .lAF39,X
    BEQ .lAEF5
    BMI .lAEF8
    TAX
    LDA COPY2
    DEX
    BNE .lAEE0
    LSR
    BCS .lAEF9
.lAEDB
    EOR COPY3
    LSR
    BPL .lAEF9
.lAEE0
    DEX
    BEQ .lAEDB
    LSR
    BCS .lAEF8
    EOR COPY3
    LSR
    BCS .lAEF8
    BCC .lAEF5
.lAEED
    LDA $C50D,X
    JSR TXT                     ; string constant buffer $C760
    BEQ .lAEF8
.lAEF5
    SEC
    BCS .lAEF9
.lAEF8
    CLC
.lAEF9
    ROL INF2
    DEC Q3
    BMI .lAF12
    INC COPY3
    LDA COPY3
    AND #$07
    BEQ .lAEBC
    LDA GRWK1
    BNE .lAF0D
    DEC GRWK1+1
.lAF0D
    DEC GRWK1
    JMP .lAEC1
---------------------------------
.lAF12
    LDA INF2
    ORA #$80
    JSR .lAF49
    INC COPY2
    BNE .lAF1F
    INC COPY2+1
.lAF1F
    LDA $C20E
    CMP COPY2
    LDA $C20F
    SBC COPY2+1
    BPL .lAEAE
    LDA Q4
    CMP #$80
    BEQ .lAF34
    JSR .lAF7C
.lAF34
    LDA #$0D
    JMP CWRT

.lAF39
    !by $00,$80,$01,$03,$02,$02,$01,$03 
    !by $02,$01,$02,$01,$02,$03,$02,$03

.lAF49
    PHA
    CMP Q4
    BNE .lAF6D
    CMP #$80
    BNE .lAF5E
    LDX Q5+1
    BNE .lAF5E
    INC INDEX1
    BNE .lAF72
    INC INDEX1+1
    BNE .lAF72
.lAF5E
    LDX INF3
    INX
    BNE .lAF70
    CMP #$80
    BNE .lAF6D
    STX Q5+1
    INC INDEX1+1
    BNE .lAF70
.lAF6D
    JSR .lAF7C
.lAF70
    INC INF3
.lAF72
    PLA
    STA Q4
    INC COPY1
    BNE .lAF7B
    INC COPY1+1
.lAF7B
    RTS
---------------------------------
.lAF7C
    LDA INF3
    BEQ .lAFB5
    LDA Q5+1
    BNE .lAF94
    LDA #$1B
    LDY #$10
    JSR .lADE5
    LDA INDEX1+1
    LDY INDEX1
    JSR .lADE5
    INC Q5+1
.lAF94
    LDA INF3
    CMP #$04
    BCS .lAFA5
.lAF9A
    LDA Q4
    JSR CWRT
    DEC INF3
    BNE .lAF9A
    BEQ .lAFB5
.lAFA5
    LDA #$1A
    LDY INF3
    JSR .lADE5
    LDA Q4
    JSR CWRT
    LDA #$00
    STA INF3
.lAFB5
    LDX COPY1
    LDA COPY1+1
    STX INDEX1
    STA INDEX1+1
    RTS
---------------------------------
.lAFBE
    LDY #$D8
    LDX #$18
    LDA #$FC
.lAFC4
    STX GRWK2
    STA GRWK2+1
    STY PAGEPT+1
    LDY #$00
    STY PAGEPT
    RTS
---------------------------------
.lAFCF
    LDY #$E0
    LDX #$C0
    LDA #$E0
    BNE .lAFC4

;
; procSavescreen
;
procSavescreen
    JSR .lAB95
    LDA RESOL
    LDY GRWK3
    JSR .lADE5
    LDA $C262
    JSR CWRT
    JSR .lAFBE
    JSR .lB007
    LDA RESOL
    BEQ .lAFFE
    JSR .lAFBE
.lAFF4
    LDA (PAGEPT),Y
    JSR CWRT
    JSR .lB085
    BNE .lAFF4
.lAFFE
    JSR .lAFCF
    JSR .lB007
    JMP .lAE77
---------------------------------
.lB007
    LDY #$00
.lB009
    JSR $C574
    JSR CWRT
    JSR .lB085
    BNE .lB009
    RTS
---------------------------------
.lB015
    BIT STATUS
    BVS .lB01C
.lB019
    JMP CRDT
---------------------------------
.lB01C
    LDA FA
    CMP #$01
    BEQ .lB019
    LDX #$C9                    ; end of file
    JMP RUNERR

;
; procLoadscreen
;
procLoadscreen
    LDA $C267
    PHA
    LDA #$00
    STA $C267
    JSR .lAB88
    JSR .lB015
    TAX
    JSR .l95BC
    BEQ .lB043
    TXA
    JSR .l8E39
    JMP .lB047
---------------------------------
.lB043
    TXA
    JSR .l8E9C
.lB047
    JSR .lB015
    JSR .l949E
    JSR .lB015
    JSR .l9513
    JSR .lAFBE
    JSR .lB077
    LDA RESOL
    BEQ .lB06A
    JSR .lAFBE
.lB060
    JSR .lB015
    STA (PAGEPT),Y
    JSR .lB085
    BNE .lB060
.lB06A
    JSR .lAFCF
    JSR .lB077
    PLA
    STA $C267
    JMP .lAE77
---------------------------------
.lB077
    LDY #$00
.lB079
    JSR .lB015
    JSR $C57F
    JSR .lB085
    BNE .lB079
    RTS
---------------------------------
.lB085
    INY
    BNE .lB08A
    INC PAGEPT+1
.lB08A
    INC GRWK2
    BNE .lB090
    INC GRWK2+1
.lB090
    RTS
---------------------------------

; Sound
ptSound
;
    !pet $04,"note"
    !word phNote                ; $B15B
;
    !pet $05,"pulse"
    !word phPulse               ; $B162
;
    !pet $04,"gate"
    !word phGate                ; $B169
;
    !pet $09,"soundtype"
    !word phSoundtype           ; $B170
;
    !pet $07,"ringmod"
    !word phRingmod             ; $B177
;
    !pet $04,"sync"
    !word phSync                ; $B17E
;
    !pet $04,"adsr"
    !word phAdsr                ; $B185
;
    !pet $0a,"filterfreq"
    !word phFilterfreq          ; $B18F
;
    !pet $09,"resonance"
    !word phResonance           ; $B195
;
    !pet $06,"filter"
    !word phFilter              ; $B19B
;
    !pet $0a,"filtertype"
    !word phFiltertype          ; $B1A4
;
    !pet $06,"volume"
    !word phVolume              ; $B1AD
;
    !pet $04,"env3"
    !word phEnv3                ; $B1B3
;
    !pet $04,"osc3"
    !word phOsc3                ; $B1B8
;
    !pet $09,"frequency"
    !word phFrequency           ; $B1BD
;
    !pet $08,"setscore"
    !word phSetscore            ; $B1C3
;
    !pet $09,"playscore"
    !word phPlayscore           ; $B1CF
;
    !pet $08,"stopplay"
    !word phStopplay            ; $B1D7
;
    !pet $09,"waitscore"
    !word phWaitscore           ; $B1DF
;
    !pet $0c,"setfrequency"
    !word phSetfrequency        ; $B1E7
;
    !by $00

; $B15B
phNote
    !by PROC
    !word procNote
    !by $02
    !by VALUE + INT
    !by VALUE + STR
    !by ENDPRC

; $B162
phPulse
    !by PROC
    !word procPulse
    !by $02
    !by VALUE + INT
    !by VALUE + INT
    !by ENDPRC

; $B169
phGate
    !by PROC
    !word procGate
    !by $02
    !by VALUE + INT
    !by VALUE + INT
    !by ENDPRC

; $B170
phSoundtype
    !by PROC
    !word procSoundtype
    !by $02
    !by VALUE + INT
    !by VALUE + INT
    !by ENDPRC

; $B177
phRingmod
    !by PROC
    !word procRingmod
    !by $02
    !by VALUE + INT
    !by VALUE + INT
    !by ENDPRC

; $B17E
phSync
    !by PROC
    !word procSync
    !by $02
    !by VALUE + INT
    !by VALUE + INT
    !by ENDPRC

; $B185
phAdsr
    !by PROC
    !word procAdsr
    !by $05
    !by VALUE + INT
    !by VALUE + INT
    !by VALUE + INT
    !by VALUE + INT
    !by VALUE + INT
    !by ENDPRC

; $B18F
phFilterfreq
    !by PROC
    !word procFilterfreq
    !by $01
    !by VALUE + INT
    !by ENDPRC

; $B195
phResonance
    !by PROC
    !word procResonance
    !by $01
    !by VALUE + INT
    !by ENDPRC

; $B19B
phFilter
    !by PROC
    !word procFilter
    !by $04
    !by VALUE + INT
    !by VALUE + INT
    !by VALUE + INT
    !by VALUE + INT
    !by ENDPRC

; $B1A4
phFiltertype
    !by PROC
    !word procFiltertype
    !by $04
    !by VALUE + INT
    !by VALUE + INT
    !by VALUE + INT
    !by VALUE + INT
    !by ENDPRC

; $B1AD
phVolume
    !by PROC
    !word procVolume
    !by $01
    !by VALUE + INT
    !by ENDPRC

; $B1B3
phEnv3
    !by FUNC
    !word funcEnv3
    !by $00
    !by ENDFNC

; $B1B8
phOsc3
    !by FUNC
    !word funcOsc3
    !by $00
    !by ENDFNC

; $B1BD
phFrequency
    !by FUNC
    !word funcFrequency
    !by $01
    !by VALUE + STR
    !by ENDFNC

; $B1C3
phSetscore
    !by PROC
    !word procSetscore
    !by $04
    !by VALUE + INT
    !by REF + ARRAY + INT,1
    !by REF + ARRAY + INT,1
    !by REF + ARRAY + INT,1    
    !by ENDPRC

; $B1CF
phPlayscore
    !by PROC
    !word procPlayscore
    !by $03
    !by VALUE + INT
    !by VALUE + INT
    !by VALUE + INT
    !by ENDPRC

; $B1D7
phStopplay
    !by PROC
    !word procStopplay
    !by $03
    !by VALUE + INT
    !by VALUE + INT
    !by VALUE + INT
    !by ENDPRC

; $B1DF
phWaitscore
    !by FUNC
    !word procWaitscore
    !by $03
    !by VALUE + INT
    !by VALUE + INT
    !by VALUE + INT
    !by ENDFNC

; $B1E7
phSetfrequency
    !by PROC
    !word procSetfrequency
    !by $02
    !by VALUE + INT
    !by VALUE + REAL
    !by ENDPRC

;get 2 parameter; y (0,1,2), and x (0,7,14)
.lB1EE
    JSR .l95B0                  ; get a parameter, a= high, x= low
    BNE +                       ; invalid voice error
    DEX
    TXA
    STA T1                      ; temporary 1
    TAY                         ; voice no. in y
    CMP #$03                    ; max voice number
    BCS +                       ; invalid voice error
    ASL                         ; calculate register offset (0,7,14)
    ASL
    ASL
    SEC
    SBC T1                      ; temporary 1
    TAX                         ; register offset in x
    RTS
---------------------------------

+   LDX #$23                    ; invalid voice
    JMP RUNERR
---------------------------------
;
; used in Sound, Paddle, and Joystick
; get a parameter (max. 15)
.lB209
    JSR FNDPAR
    JSR .l95B3                  ; load COPY1 with A (high) and X (low)
    BNE .lB225                  ; if value > 255, output error 5
    CPX #$10
    BCS .lB225                  ; if value < 16, output error 5
    TXA                         ; get value into accu
    RTS
---------------------------------

; used by sound
; get a parameter
; the result will be 0 or 1
.lB217                          
    JSR FNDPAR
; jump in from sprite
.lB21A
    LDY #$00
    LDA (COPY1),Y
    INY
    ORA (COPY1),Y
    BEQ +
    TYA

+   RTS
---------------------------------
.lB225
    JMP .error5                 ; error "value out of range"
---------------------------------
; get a table pointer
.lB228
    JSR FNDPAR
    JSR .l95B3                  ; load COPY1 with A and X
    STA COPY3
    STX COPY3+1
    LDY #$06
    SEC
    LDA (COPY1),Y
    LDY #$04
    SBC (COPY1),Y
    STA COPY2+1
    LDY #$05
    LDA (COPY1),Y
    LDY #$03
    SBC (COPY1),Y
    STA COPY2
    LDA $C31D
    ORA $C31E
    BNE +
    LDA COPY2
    STA $C31D
    LDA COPY2+1
    STA $C31E
    JMP ++
---------------------------------

+   LDA COPY2
    CMP $C31D
    BCC .lB225
    BNE ++
    LDA COPY2+1
    CMP $C31E
    BCC .lB225

++  CLC
    ASL COPY2+1
    ROL COPY2
    CLC
    LDA COPY2+1
    ADC COPY3
    STA Q1
    LDA COPY2
    ADC COPY3+1
    STA Q1+1
    LDY #$00
    TYA
    STA (Q1),Y
    INY
    STA (Q1),Y

-   RTS
---------------------------------

;
init_Sound
    LDA $C299
    BEQ -
    LDA #$10
    STA $C300
    STA $C301
    ASL
    STA $C302
    LDA #$0F
    STA $C304
    LDY #$19
-   LDA .lB2CA-1,Y
    STA $D400-1,Y
    DEY
    BNE -
    STY $C303
    STY $C308
    STY $C309
    STY $C30A
    STY $C30B
    STY $C30C
    STY $C30D
    STY $C30E
    STY $C30F
    STY $C310
    STY $C299
    RTS


.lB2CA
!by $00,$00,$00,$08,$20,$04,$CA,$00
!by $00,$00,$08,$20,$A8,$A9,$00,$00
!by $00,$08,$40,$09,$09,$00,$00,$00
!by $0F

;
; procSetfrequency
;
procSetfrequency
    JSR .l9595                  ; get 2. parameter (frequency)
    LDA COPY1
    LDY COPY1+1
    JSR LDAC1                   ; load ac1
    JSR FPINTA                  ; CONVERT AC1 INTO INTEGER (0 .. 65535)
    JSR .lB1EE                  ; get 1. parameter (as offset) into x (0,7,14)
    LDA AC1M4                   ; MANTISSA 4
    STA $D400,X
    LDA AC1M3                   ; MANTISSA 3
    STA $D401,X
    RTS

;
; procNote
;
procNote
    LDA #$02
    JSR .lB316                  ; get 2. parameter (note)
    JSR .lB1EE                  ; get 1. parameter (as offset) into x (0,7,14)
    LDA COPY3
    STA $D401,X
    LDA COPY3+1
    STA $D400,X
    RTS
---------------------------------
.lB311
    LDX #$24                    ; invalid note error
    JMP RUNERR
---------------------------------
; calculate frequency value from note input
.lB316
    JSR FNDPAR
    LDY #$02
    LDA (COPY1),Y
    BNE .lB311                  ; invalid note error
    INY
    LDA (COPY1),Y
    CMP #$02
    BCC .lB311                  ; invalid note error
    CMP #$04
    BCS .lB311                  ; invalid note error
    STA INF1
    INY
    LDA (COPY1),Y
    SEC
    SBC #$41
    BCC .lB311                  ; invalid note error
    CMP #$07
    BCS .lB311                  ; invalid note error
    TAX
    LDA .lB3A7,X
    INY
    INY
    TAX
    BMI +
    LDA INF1
    CMP #$02
    BEQ ++
    LDA (COPY1),Y
    CMP #$20
    BEQ ++
    CMP #$23
    BNE ++
    INX
    BNE ++
+   LDA INF1
    CMP #$02
    BEQ ++
    LDA (COPY1),Y
    CMP #$20
    BNE .lB311                  ; invalid note error
++  TXA
    ASL
    TAX
    CLC
    LDA PALNTS
    BEQ +
    TXA
    ADC #$18
    TAX
    CMP #$2E
+   PHP
    LDA .lB3AE,X
    STA COPY3
    LDA .lB3AE+1,X
    STA COPY3+1
    DEY
    SEC
    LDA #$37
    SBC (COPY1),Y
    BMI .lB311                  ; invalid note error
    BEQ ++
    CMP #$08
    BCS .lB311                  ; invalid note error
    TAX
    PLP
    ROR COPY3
    JMP +

-   LSR COPY3
+   ROR COPY3+1
    DEX
    BNE -
    LDA COPY3+1
    ADC #$00
    STA COPY3+1
    BCC .lB3A0
    INC COPY3
.lB3A0
    RTS
---------------------------------
++  PLP
    BCC .lB3A0
    JMP .lB311                  ; invalid note error
---------------------------------
.lB3A7
    !by $09,$8B,$00,$02,$84,$05,$07
.lB3AE
    !by $86,$1E,$8E,$18,$96,$8B,$9F,$7E 
    !by $A8,$FA,$B3,$06,$BD,$AC,$C8,$F3 
    !by $D4,$E6,$E1,$8F,$EE,$F8,$FD,$2E 
    !by $8B,$38,$93,$80,$9C,$45,$A5,$8F 
    !by $AF,$68,$B9,$D5,$C4,$E3,$D0,$98 
    !by $DC,$FF,$EA,$24,$F8,$0F,$06,$D0

;
; procPulse
;
procPulse
    JSR .l95AB                  ; get 2. parameter pulse width value
    STA COPY3
    STX COPY3+1
    AND #$F0
    BNE .lB3F7                  ; value out of range
    JSR .lB1EE                  ; get 1. parameter (as offset) into x (0,7,14)
    LDA COPY3+1
    STA $D402,X
    LDA COPY3
    STA $D403,X
    RTS
---------------------------------

.lB3F7
    JMP .error5                 ; error "value out of range"

;
; procGate
;
procGate
    LDA #$02                    ; second parameter (on/off)
    JSR .lB217                  ; get parameter, returns 0 or 1
    STA COPY3
    JSR .lB1EE                  ; get 1. parameter (voice no. into y, and as offset into x (0,7,14)
    LDA $C300,Y                 ; set or delete the gate bit for voice y
    LSR
    ROR COPY3
    ROL
    STA $C300,Y
    STA $D404,X                 ; voice register offset in x
    RTS

;
; procSoundtype
;
procSoundtype
    LDA #$02
    JSR .lB209                  ; get waveform no.
    CPX #$05
    BCS .lB3F7                  ; value out of range
    LDA .lB431,X                ; waveform offset
    STA COPY3
    JSR .lB1EE                  ; get 1. parameter (voice no. into y, and as offset into x (0,7,14)
    LDA $C300,Y
    AND #$0F
    ORA COPY3
    STA $C300,Y
    STA $D404,X                 ; save waveform for voice x
    RTS

;waveform offset value
.lB431
    !by $00,$10,$20,$40,$80

;
; procRingmod
;
procRingmod
    LDA #$02
    JSR .lB217                  ; get 2. parameter, returns 0 or 1
    PHA
    JSR .lB1EE                  ; get 1. parameter (voice no. into y, and as offset into x (0,7,14)
    PLA
    BEQ +
    LDA $C300,Y
    ORA #$04
    BNE ++

+   LDA $C300,Y
    AND #$FB

++  STA $C300,Y
    STA $D404,X
    RTS

;
; procSync
;
procSync
    LDA #$02
    JSR .lB217                  ; get 2. parameter, (yes/no) returns 0 or 1
    PHA
    JSR .lB1EE                  ; get 1. parameter (voice no. into y, and as offset into x (0,7,14)
    PLA
    BEQ +
    LDA $C300,Y
    ORA #$02
    BNE ++

+   LDA $C300,Y
    AND #$FD

++  STA $C300,Y
    STA $D404,X
    RTS

;
; procAdsr
;
procAdsr
    LDA #$02                    ; 2. parameter
    JSR .lB209                  ; get value 'a' (max. 15)
    ASL                         ;
    ASL                         ;
    ASL                         ;
    ASL                         ; move into high nibble
    STA COPY3

    LDA #$03                    ; 3. parameter
    JSR .lB209                  ; get value 'd' (max. 15)
    ORA COPY3                   ; ora with 'a' value
    STA COPY3

    LDA #$04                    ; 4. parameter
    JSR .lB209                  ; get value 's' (max. 15)
    ASL                         ;
    ASL                         ;
    ASL                         ;
    ASL                         ; move into high nibble
    STA COPY3+1

    LDA #$05                    ; 5. parameter
    JSR .lB209                  ; get value 'r' (max. 15)
    ORA COPY3+1                 ; ora with 's' value
    STA COPY3+1

    JSR .lB1EE                  ; get 1. parameter (voice no. as offset into x (0,7,14)
    LDA COPY3
    STA $D405,X                 ; set register with 'ad' 
    LDA COPY3+1
    STA $D406,X                 ; set register with 'sr'
    RTS
---------------------------------

-   JMP .lB3F7

;
; procFilterfreq
;
procFilterfreq
    JSR .l95B0                  ; get a parameter, a= high, x= low
    STA COPY3
    AND #$F8
    BNE -
    TXA
    LDX #$05

-   ASL
    ROL COPY3
    DEX
    BNE -
    LSR
    LSR
    LSR
    LSR
    LSR
    STA $D415
    LDA COPY3
    STA $D416
    RTS

;
; procResonance
;
procResonance
    LDA #$01
    JSR .lB209                  ; get a value (max. 15)
    ASL
    ASL
    ASL
    ASL                         ; move into high nibble
    STA COPY3
    LDA $C303
    AND #$0F                    ; and with low nibble
    ORA COPY3                   ; ora with high nibble
    STA $C303
    STA $D417                   ; write to register
    RTS

;
; procFilter
;
procFilter
    LDA $C303                   ; load filter value
    LSR
    LSR
    LSR
    LSR                         ; move high nibble into low nibble
    STA $C303
    LDA #$04                    ; loop and parameter counter
    STA COPY3

; write voice filter to register bit 0-3
-   JSR .lB217                  ; get parameter, returns 0 or 1
    ROR
    ROL $C303
    DEC COPY3
    LDA COPY3                   ; next parameter
    BNE -                       ; loop 4 times

    LDA $C303
    STA $D417
    RTS

;
; procFiltertype
;
procFiltertype
    LDA $C304                   ; load filter mod value
    ASL
    ASL
    ASL
    ASL                         ; move into high nibble
    STA $C304
    LDA #$01                    ; mode and parameter counter
    STA COPY3

; write filter mode to register bit 4-7
-   JSR .lB217                  ; get parameter, returns 0 or 1
    ROR
    ROR $C304
    INC COPY3
    LDA COPY3
    CMP #$05
    BCC -                       ; loop 4 times

    LDA $C304
    STA $D418
    RTS

;
; procVolume
;
procVolume
    LDA $C304                   ; load value
    AND #$F0                    ; delete volume bit 0-3
    STA $C304
    LDA #$01
    JSR .lB209                  ; get volume (max.15)
    ORA $C304                   ; ora with bit 4-7
    STA $C304
    STA $D418
    RTS

;
; funcEnv3
;
funcEnv3
    LDX $D41C
    JMP .lA993                  ; LDA #$00
                                ; JMP PSHINT
;
; funcOsc3
;
funcOsc3
    LDX $D41B
    JMP .lA993

;
; funcFrequency
;
funcFrequency
    LDA #$01
    JSR .lB316                  ; get frequency, vcalculated by note input
    LDA COPY3                   ; high byte
    LDX COPY3+1                 ; low byte
    JMP PSHINT                  ; FLOAT & PUSH INTEGER (-32768 .. 32767)

;
; procSetscore
;
procSetscore
; voice
    JSR .lB1EE                  ; get 1. parameter (voice no. into y)
    STY INF1                    ; y = 0, 1 or 2
    LDA #$00
    STA $C308,Y                 ; stop voice
    STA $C31D
    STA $C31E

; frequency table pointer   -- low byte -- , -- high byte --
; voice 1                       $C30B            $C30E
; voice 2                       $C30C            $C30F
; voice 3                       $C30D            $C310

; frequency
    LDA #$02
    JSR .lB228                  ; get parameter 2 (frequency table)
    LDX INF1                    ; voice number 0, 1 or 2
    LDA COPY3
    STA $C30B,X                 ; table address low
    LDA COPY3+1
    STA $C30E,X                 ; table address high

; ads table pointer         -- low byte -- , -- high byte --
; voice 1                       $C311            $C314
; voice 2                       $C312            $C315
; voice 3                       $C313            $C316

; ads-value
    LDA #$03
    JSR .lB228                  ; get parameter 3 (ads table)
    LDX INF1                    ; voice number 0, 1 or 2
    LDA COPY3
    STA $C311,X                 ; table address low
    LDA COPY3+1
    STA $C314,X                 ; table address high

; r table pointer           -- low byte -- , -- high byte --
; voice 1                       $C317            $C31A
; voice 2                       $C318            $C31B
; voice 3                       $C319            $C31C

; r-value
    LDA #$04
    JSR .lB228                  ; get parameter 4 (r table)
    LDX INF1                    ; voice number 0, 1 or 2
    LDA COPY3
    STA $C317,X                 ; table address low
    LDA COPY3+1
    STA $C31A,X                 ; table address high
    RTS

;
; procPlayscore
;
procPlayscore
    LDA #$03                    ; 3 Voices
    STA INF1                    ; counter
    SEI

-   LDA INF1                    ; load voice-counter
    JSR .lB217                  ; get parameter, returns 0 or 1
    BEQ +                       ; branch if 0, nothing to do
    LDX INF1                    ; else load counter as x-pointer
    LDA $C308-1,X                 
    BNE +                       ; not 0, exit
    LDA $C30A,X                 ; freq-table low byte
    ORA $C30D,X                 ; freq-table high byte
    BEQ +                       ; check next voice

; ---- delete timer -------------
    LDA #$00
    STA $C322-1,X
    STA $C31F-1,X

    LDA #$02
    STA $C308-1,X               ; activate voice (start IRQ)

+   DEC INF1                    ; dec voice counter
    BNE -                       ; branch if more voice(es)
    CLI
    RTS

;
; procStopplay
;
procStopplay
    LDA #$03                    ; 3 voices
    STA INF1                    ; counter
    LDA #$00
    STA INF2

-   LDA INF1                    ; load voice-counter
    JSR .lB217                  ; get parameter, returns 0 or 1
    BEQ +
    LDX INF1
    LDA #$00
    STA $C308-1,X               ; clear interrupt flag voice x
    LDA $C2FF,X
    AND #$FE                    ; clear gate flag
    STA $C2FF,X
    LDY INF2
    STA $D404,Y                 ; stop play voce x in reg y

+   LDA INF2
    CLC
    ADC #$07                    ; next register
    STA INF2
    DEC INF1                    ; next voice
    BNE -
    RTS

;
; procWaitscore
;
procWaitscore
    LDA #$03                    ; voice and parameter counter
    STA INF2

-   LDA INF2
    JSR .lB217                  ; get parameter, returns 0 or 1
    BEQ +                       ; no wait on this voice
    LDX INF2
    LDA $C308-1,X               ; check interrupt flag
    BEQ +
    JMP .lA99D                  ; not analyzed, probably wait???
---------------------------------

+   DEC INF2
    BNE -
    JMP .lA99A                  ; not analyzed, probably wait???


; $B616
; Paddle
ptPaddles

    !pet $06,"paddle"
    !word phPaddle

    !by $00

phPaddle
    !by PROC
    !word procPaddle
    !by $05
    !by VALUE + INT
    !by REF + REAL
    !by REF + REAL
    !by REF + REAL
    !by REF + REAL
    !by ENDPRC


;
; Paddle
;
procPaddle
    LDA #$01
    JSR .lB209
    BEQ .lB6A2
    CMP #$02
    BEQ .lB63C
    BCS .lB6A2
    LDX #$40
    !by $2c
.lB63C
    LDX #$80
    LDA D1DDRA                  ; $DC02
    PHA
    SEI
    LDA #$C0
    STA D1DDRA                  ; $DC02
    STX COLM                    ; $DC00
    LDY #$00
.lB64D
    NOP
    DEY
    BNE .lB64D
    LDA $D419
    STA Q1
    LDA $D41A
    STA Q2
    LDA COLM                    ; $DC00
    STA Q3
    PLA
    STA D1DDRA                  ; $DC02
    TXA
    BMI .lB66C
    LDA D1PRB                   ; $DC01
    STA Q3
.lB66C
    CLI
    LDY Q1
    LDA #$02
    JSR .lB691
    LDY Q2
    LDA #$03
    JSR .lB691
    LDA Q3
    EOR #$FF
    LSR
    LSR
    PHA
    AND #$01
    TAY
    LDA #$04
    JSR .lB691
    PLA
    LSR
    AND #$01
    TAY
    LDA #$05
.lB691
    PHA
    LDA #$00
    JSR INTFP
    PLA
    JSR FNDPAR
    LDX COPY1
    LDY COPY1+1
    JMP STAC1
---------------------------------
.lB6A2  JMP .lB3F7
---------------------------------

; Joysticks
ptJoysticks

    !pet $08,"joystick"
    !word phJoystick
    !by $00


phJoystick
    !by PROC
    !word procJoystick
    !by $03
    !by VALUE + INT
    !by REF + REAL
    !by REF + REAL
    !by ENDPRC


;
; Joystick
;
procJoystick
    LDA #$01
    JSR .lB209
    BEQ .lB6A2
    CMP #$03
    BCS .lB6A2
    EOR #$03
    TAX
    SEI
    LDA COLM                    ; $DC00
    PHA
    LDY #$FF
    STY COLM                    ; $DC00
.lB6D1
    LDA $DBFF,X
    CMP $DBFF,X
    BNE .lB6D1
    TAY
    PLA
    STA COLM                    ; $DC00
    CLI
    TYA
    PHA
    AND #$0F
    TAX
    LDY .lB6F4,X
    LDA #$02
    JSR .lB691
    LDY #$00
    PLA
    AND #$10
    BNE .lB6F4
    INY
.lB6F4
    LDA #$03
    JMP .lB691
---------------------------------
.lB6F9
    !by $04,$02,$03,$00,$06,$08,$07,$00
    !by $05,$01,$00
---------------------------------

; Lightpen
ptLightpen
;
    !pet $06,"offset"
    !word phOffset              ; $B73C
;    
    !pet $05,"penon"
    !word phPenon               ; $B743
;    
    !pet $07,"readpen"
    !word phReadpen             ; $B748
;    
    !pet $06,"timeon"
    !word phTimeon              ; $B750
;    
    !pet $05,"delay"
    !word phDelay               ; $B756
;
    !pet $08,"accuracy"
    !word phAccuracy            ; $B75C
;
    !by $00

; $B73C
phOffset
    !by PROC
    !word procOffset
    !by $02
    !by VALUE + INT
    !by VALUE + INT
    !by ENDPRC

; $B743
phPenon
    !by FUNC
    !word funcPenon
    !by $00
    !by ENDFNC

; $B748
phReadpen
    !by PROC
    !word procReadpen
    !by $03
    !by REF + REAL
    !by REF + REAL
    !by REF + REAL
    !by ENDPRC

; $B750
phTimeon
    !by PROC
    !word procTimeon
    !by $01
    !by VALUE + INT
    !by ENDPRC

; $B756
phDelay
    !by PROC
    !word procDelay
    !by $01
    !by VALUE + INT 
    !by ENDPRC

; $B75C
phAccuracy
    !by PROC
    !word procAccuracy
    !by $02
    !by VALUE + INT
    !by VALUE + INT 
    !by ENDPRC


.lB763
    !by $00,$00,$00,$00,$FF,$FF,$7F,$FF 
    !by $7F,$FF,$7F,$FF,$FF,$7F,$4B,$00 
    !by $D3,$FF,$1E,$00,$0A,$00,$04,$00 
    !by $02,$00 

;
init_Lightpen
    LDA $C29A
    BEQ +
    LDY #$1A
;.lB784
-   LDA .lB763-1,Y
    STA $C324,Y
    DEY
    BNE -
    STY $C29A
    SEI
    LDA $D01A
    ORA #$08
    STA $D01A
    CLI
;.lB79A
+   RTS


;
; procReadpen
;
procReadpen
    JSR .lB7D7
    STY Q3
    LDA #$03
    JSR .lB691
    LDA Q3
    BNE +
    RTS
---------------------------------
;.lB7AA
+   LDA #$01
    JSR FNDPAR
    SEI
    LDA $C326
    LDY $C325
    CLI
    JSR +
    LDA #$02
    JSR FNDPAR
    SEI
    LDA $C328
    LDY $C327
    CLI
;.lB7C7
+   JSR INTFP
    LDX COPY1
    LDY COPY1+1
    JMP STAC1
---------------------------------

;
; funcPenon
;
funcPenon
    JSR .lB7D7
    JMP .lA998
---------------------------------
.lB7D7
    SEI
    LDX #$1A
    JSR .lBCC2
    LDX #$1A
    LDY #$04
    JSR .lBC8E
    CPX $C338
    BCC ++
    BNE +
    CMP $C337
    BCC ++
    BEQ ++
;.lB7F2
+   LDY #$00
    CLI
    RTS
---------------------------------
;.lB7F6
++  LDY #$01
    CLI
    RTS

;
; procOffset
;
procOffset
    JSR .l95B0
    STX $C333
    STA $C334
    JSR .l95AB
    STX $C335
    STA $C336
    RTS

;
; procAccuracy
;
procAccuracy
    JSR .l95B0
    STX $C33B
    STA $C33C
    JSR .l95AB
    STX $C33D
    STA $C33E
    RTS

;
; procTimeon
;
procTimeon
    JSR .l95B0
    STX $C337
    STA $C338
    RTS

;
; procDelay
;
procDelay
    JSR .l95B0
    STX $C339
    STA $C33A
    RTS

---------------------------------
.lB834
    RTS
---------------------------------

.lB835
    LDA RESOL
    BNE .lB834
    LDA BLNSW
    BNE .lB834
    LDA $D011
    AND #$20
    BEQ .lB834
    DEC $C279
    BPL .lB84E
    LDA #$03
    STA $C279
.lB84E
    JSR .lB932
    LDA COPY1
    PHA
    LDA COPY1+1
    PHA
    LDA COPY2
    PHA
    LDA COPY2+1
    PHA
    LDA COPY3
    PHA
    LDA COPY3+1
    PHA
    LDA $C279
    ASL
    ASL
    ADC $C279
    LDX #$00
    STX COPY2+1
    ASL
    ROL COPY2+1
    ASL
    ROL COPY2+1
    ASL
    ROL COPY2+1
    STA COPY1
    LDX COPY2+1
    STX COPY1+1
    ASL
    ROL COPY2+1
    ASL
    ROL COPY2+1
    ASL
    STA COPY2
    LDA COPY2+1
    ROL
    ORA #$E0
    STA COPY2+1
    LDX ROWPOS
    LDA WRPTB,X
    ROL
    TXA
    SBC #$01
    BPL .lB89C
    LDA #$00
    BEQ .lB8A2
.lB89C
    CMP #$16
    BCC .lB8A2
    LDA #$15
.lB8A2
    CLC
    ADC $C279
    STA COPY3
    ASL
    ASL
    ADC COPY3
    STA COPY3
    LDX #$00
    STX COPY3+1
    ASL
    ROL COPY3+1
    ASL
    ROL COPY3+1
    ASL
    ROL COPY3+1
    STA COPY3
    LDA COPY3+1
    ORA #$D8
    STA COPY3+1
    LDA COPY1+1
    ORA #$D8
    STA COPY1+1
    LDA $01
    AND #$F8
    TAX
    LDA $01
    LDY #$27
    JSR $C54D
    LDA COPY3+1
    AND #$03
    ORA HIBASE
    STA COPY3+1
    LDX #$00
    LDA $01
    PHA
    AND #$F8
    ORA #$03
    STA $01
.lB8E9
    LDA #$00
    STA COPY1+1
    TXA
    TAY
    LDA (COPY3),Y
    ASL
    ROL COPY1+1
    ASL
    ROL COPY1+1
    ASL
    ROL COPY1+1
    STA COPY1
    LDA COPY1+1
    ORA $C27F
    STA COPY1+1
    LDY #$07
.lB905
    LDA (COPY1),Y
    STA (COPY2),Y
    DEY
    BPL .lB905
    CLC
    LDA COPY2
    ADC #$08
    STA COPY2
    BCC .lB917
    INC COPY2+1
.lB917
    INX
    CPX #$28
    BNE .lB8E9
    PLA
    STA $01
    PLA
    STA COPY3+1
    PLA
    STA COPY3
    PLA
    STA COPY2+1
    PLA
    STA COPY2
    PLA
    STA COPY1+1
    PLA
    STA COPY1
    RTS
---------------------------------
.lB932
    LDA $C27D
    AND #$FD
    STA $C27D
    LDA $D018
    AND #$02
    ORA $C27D
    STA $C27D
    AND #$0E
    ASL
    ASL
    STA $C27F
    LDA $C27E
    AND #$01
    BEQ .lB960
    LDA $C27D
    AND #$0C
    CMP #$04
    BNE .lB960
    LDA #$C0
    BNE .lB968
.lB960
    LDA $C27E
    EOR #$03
    LSR
    ROR
    ROR
.lB968
    ORA $C27F
    STA $C27F
    RTS
---------------------------------
.lB96F
    STA $D019
    LDA $D01E
    STA $C268
    ORA $C26C
    STA $C26C
    LDA $D01F
    STA $C269
    ORA $C26E
    STA $C26E
    LDA $C2FC
    BEQ .lB99D
    LDX #$0E
.lB991
    ASL
    BCC .lB999
    PHA
    JSR .lB9C5
    PLA
.lB999
    DEX
    DEX
    BPL .lB991
.lB99D
    LDA PALNTS
    BEQ .lB9C4
    DEC $C2FE
    BNE .lB9C4
    LDA #$05
    STA $C2FE
    INC TIME+2
    BNE .lB9B6
    INC TIME+1
    BNE .lB9B6
    INC TIME
; sound part handling
.lB9B6
    LDA $C308                   ; check for sound to play
    ORA $C309
    ORA $C30A
    BEQ .lB9C4                  ; no, exit
    JMP .lBC44                  ; yes, jump to sound irq
---------------------------------
.lB9C4
    RTS
---------------------------------
.lB9C5
    LDA .l9961,X
    BIT $C26A
    BEQ .lB9E6
    BIT $C268
    BEQ .lB9E6
    TAY
    EOR $C2FF
    STA $C2FF
    TYA
    BIT $C266
    BEQ .lB9FF
    BIT $C269
    BNE .lB9F0
    BEQ .lB9F6
.lB9E6
    BIT $C266
    BEQ .lBA00
    BIT $C269
    BEQ .lBA00
.lB9F0
    EOR $C277
    STA $C277
.lB9F6
    LDA $C2FC
    AND .l9961+1,X
    STA $C2FC
.lB9FF
    RTS
---------------------------------
.lBA00
    LDA $C389,X
    BPL .lBA82
    INC $C38A,X
    BNE .lBA12
    INC $C389,X
    BMI .lBA12
    JSR .lB9F6
.lBA12
    CLC
    LDA $C379,X
    ADC $C2EC,X
    STA $C2EC,X
    LDA $C369,X
    ADC $C2DC,X
    STA $C2DC,X
    LDA $C359,X
    ADC $C2CC,X
    STA $C2CC,X
    TAY
    LDA $C349,X
    ADC $C2BC,X
    STA $C2BC,X
    LSR
    BEQ .lBA3D
    LDY #$FF
.lBA3D
    TYA
    STA $D000,X
    LDA $D010
    LDY $C2BC,X
    BEQ .lBA4E
    ORA .l9961,X
    BNE .lBA51
.lBA4E
    AND .l9961+1,X
.lBA51
    STA $D010
    CLC
    LDA $C37A,X
    ADC $C2ED,X
    STA $C2ED,X
    LDA $C36A,X
    ADC $C2DD,X
    STA $C2DD,X
    LDA $C35A,X
    ADC $C2CD,X
    STA $C2CD,X
    TAY
    LDA $C34A,X
    ADC $C2BD,X
    STA $C2BD,X
    BEQ .lBA7E
    LDY #$FF
.lBA7E
    TYA
    STA $D001,X
.lBA82
    LDA $C399,X
    BEQ .lBA8F
    LDA $C3A9,X
    BEQ .lBA93
    DEC $C3A9,X
.lBA8F
    RTS
---------------------------------
.lBA90
    JSR .lBACE
.lBA93
    LDY $C3AA,X
    LDA #$34
    JMP $C5AF
---------------------------------
.lBA9B
    TAY
    LDA $C25B,Y
    BPL .lBAA9
    LDA $D01C
    ORA .l9961,X
    BNE .lBAAF
.lBAA9
    LDA $D01C
    AND .l9961+1,X
.lBAAF
    STA $D01C
.lBAB2
    LDA $C3A9,X
    BNE .lBACB
    LDA .l9961+1,X
    AND $C2FC
    STA $C2FC
    LDA .l9961,X
    ORA $C261
    STA $C261
    BNE .lBACE
.lBACB
    DEC $C3A9,X
.lBACE
    LDA $C3AA,X
    CMP $C39A,X
.lBAD4
    BEQ .lBADA
    INC $C3AA,X
    RTS
---------------------------------
.lBADA
    LDA $C53D,X
    STA $C3AA,X
    RTS
---------------------------------
.lBAE1
    LDA .l9961,Y
    ORA $C267
    STA $C267
    STA $D015
    BNE .lBA90
.lBAEF
    LDA .l9961+1,Y
    AND $C267
    STA $C267
    STA $D015
    JMP .lBA90
---------------------------------
.lBAFE
    BEQ .lBB08
    LDA $D01D
    ORA .l9961,X
    BNE .lBB0E
.lBB08
    LDA $D01D
    AND .l9961+1,X
.lBB0E
    STA $D01D
    JMP .lBA90
---------------------------------
.lBB14
    BEQ .lBB1E
    LDA $D017
    ORA .l9961,X
    BNE .lBB24
.lBB1E
    LDA $D017
    AND .l9961+1,X
.lBB24
    STA $D017
    JMP .lBA90
---------------------------------
.lBB2A
    TYA
    LDY $C53E,X
    STA $D027,Y
    JMP .lBA90
---------------------------------
.lBB34
    LDA .l9961,Y
    BIT $C261
    BEQ .lBB4A
    TAY
    EOR $C261
    STA $C261
    TYA
    ORA $C2FC
    STA $C2FC
.lBB4A  JMP .lBA90

.lBB4D
    !by >.lBAE1-1,>.lBAEF-1,>.lBAFE-1,>.lBB14-1,>.lBB2A-1,>.lBB34-1,>.lBAB2-1
    !by <.lBAE1-1,<.lBAEF-1,<.lBAFE-1,<.lBB14-1,<.lBB2A-1,<.lBB34-1,<.lBAB2-1


; sound IRQ
.lBB5B
    LDA #$02                    ; oscillator counter 3..1 (as 2..0)
    STA INF1
    LDA #$0E
    STA INF2                    ; holds the frequency reg. (first oscillator 3: offset 14)

.lBB63  ;           (MAINLOOP)
    LDX INF1                    ; first: oscillator 3 (in .x)
    LDA $C308,X                 ; is there a voice for this oscillator? (get flag: 2, 1 or 0)
    BNE .lBB6D                  ; yes, not under work, or not finished? (2 or 1?)
    JMP .lBC28                  ; no, voice finished or not set (0), handle next oscillator

---------------------------------
.lBB6D  ;           Inner Loop (voice timer)
    LDA $C31F,X                 ; timwer finished? (is 0?)
    ORA $C322,X
    BEQ .lBB78                  ; yes

    JMP .lBC1A                  ; no, count down (16Bit-counter)
---------------------------------
; INF1 = 0, INF2 = 0
.lBB78
    LDA $C308,X                 ; get flag for oscillator (2..0), minus 1
    TAY
    DEY
    BNE .lBBB6

    LDY INF2                    ; yes, get oscillator nr. (0..2)
    LDA $C300,X                 ; clear gatebit (voice off), store in $C300..$C302
    AND #$FE
    STA $C300,X
    STA $D404,Y                 ; switch off now

; load R-table pointer, and increase table pointer
    CLC
    LDA $C317,X
    STA COPY1
    ADC #$02
    STA $C317,X
    LDA $C31A,X
    STA COPY1+1
    ADC #$00
    STA $C31A,X

; load timer with R-table value
    LDY #$00
    LDA (COPY1),Y
    STA $C322,X
    INY
    LDA (COPY1),Y
    STA $C31F,X

    LDA #$02                    ; voice available
    STA $C308,X                 ; set flag
    JMP .lBB6D                  ; timer count down
---------------------------------
; load frequncy table pointer, and increase table pointer
.lBBB6
    LDA $C30E,X
    STA COPY1+1
    LDA $C30B,X
    STA COPY1
    CLC
    ADC #$02                    ; increase pointer
    STA $C30B,X
    BCC .lBBCB
    INC $C30E,X

.lBBCB
    LDY #$01
    LDA (COPY1),Y
    DEY
    ORA (COPY1),Y
    BEQ .lBC37                  ; no frequency available
    LDA (COPY1),Y
    PHA
    INY
    LDA (COPY1),Y
    LDY INF2
    STA $D400,Y                 ; set frequency
    PLA
    STA $D401,Y                 ; set frewuency

; load ADS-table pointer, and increase table pointer
    CLC
    LDA $C311,X
    STA COPY1
    ADC #$02
    STA $C311,X
    LDA $C314,X
    STA COPY1+1
    ADC #$00
    STA $C314,X

; load timer with ADS-table value
    LDY #$00
    LDA (COPY1),Y
    STA $C322,X
    INY
    LDA (COPY1),Y
    STA $C31F,X

    LDA $C300,X                 ; switch voice on
    ORA #$01
    STA $C300,X
    LDY INF2
    STA $D404,Y
    LDA #$01                    ; set flag as play voice
    STA $C308,X
    JMP .lBB6D                  ; timer count down
---------------------------------
; decrease timer
.lBC1A
    SEC
    LDA $C31F,X
    SBC #$01
    STA $C31F,X
    BCS .lBC28
    DEC $C322,X

.lBC28
    SEC                         ; next oscillator
    LDA INF2                    ; from 14 to 7 to 0 to -7
    SBC #$07
    BMI .lBC36                  ; negative?: end
    STA INF2                    ; else: new oscillator
    DEC INF1                    ; decrease oscillator
    JMP .lBB63                  ; to inner loop
---------------------------------
.lBC36
    RTS                         ; finish
---------------------------------
.lBC37
    LDA #$00                    ; flag for stop play
    STA $C308,X
    STA $C30B,X
    STA $C30E,X
    BEQ .lBC28                  ; check next oscillator

; sound irq called from main irq
.lBC44
    LDA INF1
    PHA
    LDA INF2
    PHA
    LDA COPY1
    PHA
    LDA COPY1+1
    PHA
    JSR .lBB5B                  ; sound
    PLA
    STA COPY1+1
    PLA
    STA COPY1
    PLA
    STA INF2
    PLA
    STA INF1
    RTS
---------------------------------
.lBC60
    PHA
    SEC
    LDA $C325,X
    SBC $C325,Y
    STA Q5
    LDA $C326,X
    SBC $C326,Y
    STA Q5+1
    BPL .lBC81
    SEC
    LDA #$00
    SBC Q5
    STA Q5
    LDA #$00
    SBC Q5+1
    STA Q5+1
.lBC81
    PLA
    TAX
    LDA $C325,X
    CMP Q5
    LDA $C326,X
    SBC Q5+1
    RTS
---------------------------------
.lBC8E
    SEC
    LDA $C325,X
    SBC $C325,Y
    STA Q4
    LDA $C326,X
    SBC $C326,Y
    STA Q4+1
    LDA $C327,X
    SBC $C327,Y
    STA Q5
    BPL .lBCB6
    CLC
    LDA Q4+1
    ADC #$1A
    STA Q4+1
    LDA Q5
    ADC #$4F
    STA Q5
.lBCB6
    BEQ .lBCBD
    LDA #$FF
    LDX #$7F
    RTS
---------------------------------
.lBCBD
    LDA Q4
    LDX Q4+1
    RTS
---------------------------------
.lBCC2
    PHP
    SEI
    LDA TIME+2
    STA $C325,X
    LDA TIME+1
    STA $C326,X
    LDA TIME
    STA $C327,X
    PLP
    RTS
---------------------------------
.lBCD5
    STA $D019
    LDA Q4
    PHA
    LDA Q4+1
    PHA
    LDA Q5
    PHA
    LDA Q5+1
    PHA
    LDA #$00
    STA $C343
    STA $C345
    LDA $D013
    ASL
    STA $C342
    ROL $C343
    SEC
    LDA #$C7
    SBC $D014
    STA $C344
    BCS .lBD04
    DEC $C345
.lBD04
    SEC
    LDA $C342
    SBC $C333
    STA $C342
    LDA $C343
    SBC $C334
    STA $C343
    SEC
    LDA $C344
    SBC $C335
    STA $C344
    LDA $C345
    SBC $C336
    STA $C345
    LDX #$1D
    LDY #$07
    LDA #$16
    JSR .lBC60
    BCC .lBD40
    LDX #$1F
    LDY #$09
    LDA #$18
    JSR .lBC60
    BCS .lBD5D
.lBD40
    LDA $C342
    STA $C32C
    LDA $C343
    STA $C32D
    LDA $C344
    STA $C32E
    LDA $C345
    STA $C32F
    LDX #$0B
    JSR .lBCC2
.lBD5D
    LDX #$21
    JSR .lBCC2
    LDX #$21
    LDY #$0B
    JSR .lBC8E
    CMP $C339
    TXA
    SBC $C33A
    BCC .lBD9C
    LDA $C32C
    STA $C325
    LDA $C32D
    STA $C326
    LDA $C32E
    STA $C327
    LDA $C32F
    STA $C328
    LDA $C346
    STA $C329
    LDA $C347
    STA $C32A
    LDA $C348
    STA $C32B
.lBD9C
    PLA
    STA Q5+1
    PLA
    STA Q5
    PLA
    STA Q4+1
    PLA
    STA Q4
    RTS
---------------------------------
.lBDA9
    JSR .l95B0
    BNE .lBE12
    STX INF1
    STY INF2
    JSR .l9140
    LDX #$04
.lBDB7
    STY INF3,X
    DEX
    BNE .lBDB7
    JSR .lBE39
    CMP #$25
    BCS .lBE12
    CMP #$24
    BNE .lBDC9
    LDA #$00
.lBDC9
    CMP #$12
    BCC .lBDD3
    SED
    SBC #$12
    CLD
    ORA #$80
.lBDD3
    STA Q2+1
    JSR .lBE6F
    BCS .lBE2C
    JSR .lBE39
    CMP #$60
    BCS .lBE12
    STA Q2
    JSR .lBE6F
    BCS .lBE2C
    JSR .lBE39
    CMP #$60
    BCS .lBE12
    STA Q1+1
    JSR .lBE6F
    BCS .lBE2C
    JSR .lBE39
    CMP #$10
    BCS .lBE12
    STA Q1
    JSR .lBE6F
    BCS .lBE2C
    JSR .lBE39
    LDX #$00
    CMP #$60
    BEQ .lBE15
    INX
    CMP #$50
    BEQ .lBE15
.lBE12
    JMP .error5                 ; error "value out of range"
---------------------------------
.lBE15
    STX HZ50
    LDA D1CRA                   ; $DC0E
    CPX #$00
    BEQ .lBE22
    ORA #$80
    !by $2c
.lBE22
    AND #$7F
    STA D1CRA                   ; $DC0E
    JSR .lBE6F
    BCC .lBE12
.lBE2C
    LDX #$04
.lBE2E   
    LDA INF3,X
    STA D1T2H,X                 ; $dC07
    DEX
    BNE .lBE2E
    RTS
---------------------------------
.lBE37
    INC INF2
.lBE39
    JSR .lBE6F
    BCS .lBE12
    JSR .lBE76
    BCS .lBE37
    STA INF3
.lBE45
    INC INF2
    JSR .lBE6F
    BCS .lBE6C
    JSR .lBE76
    BCS .lBE62
    LDX #$04
.lBE53
    ASL INF3
    BCS .lBE12
    DEX
    BNE .lBE53
    ORA INF3
    STA INF3
    BCC .lBE45
.lBE60
    INC INF2
.lBE62
    JSR .lBE6F
    BCS .lBE6C
    JSR .lBE76
    BCS .lBE60
.lBE6C
    LDA INF3
    RTS
---------------------------------
.lBE6F
    LDY INF2
    CPY INF1
    LDA (COPY1),Y
    RTS
---------------------------------
.lBE76
    TAX
    SEC
    SBC #$30
    CMP #$0A
    RTS
---------------------------------
.lBE7D
    LDA #$0C
    JSR EXCGST
    LDY #$00
    LDA D1TODH                  ; $DC0B
    BPL .lBE95
    AND #$7F
    CMP #$12
    BCS .lBE9A
    SED
    ADC #$12
    CLD
    BNE .lBE9A
.lBE95
    CMP #$12
    BNE .lBE9A
    TYA
.lBE9A
    LDX #$3A
    CMP #$10
    BCS .lBEA9
    STA T1                      ; temporary 1
    LDA #$20
    JSR .lBED3
    BNE .lBEAC
.lBEA9
    JSR .lBECB
.lBEAC
    LDA D1TODM                  ; $DC0A
    JSR .lBECB
    LDX #$2E
    LDA D1TODS                  ; $DC09
    JSR .lBECB
    LDA D1TOD1                  ; $DC08
    ORA #$30
    STA (COPY2),Y
    INY
    LDA #$00
    STA (COPY2),Y
    TYA
    INY
    STA (COPY2),Y
    RTS
---------------------------------
.lBECB
    STA T1                      ; temporary 1
    LSR
    LSR
    LSR
    LSR
    ORA #$30
.lBED3
    STA (COPY2),Y
    INY
    LDA T1                      ; temporary 1
    AND #$0F
    ORA #$30
    STA (COPY2),Y
    INY
    TXA
    STA (COPY2),Y
    INY
    RTS
---------------------------------
.lBEE4
    STX T1                      ; temporary 1
    TAX
    JSR .l8ED0
    STA $C24D
    LDA CSTAT                   ; status of comal program
    PHA
    LDA #$05
    STA CSTAT                   ; status of comal program
.lBEF6
    LDA $0043,Y
    PHA
    INY
    CPY #$08
    BNE .lBEF6
    TXA
    LDX T1                      ; temporary 1
    STX COPY3
    JSR COPEN
    LDX #$FE
    JSR CCKOUT
    JSR CRLF
    LDA #$00
    STA COPY2
    LDX #$00
    LDA #$04
    STX COPY1
    STA COPY1+1
.lBF1B
    LDA #$00
    STA Q5
    STA Q5+1
    STA COPY2+1
    STA COPY3+1
.lBF25
    LDY #$00
    LDA (COPY1),Y
    PHA
    EOR #$80
    STA (COPY1),Y
    EOR #$80
    TAY
    LDX COPY3
    BEQ .lBF4B
    LDX ROWPOS
    CPX COPY2
    BNE .lBF4B
    LDA COLPOS
    CMP #$28
    BCC .lBF43
    SBC #$28
.lBF43
    CMP COPY2+1
    BNE .lBF4B
    TYA
    ORA #$80
    TAY
.lBF4B
    JSR .lBF80
    LDY #$00
    PLA
    STA (COPY1),Y
    INC COPY1
    BNE .lBF59
    INC COPY1+1
.lBF59
    INC COPY2+1
    LDA COPY2+1
    CMP #$28
    BNE .lBF25
    JSR CRLF
    JSR .lAE84
    BCS .lBF71
    INC COPY2
    LDA COPY2
    CMP #$19
    BNE .lBF1B
.lBF71
    LDX #$07
.lBF73
    PLA
    STA Q5,X
    DEX
    BPL .lBF73
    PLA
    STA CSTAT                   ; status of comal program
    JMP .lAE77
---------------------------------
.lBF80
    LDA Q5+1
    BEQ .lBF98
    LDA Q5
    BNE .lBF98
    CPY #$22
    BEQ .lBFB7
    TYA
    BPL .lBFB0
    JSR .lBFD6
    TYA
    AND #$9F
    TAY
    BCC .lBFBD
.lBF98
    TYA
    BPL .lBFA5
    LDA Q5
    BNE .lBFB0
    INC Q5
    LDA #$12
    BNE .lBFAD
.lBFA5
    LDA Q5
    BEQ .lBFB0
    DEC Q5
    LDA #$92
.lBFAD
    JSR .lBFBE
.lBFB0
    JSR .lBFD6
    CPY #$22
    BNE .lBFBD
.lBFB7
    LDA Q5+1
    EOR #$01
    STA Q5+1
.lBFBD
    TYA
.lBFBE
    INC COPY3+1
    CMP #$20
    BEQ .lBFE0
    PHA
    DEC COPY3+1
    BEQ .lBFD2
.lBFC9
    LDA #$20
    JSR CWRT
    DEC COPY3+1
    BNE .lBFC9
.lBFD2
    PLA
    JMP CWRT
---------------------------------
.lBFD6
    TYA
    AND #$7F
    CMP #$20
    BCS .lBFE1
    ADC #$40
.lBFDF
    TAY
.lBFE0
    RTS
---------------------------------
.lBFE1
    CMP #$40
    BCC .lBFDF
    CMP #$60
    BCS .lBFED
    ORA #$80
    BCC .lBFDF
.lBFED
    ADC #$3F
    BCC .lBFDF
    JSR $2020
    JSR $2020
P4_BFF7                             ; called from p1_system
    JMP .lBEE4
---------------------------------
P4_BFFA                             ; called from p1_system
    JMP .lBDA9
---------------------------------
P4_BFFD                             ; called from p1_system
    JMP .lBE7D
---------------------------------
.end4
!fill $c000-.end4,$cc
}

