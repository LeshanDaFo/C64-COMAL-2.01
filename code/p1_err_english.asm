; ###############################################################
; #                                                             #
; #  p1_err+english.asm for                                     #
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

.err_english
!word .errmsg2 ;LB25E
    !pet $00,$0C,"report error"
    !pet $01,$0E,"argument error"
    !pet $02,$08,"overflow"
    !pet $03,$10,"division by zero"
    !pet $04,$0F,"substring error"
    !pet $05,$12,"value out of range"
    !pet $06,$08,"step = 0"
    !pet $07,$0D,"illegal bound"
    !pet $08,$14,"error in print using"
 
    !pet $0A,$12,"index out of range"
    !pet $0B,$11,"invalid file name"

    !pet $0D,$0C,"verify error"
    !pet $0E,$0F,"program too big"
    !pet $0F,$0E,"bad comal code"
    !pet $10,$16,"not comal program file"
    !pet $11,$1F,"program for other comal version"
    !pet $12,$16,"unknown file attribute"

    !pet $1E,$0D,"invalid color"
    !pet $1F,$10,"invalid boundary"
    !pet $20,$14,"invalid shape number"
    !pet $21,$17,"shape length must be 64"
    !pet $22,$15,"invalid sprite number"
    !pet $23,$0D,"invalid voice"
    !pet $24,$0C,"invalid note"

    !pet $33,$0C,"system error"
    !pet $34,$0D,"out of memory"
    !pet $35,$1C,"wrong dimension in parameter"
    !pet $36,$1A,"parameter must be an array"
    !pet $37,$0F,"too few indices"
    !pet $38,$16,"cannot assign variable"
    !pet $39,$0F,"not implemented"
    !pet $3A,$10,"con not possible"
    !pet $3B,$19,"program has been modified"
    !pet $3C,$10,"too many indices"
    !pet $3D,$1B,"function value not returned"
    !pet $3E,$0E,"not a variable"
 
    !pet $43,$24,"parameter lists differ or not closed"
    !pet $44,$1B,"no closed proc/func in file"
    !pet $45,$12,"too few parameters"
    !pet $46,$10,"wrong index type"
    !pet $47,$1C,"parameter must be a variable"
    !pet $48,$14,"wrong parameter type"
    !pet $49,$0C,"non-ram load"
    !pet $4A,$1D,"checksum error in object file"
    !pet $4B,$18,"memory area is protected"
    !pet $4C,$12,"too many libraries"
    !pet $4D,$12,"not an object file"
    !pet $4E,$10,"no matching when"
    !pet $4F,$13,"too many parameters"

    !pet $65,$0C,"syntax error"
    !pet $66,$0A,"wrong type"
    !pet $67,$25,"statement too long or too complicated"
    !pet $68,$1B,"statement only, not command"

    !pet $6A,$1C,"line number range: 1 to 9999"

    !pet $6C,$21,"procedure/function does not exist"
    !pet $6D,$25,"structured statement not allowed here"
    !pet $6E,$0F,"not a statement"
    !pet $6F,$1D,"line numbers will exceed 9999"
    !pet $70,$13,"source protected!!!"
    !pet $71,$11,"illegal character"
    !pet $72,$11,"error in constant"
    !pet $73,$11,"error in exponent"

    !pet $C8,$0B,"end of data"
    !pet $C9,$0B,"end of file"
    !pet $CA,$11,"file already open"
    !pet $CB,$0D,"file not open"
    !pet $CC,$0E,"not input file"
    !pet $CD,$0F,"not output file"
    !pet $CE,$19,"numeric constant expected"
    !pet $CF,$16,"not random access file"
    !pet $D0,$12,"device not present"
    !pet $D1,$13,"too many files open"
    !pet $D2,$0A,"read error"
    !pet $D3,$0B,"write error"
    !pet $D4,$13,"short block on tape"
    !pet $D5,$12,"long block on tape"
    !pet $D6,$16,"checksum error on tape"
    !pet $D7,$0B,"end of tape"
    !pet $D8,$0E,"file not found"
    !pet $D9,$0E,"unknown device"
    !pet $DA,$11,"illegal operation"
    !pet $DB,$09,"i/o break"

    !pet $E6,$08,$0D,"end at "
    !pet $E7,$09,$0D,"stop at "
    !pet $E8,$0E," bytes free.",$0D,$0D
    !pet $E9,$05,"error"

    !pet $F2,$03,"at "
    !pet $F3,$11,"prog  data  free",$0D
    !pet $F4,$16,"the program stopped at"
    !pet $F5,$12,"which is called at"
    !pet $F6,$06,"within"

    !by $FF
;LB25E
.errmsg2
    !pet $01,$F9,$01,$FA
    !pet $06,$61," or ",$5f
    !pet $0D,"unknown label"
    !pet $14,"name already defined"
    !pet $0B,"not a label"
    !pet $16,"string not dimensioned"
    !pet $0D,"not a package"
    !pet $0A,"expression"
    !pet $08,"variable"
    !pet $07,"operand"
    !pet $0D,"variable name"
    !pet $12,"num. variable name"
    !pet $12,"numeric expression"
    !pet $11,"string expression"
    !pet $06,$C6," or ",$60
    !pet $06,$61," or ",$CA
    !pet $06,$C6," or ",$C7
    !pet $06,$CB," or ",$CD
    !pet $04,"mode"
    !pet $08,"constant"
    !pet $0B,"line number"
    !pet $0F,"binary constant"
    !pet $05,"label"
   
    !by $05,$71,$2F,$72,$2F,$75
    !by $01,$75
    !by $01,$76
    !by $01,$F0
    !by $01,$F5
    !by $01,$B0
    !by $01,$77
    !by $05,$B2,$2F,$93,$2F,$74
    !by $05,$B2,$2F,$93,$2F,$74
    !by $01,$74
    
    !pet $0D," not expected"
    !pet $08," missing"
    !pet $0F," expected, not "
    !pet $0D,"real constant"
    !pet $10,"integer constant"
    !pet $0F,"string constant"
    !pet $04,"name"
    !pet $0C,"integer name"
    !pet $0B,"string name"
    !pet $22," not allowed in control structures"
    !pet $09," without "

    !by $01,$F4
    !by $01,$B2 
    
    !pet $22,$E2," allowed in closed proc/func only"
    !pet $0E,"wrong type of "
    !pet $0E,"wrong name in "
    !pet $06,$68," or ",$CE
    !pet $0C,"hex constant"
    !pet $09,"illegal ",$80
    !pet $1E,"unknown statement or procedure"
    !pet $0F,"not a procedure"
    !pet $10,"unknown variable"
    !pet $0A,"wrong type"
    !pet $13,"wrong function type"
    !pet $1B,"not an array nor a function"
    !pet $15,"not a simple variable"
    !pet $19,"unknown array or function"
    !pet $10,"wrong array type"
    !pet $0C,"import error"
    !pet $0F,"unknown package"