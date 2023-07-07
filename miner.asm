;----------------------------------------------------------------;
;                                                                ;
; Central Cavern (teleport: 6)                                   ;
;                                                                ;
;----------------------------------------------------------------;

; The first 512 bytes are the attributes that define the layout of the cavern.

CentralCavernData                 DH "1600000000000000000000050000000005000000000000000000000000000016"
                                  DH "1600000000000000000000000000000000000000000000000000000000000016"
                                  DH "1600000000000000000000000000000000000000000000000000000000000016"
                                  DH "1600000000000000000000000000000000000000000000000000000000000016"
                                  DH "1600000000000000000000000000000000000000000000440000004400000016"
                                  DH "1642424242424242424242424242020202024202020202424242424242424216"
                                  DH "1600000000000000000000000000000000000000000000000000000000000016"
                                  DH "1642424200000000000000000000000000000000000000000000000000000016"
                                  DH "1600000000000000000000000000000000161616004400000000000000000016"
                                  DH "1642424242000000040404040404040404040404040404040404040400000016"
                                  DH "1600000000000000000000000000000000000000000000000000000000424216"
                                  DH "1600000000000000000000000000000000000000000000000000000000000016"
                                  DH "1600000000000000000000004400000000000000161616020202020242424216"
                                  DH "1600000000424242424242424242424242424242000000000000000000000016"
                                  DH "1600000000000000000000000000000000000000000000000000000000000016"
                                  DH "1642424242424242424242424242424242424242424242424242424242424216"

; The next 32 bytes specify the cavern name.

                                  DEFM "         Central Cavern         "  ; Cavern name.

                                  DB $00                                   ; Attribute.
                                  DG --------                              ; Background.
                                  DG --------
                                  DG --------
                                  DG --------
                                  DG --------
                                  DG --------
                                  DG --------
                                  DG --------

                                  DB $42                                   ; Attribute.
                                  DG ########                              ; Floor.
                                  DG ########
                                  DG ##-##-##
                                  DG -##-###-
                                  DG ##---#-#
                                  DG -#------
                                  DG --------
                                  DG --------


                                  DB $02                                   ; Attribute.
                                  DG ########                              ; Crumbling floor.
                                  DG ##-##-##
                                  DG #-#--#-#
                                  DG --#--#--
                                  DG -#-#--#-
                                  DG --#-----
                                  DG ----#---
                                  DG --------

                                  DB $16                                   ; Attribute.
                                  DG --#---#-                              ; Wall.
                                  DG ########
                                  DG #---#---
                                  DG ########
                                  DG --#---#-
                                  DG ########
                                  DG #---#---
                                  DG ########

                                  DB $04                                   ; Attribute.
                                  DG ####----                              ; Conveyor.
                                  DG -##--##-
                                  DG ####----
                                  DG -##--##-
                                  DG --------
                                  DG #--##--#
                                  DG ########
                                  DG --------

                                  DB $44                                   ; Attribute.
                                  DG -#---#--                              ; Nasty 1.
                                  DG --#-#---
                                  DG #--#-#--
                                  DG -#-#---#
                                  DG --##-#-#
                                  DG ##-#-##-
                                  DG -#-##---
                                  DG ---#----

                                  DB $05                                   ; Attribute.
                                  DG ########                              ; Nasty 2.
                                  DG #######-
                                  DG -######-
                                  DG -#####--
                                  DG -#--##--
                                  DG -#--##--
                                  DG ----#---
                                  DG ----#---

                                  DB $00                                   ; Attribute.
                                  DG --------                              ; Extra (unused).
                                  DG --------
                                  DG --------
                                  DG --------
                                  DG --------
                                  DG --------
                                  DG --------
                                  DG --------

; The next seven bytes specify Miner Willy's initial location and appearance in the cavern.

                                  DEFB 208                                 ; Pixel y-coordinate * 2.
                                  DEFB 0                                   ; Animation frame.
                                  DEFB 0                                   ; Direction and movement flags: facing right.
                                  DEFB 0                                   ; Airborne status indicator.
                                  DEFW 23970                               ; Location in the attribute buffer at 23970 : (13,2).
                                  DEFB 0                                   ; Jumping animation counter.

; The next four bytes specify the direction, location and length of the conveyor.

                                  DEFB 0                                   ; Direction (left).
                                  DEFW 30760                               ; Location in the screen buffer : (9,8).
                                  DEFB 20                                  ; Length.

; The next byte specifies the border colour.

                                  DEFB 2                                   ; Border colour.

                                  DEFB 0                                   ; Unused.

; The next 25 bytes specify the location and initial colour of the items in the cavern.

                                  DEFB 3                                   ; Item 1 at (0,9).
                                  DEFW 23561
                                  DEFB 96
                                  DEFB 255
                                  DEFB 4                                   ; Item 2 at (0,29).
                                  DEFW 23581
                                  DEFB 96
                                  DEFB 255
                                  DEFB 5                                   ; Item 3 at (1,16).
                                  DEFW 23600
                                  DEFB 96
                                  DEFB 255
                                  DEFB 6                                   ; Item 4 at (4,24).
                                  DEFW 23704
                                  DEFB 96
                                  DEFB 255
                                  DEFB 3                                   ; Item 5 at (6,30).
                                  DEFW 23774
                                  DEFB 96
                                  DEFB 255
                                  DEFB 255                                 ; Terminator.

; The next 37 bytes define the portal graphic and its location.

                                  DB $0E                                   ; Attribute.
                                  DG ################                      ; Portal Graphic data.
                                  DG #--#--#--#--#--#
                                  DG #-##-##-##-##-##
                                  DG ################
                                  DG #--#--#--#--#--#
                                  DG #-##-##-##-##-##
                                  DG ################
                                  DG #--#--#--#--#--#
                                  DG #-##-##-##-##-##
                                  DG ################
                                  DG #--#--#--#--#--#
                                  DG #-##-##-##-##-##
                                  DG ################
                                  DG #--#--#--#--#--#
                                  DG #-##-##-##-##-##
                                  DG ################

                                  DW $5DBD                                 ; Location in the attribute buffer at 23552: (13,29).
                                  DW $68BD                                 ; Location in the screen buffer at 24576: (13,29).

; The next eight bytes define the item graphic.

                                  DG --##----                              ; Item graphic data.
                                  DG -#--#---
                                  DG #---#---
                                  DG #--#----
                                  DG -##-#---
                                  DG -----#--
                                  DG ----#-#-
                                  DG -----#--

; The next byte specifies the initial air supply in the cavern.

                                  DEFB 63                                  ; Air.

; The next byte initialises the game clock.

                                  DEFB 252                                 ; Game clock.

; The next 28 bytes define the horizontal guardians.

                                  DEFB 70                                  ; Horizontal guardian 1:
                                  DEFW 23784                               ; y = 7, initial x = 8, 8 <= x <= 15, speed = normal.
                                  DEFB 96
                                  DEFB 0
                                  DEFB 232
                                  DEFB 239
                                  DEFB 255,0,0,0,0,0,0                     ; Horizontal guardian 2 (unused).
                                  DEFB 0,0,0,0,0,0,0                       ; Horizontal guardian 3 (unused).
                                  DEFB 0,0,0,0,0,0,0                       ; Horizontal guardian 4 (unused).
                                  DEFB 255                                 ; Terminator.

; The next two bytes are not used.

                                  DEFB 0,0                                 ; Unused.

; The next byte indicates that there are no vertical guardians in this cavern.

                                  DEFB 255                                 ; Terminator.

; The next two bytes are unused.

                                  DEFB 0,0                                 ; Unused.

; The next 32 bytes define the swordfish graphic that appears in The Final Barrier when the game is completed.

SwordfishGraphicData              DEFB 2,160,5,67,31,228,115,255           ; Swordfish graphic data.
                                  DEFB 242,248,31,63,255,228,63,195
                                  DEFB 0,0,1,0,57,252,111,2
                                  DEFB 81,1,127,254,57,252,1,0

; The next 256 bytes define the guardian graphics.

                                  DG ---#####--#-----                      ; Guardian graphic data.
                                  DG --###--####-----
                                  DG ---##--####-----
                                  DG ----####--#-----
                                  DG #--#####--------
                                  DG -#-######-------
                                  DG ##########------
                                  DG -#-####---------
                                  DG #--#######------
                                  DG ---######-------
                                  DG ----###---------
                                  DG ---#####--------
                                  DG #-###-###-#-----
                                  DG -###---###------
                                  DG --#-----#-------
                                  DG ---#---#--------

                                  DG -----#####---#--
                                  DG ----###--#####--
                                  DG -----##--#####--
                                  DG --#---####---#--
                                  DG ---#-#####------
                                  DG ---#-######-----
                                  DG --##########----
                                  DG ---#-#######----
                                  DG ---#-#######----
                                  DG --#--######-----
                                  DG ------###-------
                                  DG ------###-------
                                  DG -----##-##------
                                  DG -----##-##------
                                  DG ---###---###----
                                  DG -----##-##------

                                  DG -------#####--#-
                                  DG ------###--####-
                                  DG -------##--####-
                                  DG --------####--#-
                                  DG ----#--#####----
                                  DG -----#-######---
                                  DG ----##########--
                                  DG -----#-####-----
                                  DG ----#--#######--
                                  DG -------######---
                                  DG --------###-----
                                  DG --------###-----
                                  DG --------###-----
                                  DG --------###-----
                                  DG --------###-----
                                  DG -------#####----

                                  DG ---------#####-#
                                  DG --------###--###
                                  DG ---------##--###
                                  DG ----------####-#
                                  DG ---------#####--
                                  DG ---------#######
                                  DG ------########--
                                  DG ---------####---
                                  DG ---------#####--
                                  DG ---------#######
                                  DG ----------###---
                                  DG ----------###---
                                  DG ---------##-##--
                                  DG ---------##-##--
                                  DG -------###---###
                                  DG ---------##-##--

                                  DG #-#####---------
                                  DG ###--###--------
                                  DG ###--##---------
                                  DG #-####----------
                                  DG --#####---------
                                  DG #######---------
                                  DG --########------
                                  DG ---####---------
                                  DG --#####---------
                                  DG #######---------
                                  DG ---###----------
                                  DG ---###----------
                                  DG --##-##---------
                                  DG --##-##---------
                                  DG ###---###-------
                                  DG --##-##---------

                                  DG -#--#####-------
                                  DG -####--###------
                                  DG -####--##-------
                                  DG -#--####--------
                                  DG ----#####--#----
                                  DG ---######-#-----
                                  DG --##########----
                                  DG -----####-#-----
                                  DG --#######--#----
                                  DG ---######-------
                                  DG -----###--------
                                  DG -----###--------
                                  DG -----###--------
                                  DG -----###--------
                                  DG -----###--------
                                  DG ----#####-------

                                  DG --#---#####-----
                                  DG --#####--###----
                                  DG --#####--##-----
                                  DG --#---####---#--
                                  DG ------#####-#---
                                  DG -----######-#---
                                  DG ----##########--
                                  DG ----#######-#---
                                  DG ----#######-#---
                                  DG -----######--#--
                                  DG -------###------
                                  DG -------###------
                                  DG ------##-##-----
                                  DG ------##-##-----
                                  DG ----###---###---
                                  DG ------##-##-----

                                  DG -----#--#####---
                                  DG -----####--###--
                                  DG -----####--##---
                                  DG -----#--####----
                                  DG --------#####--#
                                  DG -------######-#-
                                  DG ------##########
                                  DG ---------####-#-
                                  DG ------#######--#
                                  DG -------######---
                                  DG ---------###----
                                  DG --------#####---
                                  DG -----#-###-###-#
                                  DG ------###---###-
                                  DG -------#-----#--
                                  DG --------#---#---

;------------------------------------------------------------------------------------------------------------------------------------------;

;----------------------------------------------------------------;
;                                                                ;
; The Cold Room (teleport: 16)                                   ;
;                                                                ;
;----------------------------------------------------------------;

; The first 512 bytes are the attributes that define the layout of the cavern.

TheColdRoomData                   DH "1608080808080808080808080808080808080816161616161616161616161616"
                                  DH "1608080808080808080808080808080808080808080808080808080808080D16"
                                  DH "1608080808080808080808080808080808080808080808080808080808080816"
                                  DH "1608080808080808080808080808080808080808080B0B0B4B08080808080816"
                                  DH "1608080808080808080808080808080808080808080808080808080808080816"
                                  DH "164B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B080808080808080816080816"
                                  DH "1608080808080808080808080808080808080808084B4B4B4B160B0B16080816"
                                  DH "164B0B0B0B0B0B08080808080808080808080808080808080816080816080816"
                                  DH "16080808080808080808080808080808080808080808080808160B0B16080816"
                                  DH "1608080808080808084B4B4B4B4B4B4B080808080808080808160B0B16080816"
                                  DH "160808080808080808080808080808080808080B0B0B0B0808160B0B16080816"
                                  DH "1608080E0E0E0E080808080808080808080808080808080808160B0B16080816"
                                  DH "16080808080808080808080808084B4B4B4B08080808080808160B0B16080816"
                                  DH "16080808080808080B0B0B0B0808080808080808080808080808080808080816"
                                  DH "1608080808080808080808080808080808080808080808080808080808080816"
                                  DH "164B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B16"

; The next 32 bytes specify the cavern name.

                                  DEFM "          The Cold Room         "  ; Cavern name.

; The next 72 bytes contain the attributes and graphic data for the tiles used to build the cavern.

                                  DB $08                                   ; Attribute.
                                  DG --------                              ; Background.
                                  DG --------
                                  DG --------
                                  DG --------
                                  DG --------
                                  DG --------
                                  DG --------
                                  DG --------

                                  DB $4B                                   ; Attribute.
                                  DG ########                              ; Floor.
                                  DG ########
                                  DG ##-##-##
                                  DG -##-###-
                                  DG ##---#-#
                                  DG -#------
                                  DG --------
                                  DG --------

                                  DB $0B                                   ; Attribute.
                                  DG ########                              ; Crumbling floor.
                                  DG ##-##-##
                                  DG #-#--#-#
                                  DG --#--#--
                                  DG -#-#--#-
                                  DG --#-----
                                  DG ----#---
                                  DG --------

                                  DB $16                                   ; Attribute.
                                  DG --#---#-                              ; Wall.
                                  DG ########
                                  DG #---#---
                                  DG ########
                                  DG --#---#-
                                  DG ########
                                  DG #---#---
                                  DG ########

                                  DB $0E                                   ; Attribute.
                                  DG ####----                              ; Conveyor.
                                  DG -##--##-
                                  DG ####----
                                  DG -##--##-
                                  DG --------
                                  DG #--##--#
                                  DG ########
                                  DG --------

                                  DB $0C                                   ; Attribute.
                                  DG -#---#--                              ; Nasty 1 (unused).
                                  DG --#-#---
                                  DG #--#-#--
                                  DG -#-#---#
                                  DG --##-#-#
                                  DG ##-#-##-
                                  DG -#-##---
                                  DG ---#----

                                  DB $0D                                   ; Attribute.
                                  DG ########                              ; Nasty 2.
                                  DG #######-
                                  DG -#-####-
                                  DG -##-##--
                                  DG -#--##--
                                  DG -#--##--
                                  DG ----#---
                                  DG ----#---

                                  DB $00                                   ; Attribute.
                                  DG --------                              ; Extra (unused).
                                  DG --------
                                  DG --------
                                  DG --------
                                  DG --------
                                  DG --------
                                  DG --------
                                  DG --------

; The next seven bytes specify Miner Willy's initial location and appearance in the cavern.

                                  DEFB 208                                 ; Pixel y-coordinate * 2.
                                  DEFB 0                                   ; Animation frame.
                                  DEFB 0                                   ; Direction and movement flags: facing right.
                                  DEFB 0                                   ; Airborne status indicator.
                                  DEFW 23970                               ; Location in the attribute buffer at 23552: (13,2).
                                  DEFB 0                                   ; Jumping animation counter.

; The next four bytes specify the direction, location and length of the conveyor.

                                  DEFB 1                                   ; Direction (right).
                                  DEFW 30819                               ; Location in the screen buffer at 28672: (11,3).
                                  DEFB 4                                   ; Length.

; The next byte specifies the border colour.

                                  DEFB 2                                   ; Border colour.

; The next byte is not used.

                                  DEFB 0                                   ; Unused.

; The next 25 bytes specify the location and initial colour of the items in the cavern.

                                  DEFB 11                                  ; Item 1 at (1,7).
                                  DEFW 23591
                                  DEFB 96
                                  DEFB 255
                                  DEFB 12                                  ; Item 2 at (1,24).
                                  DEFW 23608
                                  DEFB 96
                                  DEFB 255
                                  DEFB 13                                  ; Item 3 at (7,26).
                                  DEFW 23802
                                  DEFB 96
                                  DEFB 255
                                  DEFB 14                                  ; Item 4 at (9,3).
                                  DEFW 23843
                                  DEFB 104
                                  DEFB 255
                                  DEFB 11                                  ; Item 5 at (12,19).
                                  DEFW 23955
                                  DEFB 104
                                  DEFB 255
                                  DEFB 255                                 ; Terminator.

; The next 37 bytes define the portal graphic and its location.

                                  DB $53                                   ; Attribute.
                                  DG ################                      ; Portal Graphic data.
                                  DG #--#--#--#--#--#
                                  DG #--#--#--#--#--#
                                  DG #--#--#--#--#--#
                                  DG #--#--#--#--#--#
                                  DG #--#--#--#--#--#
                                  DG #--#--#--#--#--#
                                  DG #--#--#--#--#--#
                                  DG #--#--#--#--#--#
                                  DG #--#--#--#--#--#
                                  DG #--#--#--#--#--#
                                  DG #--#--#--#--#--#
                                  DG #--#--#--#--#--#
                                  DG #--#--#--#--#--#
                                  DG #--#--#--#--#--#
                                  DG ################

                                  DW $5DBD                                 ; Location in the attribute buffer at 23552: (13,29).
                                  DW $68BD                                 ; Location in the screen buffer at 24576: (13,29).

; The next eight bytes define the item graphic.

                                  DG -#-#----                              ; Item graphic data.
                                  DG #-#-#---
                                  DG -#-#-#--
                                  DG #-#-#---
                                  DG -#-#-#--
                                  DG --#-##--
                                  DG ------#-
                                  DG -------#


; The next byte specifies the initial air supply in the cavern.

                                  DEFB 63                                  ; Air.

; The next byte initialises the game clock.

                                  DEFB 252                                 ; Game clock.

; The next 28 bytes define the horizontal guardians.

                                  DEFB 14                                  ; Horizontal guardian 1:
                                  DEFW 23666                               ; y = 3, initial x = 18, 1 <= x <= 18, speed = normal.
                                  DEFB 96                                  ;
                                  DEFB 7                                   ;
                                  DEFB 97                                  ;
                                  DEFB 114                                 ;
                                  DEFB 13                                  ; Horizontal guardian 2:
                                  DEFW 23997                               ; y = 13, initial x = 29, 12 <= x <= 29, speed = normal.
                                  DEFB 104                                 ;
                                  DEFB 7                                   ;
                                  DEFB 172                                 ;
                                  DEFB 189                                 ;
                                  DEFB 255,0,0,0,0,0,0                     ; Horizontal guardian 3 (unused).
                                  DEFB 0,0,0,0,0,0,0                       ; Horizontal guardian 4 (unused).
                                  DEFB 255                                 ; Terminator.

; The next two bytes are not used.

                                  DEFB 0,0                                 ; Unused.

; The next byte indicates that there are no vertical guardians in this cavern.

                                  DEFB 255                                 ; Terminator.

; The next two bytes are unused.

                                  DEFB 0,0                                 ; Unused.

; The next 32 bytes define the plinth graphic that appears on the Game Over screen.

PlinthGraphicData                 DG ################                      ; Plinth graphic data.
                                  DG -###--#--#--###-
                                  DG #---#-#--#-#---#
                                  DG #-#-#-#--#-#-#-#
                                  DG -#--#-#--#-#--#-
                                  DG ---#--#--#--#---
                                  DG --#---#--#---#--
                                  DG --#-#-#--#-#-#--
                                  DG --#-#-#--#-#-#--
                                  DG --#-#-#--#-#-#--
                                  DG --#-#-#--#-#-#--
                                  DG --#-#-#--#-#-#--
                                  DG --#-#-#--#-#-#--
                                  DG --#-#-#--#-#-#--
                                  DG --#-#-#--#-#-#--
                                  DG --#-#-#--#-#-#--

; The next 256 bytes define the guardian graphics.

                                  DG ----##----------                      ; Guardian graphic data.
                                  DG ---####---------
                                  DG ---##-##--------
                                  DG ---####-##------
                                  DG --###--#--------
                                  DG --##--#---------
                                  DG --###-#---------
                                  DG --####-#--------
                                  DG -##-##-#--------
                                  DG -##-#--#--------
                                  DG -##-#--#--------
                                  DG -##----#--------
                                  DG -###---#--------
                                  DG #-#####---------
                                  DG ----#-----------
                                  DG ---####---------

                                  DG ------##--------
                                  DG -----####-------
                                  DG -----##-##------
                                  DG -----####-##----
                                  DG ----###--#------
                                  DG ----##--#-------
                                  DG ----#####-------
                                  DG ----##-###------
                                  DG ---##-##-#------
                                  DG ---##-##-#------
                                  DG ---#-##--#------
                                  DG ---##----#------
                                  DG ---###---#------
                                  DG --#-#####-------
                                  DG -----#-#-#------
                                  DG ----#####-------

                                  DG --------##------
                                  DG -------####-----
                                  DG -------##-##----
                                  DG -------####-##--
                                  DG ------###--#----
                                  DG ------##--#-----
                                  DG ------###-#-----
                                  DG ------####-#----
                                  DG -----##-##-#----
                                  DG -----##-#--#----
                                  DG -----##-#--#----
                                  DG -----##----#----
                                  DG -----###---#----
                                  DG ----#-#####-#---
                                  DG ------#--#-#----
                                  DG -----######-----

                                  DG ----------##----
                                  DG ---------####---
                                  DG ---------##-##--
                                  DG ---------####-##
                                  DG --------###--#--
                                  DG --------##--#---
                                  DG --------###-#---
                                  DG --------####-#--
                                  DG -------##-##-#--
                                  DG -------##--#-#--
                                  DG -------##--#-#--
                                  DG -------##----#--
                                  DG -------###---#--
                                  DG ------#-#####---
                                  DG ---------#-#-#--
                                  DG --------#####---

                                  DG ----##----------
                                  DG ---####---------
                                  DG --##-##---------
                                  DG ##-####---------
                                  DG --#--###--------
                                  DG ---#--##--------
                                  DG ---#-###--------
                                  DG --#-####--------
                                  DG --#-##-##-------
                                  DG --#-#--##-------
                                  DG --#-#--##-------
                                  DG --#----##-------
                                  DG --#---###-------
                                  DG ---#####-#------
                                  DG --#-#-#---------
                                  DG ---#####--------

                                  DG ------##--------
                                  DG -----####-------
                                  DG ----##-##-------
                                  DG --##-####-------
                                  DG ----#--###------
                                  DG -----#--##------
                                  DG -----#-###------
                                  DG ----#-####------
                                  DG ----#-##-##-----
                                  DG ----#--#-##-----
                                  DG ----#--#-##-----
                                  DG ----#----##-----
                                  DG ----#---###-----
                                  DG ---#-#####-#----
                                  DG ----#-#--#------
                                  DG -----######-----

                                  DG --------##------
                                  DG -------####-----
                                  DG ------##-##-----
                                  DG ----##-####-----
                                  DG ------#--###----
                                  DG -------#--##----
                                  DG -------#####----
                                  DG ------###-##----
                                  DG ------#-##-##---
                                  DG ------#-##-##---
                                  DG ------#--##-#---
                                  DG ------#----##---
                                  DG ------#---###---
                                  DG -------#####-#--
                                  DG ------#-#-#-----
                                  DG -------#####----

                                  DG ----------##----
                                  DG ---------####---
                                  DG --------##-##---
                                  DG ------##-####---
                                  DG --------#--###--
                                  DG ---------#--##--
                                  DG ---------#-###--
                                  DG --------#-####--
                                  DG --------#-##-##-
                                  DG --------#--#-##-
                                  DG --------#--#-##-
                                  DG --------#----##-
                                  DG --------#---###-
                                  DG ---------#####-#
                                  DG -----------#----
                                  DG ---------####---

;------------------------------------------------------------------------------------------------------------------------------------------;

;----------------------------------------------------------------;
;                                                                ;
; The Menagerie (teleport: 26)                                   ;
;                                                                ;
;----------------------------------------------------------------;

; The first 512 bytes are the attributes that define the layout of the cavern.

TheMenagerieData                  DH "0D0000000000000000004300000000000000030000000000000000430000000D"
                                  DH "0D0000000000000000000000000000000000430000000000000000000000000D"
                                  DH "0D0000000000000000000000000000000000000000000000000000000000000D"
                                  DH "0D0000000000000000000000000000000000000000000000000000000000000D"
                                  DH "0D0000000000000000000000000000000000000000000000000000000000000D"
                                  DH "0D4545454505050505050505050505050505050505050505050505050505050D"
                                  DH "0D0000000000000000000000000000000000000000000000000000000000000D"
                                  DH "0D4545454545450000000000000000000000000000000000000000454545450D"
                                  DH "0D0300000000000000000000000000000000000000000000000000000000000D"
                                  DH "0D0300000000020202020202000000000000000000000000000000000000000D"
                                  DH "0D0300000000000000000000000000000000000000000000004545454545450D"
                                  DH "0D4300000000000000000000000045454545450000000000000000000000000D"
                                  DH "0D0000000045454545454500000000000000000000000000000000000000000D"
                                  DH "0D0000000000000000000000000000000000000000454545454545454545450D"
                                  DH "0D0000000000000000000000000000000000000000000000000000000000000D"
                                  DH "0D4545454545454545454545454545454545454545454545454545454545450D"

; The next 32 bytes specify the cavern name.

                                  DEFM "          The Menagerie         "  ;  Cavern name.

; The next 72 bytes contain the attributes and graphic data for the tiles used to build the cavern.

                                  DB $00                                   ; Attribute.
                                  DG --------                              ; Background.
                                  DG --------
                                  DG --------
                                  DG --------
                                  DG --------
                                  DG --------
                                  DG --------
                                  DG --------

                                  DB $45                                   ; Attribute.
                                  DG ########                              ; Floor.
                                  DG ########
                                  DG -##--##-
                                  DG #--##--#
                                  DG -##--##-
                                  DG #--##--#
                                  DG ########
                                  DG --------

                                  DB $05                                   ; Attribute.
                                  DG ########                              ; Crumbling floor.
                                  DG ########
                                  DG -##--##-
                                  DG #--##--#
                                  DG -#----#-
                                  DG ---##---
                                  DG ###-#-#-
                                  DG --------

                                  DB $0D                                   ; Attribute.
                                  DG #------#                              ; Wall.
                                  DG ##----##
                                  DG #-#--#-#
                                  DG #--##--#
                                  DG #--##--#
                                  DG #-#--#-#
                                  DG ##----##
                                  DG #------#

                                  DB $02                                   ; Attribute.
                                  DG ####----                              ; Conveyor.
                                  DG #-#-#-#-
                                  DG ####----
                                  DG -##--##-
                                  DG -##--##-
                                  DG --------
                                  DG --------
                                  DG --------

                                  DB $06                                   ; Attribute.
                                  DG -#---#--                              ; Nasty 1.
                                  DG --#-#---
                                  DG #--#-#--
                                  DG -#-#---#
                                  DG --##-#-#
                                  DG ##-#-##-
                                  DG -#-##---
                                  DG ---#----

                                  DB $43                                   ; Attribute.
                                  DG ---#----                              ; Nasty 2.
                                  DG ##-#-##-
                                  DG --###---
                                  DG ##-#-##-
                                  DG --###---
                                  DG -#---#--
                                  DG ##---##-
                                  DG --#-#---

                                  DB $03                                   ; Attribute.
                                  DG ---#----                              ; Extra.
                                  DG ---#----
                                  DG ---#----
                                  DG ---#----
                                  DG ---#----
                                  DG ---#----
                                  DG ---#----
                                  DG ---#----

; The next seven bytes specify Miner Willy's initial location and appearance in the cavern.

                                  DEFB 208                                 ; Pixel y-coordinate * 2
                                  DEFB 0                                   ; Animation frame.
                                  DEFB 0                                   ; Direction and movement flags: facing right.
                                  DEFB 0                                   ; Airborne status indicator.
                                  DEFW 23970                               ; Location in the attribute buffer at 23552: (13,2).
                                  DEFB 0                                   ; Jumping animation counter.

; The next four bytes specify the direction, location and length of the conveyor.

                                  DEFB 0                                   ; Direction (left)..
                                  DEFW 30758                               ; Location in the screen buffer at 28672: (9,6).
                                  DEFB 6                                   ; Length.

; The next byte specifies the border colour.

                                  DEFB 2                                   ; Border colour.

; The next byte is copied but is not used.

                                  DEFB 0                                   ; Unused.

; The next 25 bytes specify the location and initial colour of the items in the cavern.

                                  DEFB 3                                   ; Item 1 at (0,6).
                                  DEFW 23558
                                  DEFB 96
                                  DEFB 255
                                  DEFB 4                                   ; Item 2 at (0,15).
                                  DEFW 23567
                                  DEFB 96
                                  DEFB 255
                                  DEFB 5                                   ; Item 3 at (0,23).
                                  DEFW 23575
                                  DEFB 96
                                  DEFB 255
                                  DEFB 6                                   ; Item 4 at (6,30).
                                  DEFW 23774
                                  DEFB 96
                                  DEFB 255
                                  DEFB 3                                   ; Item 5 at (6,21).
                                  DEFW 23765
                                  DEFB 96
                                  DEFB 255
                                  DEFB 255                                 ; Terminator.

; The next 37 bytes define the portal graphic and its location.

                                  DB $0E                                   ; Attribute.
                                  DG ################                      ; Portal Graphic data.
                                  DG -#---#---#---#--
                                  DG #--##--##--##--#
                                  DG --#---#---#---#-
                                  DG --#---#---#---#-
                                  DG #--##--##--##--#
                                  DG -#---#---#---#--
                                  DG -#---#---#---#--
                                  DG #--##--##--##--#
                                  DG --#---#---#---#-
                                  DG --#---#---#---#-
                                  DG #--##--##--##--#
                                  DG -#---#---#---#--
                                  DG -#---#---#---#--
                                  DG #--##--##--##--#
                                  DG ################

                                  DW $5D7D                                 ; Location in the attribute buffer at 23552: (11,29).
                                  DW $687D                                 ; Location in the screen buffer at 24576: (11,29).

; The next eight bytes define the item graphic.

                                  DG --##----                              ; Item graphic data.
                                  DG -#--#---
                                  DG #---#---
                                  DG #--#----
                                  DG -##-#---
                                  DG -----#--
                                  DG ----#-#-
                                  DG -----#--


; The next byte specifies the initial air supply in the cavern.

                                  DEFB 63                                  ; Air.

; The next byte initialises the game clock.

                                  DEFB 128                                 ; Game clock.

; The next 28 bytes define the horizontal guardians.

                                  DEFB 68                                  ; Horizontal guardian 1:
                                  DEFW 23987                               ; y = 13, initial x = 19, 1 <= x <= 19, speed = normal.
                                  DEFB 104
                                  DEFB 7
                                  DEFB 161
                                  DEFB 179
                                  DEFB 67                                  ; Horizontal guardian 2:
                                  DEFW 23664                               ; y = 3, initial x = 16, 1 <= x <= 16, speed = normal.
                                  DEFB 96
                                  DEFB 7
                                  DEFB 97
                                  DEFB 112
                                  DEFB 66                                  ; Horizontal guardian 3:
                                  DEFW 23666                               ; y = 3, initial x = 18, 18 <= x <= 29, speed = normal.
                                  DEFB 96
                                  DEFB 0
                                  DEFB 114
                                  DEFB 125
                                  DEFB 255,0,0,0,0,0,0                     ; Horizontal guardian 4 (unused).
                                  DEFB 255                                 ; Terminator.

; The next two bytes are copied but are not used.

                                  DEFB 0,0                                 ; Unused.

; The next byte indicates that there are no vertical guardians in this cavern.

                                  DEFB 255                                 ; Terminator.

; The next two bytes are unused.

                                  DEFB 0,0                                 ; Unused.

; Boot graphic data

BootGraphicData                   DG --#-#-#-##------
                                  DG --##-#-#-#------
                                  DG --########------
                                  DG ----#--#--------
                                  DG ----#--#--------
                                  DG ---######-------
                                  DG ---#----#-------
                                  DG ---#----#-------
                                  DG ---#---##-------
                                  DG --#---#--#------
                                  DG --#-----#-###---
                                  DG -#-##--#--#--#--
                                  DG -#---#---#----#-
                                  DG -#---#--------#-
                                  DG -#---#--------#-
                                  DG ################

; The next 256 bytes define the guardian graphics.

                                  DG ------##--------                      ; Guardian graphic data.
                                  DG -----##-#-------
                                  DG -----#####------
                                  DG ------##--------
                                  DG -------##-------
                                  DG --------##------
                                  DG #-#####-##------
                                  DG ###---###-------
                                  DG -#-----#--------
                                  DG #-#-#-##--------
                                  DG -#######--------
                                  DG --#####---------
                                  DG ----#-----------
                                  DG ----#-----------
                                  DG ----#-----------
                                  DG ---#-#----------

                                  DG --------##------
                                  DG -------##-#-----
                                  DG -------#####----
                                  DG --------##------
                                  DG ---------##-----
                                  DG ----------##----
                                  DG --#-#####-##----
                                  DG --###---###-----
                                  DG ---##---##------
                                  DG --##----##------
                                  DG ---#-#-###------
                                  DG ----#-#-#-------
                                  DG ---#-#-#--------
                                  DG ------#---------
                                  DG -----#-#--------
                                  DG ----------------

                                  DG ----------##----
                                  DG ---------##-#---
                                  DG ---------#####--
                                  DG ----------##----
                                  DG -----------##---
                                  DG ------------##--
                                  DG ----#-#####-##--
                                  DG ----###---###---
                                  DG -----#-----#----
                                  DG ----#-#-#-##----
                                  DG -----#######----
                                  DG ------#####-----
                                  DG --------#-------
                                  DG -------#-#------
                                  DG ----------------
                                  DG ----------------

                                  DG ------------##--
                                  DG -----------##-#-
                                  DG -----------#####
                                  DG --------#-#-##--
                                  DG -------#-#-#-##-
                                  DG --------#-#-#-##
                                  DG ------##-#-##-##
                                  DG ------###----##-
                                  DG -------#----##--
                                  DG ------########--
                                  DG -------#######--
                                  DG --------#####---
                                  DG ----------#-----
                                  DG ----------#-----
                                  DG ---------#-#----
                                  DG ----------------

                                  DG --##------------
                                  DG -#-##-----------
                                  DG #####-----------
                                  DG --##-#-#--------
                                  DG -##-#-#-#-------
                                  DG ##-#-#-#--------
                                  DG ##-##-#-##------
                                  DG -##----###------
                                  DG --##----#-------
                                  DG --########------
                                  DG --#######-------
                                  DG ---#####--------
                                  DG -----#----------
                                  DG -----#----------
                                  DG ----#-#---------
                                  DG ----------------

                                  DG ----##----------
                                  DG ---#-##---------
                                  DG --#####---------
                                  DG ----##----------
                                  DG ---##-----------
                                  DG --##------------
                                  DG --##-#####-#----
                                  DG ---###---###----
                                  DG ----#-----#-----
                                  DG ----##-#-#-#----
                                  DG ----#######-----
                                  DG -----#####------
                                  DG -------#--------
                                  DG ------#-#-------
                                  DG ----------------
                                  DG ----------------

                                  DG ------##--------
                                  DG -----#-##-------
                                  DG ----#####-------
                                  DG ------##--------
                                  DG -----##---------
                                  DG ----##----------
                                  DG ----##-#####-#--
                                  DG -----###---###--
                                  DG ------##---##---
                                  DG ------##----##--
                                  DG ------###-#-#---
                                  DG -------#-#-#----
                                  DG --------#-#-#---
                                  DG ---------#------
                                  DG --------#-#-----
                                  DG ----------------

                                  DG --------##------
                                  DG -------#-##-----
                                  DG ------#####-----
                                  DG --------##------
                                  DG -------##-------
                                  DG ------##--------
                                  DG ------##-#####-#
                                  DG -------###---###
                                  DG --------#-----#-
                                  DG --------##-#-#-#
                                  DG --------#######-
                                  DG ---------#####--
                                  DG -----------#----
                                  DG -----------#----
                                  DG -----------#----
                                  DG ----------#-#---

;------------------------------------------------------------------------------------------------------------------------------------------;

;----------------------------------------------------------------;
;                                                                ;
; Abandoned Uranium Workings (teleport: 126)                     ;
;                                                                ;
;----------------------------------------------------------------;

; The first 512 bytes are the attributes that define the layout of the cavern.

AbandonedUraniumWorkingsData      DH "2900000000000005000000000000292929292929292929292929292929292929"
                                  DH "2900000000000000000000000000000000000000000000000000000000000029"
                                  DH "2900000000000000000000000000000000000000000000000000000000000029"
                                  DH "2900000000000000000000000000000000000046464646464600000000000029"
                                  DH "2900000000000000000000000000000000000000000000000000004646464629"
                                  DH "2946000000000046000000000000000000460000000000000000000000000029"
                                  DH "2900000000000000000000004646000000000000004646460000000000000029"
                                  DH "2906060600000000000000000000000000000000000000000000000000000029"
                                  DH "2900000000000046460000000000000000000000000000000000464646000029"
                                  DH "2900000000000000000000000000000000004646460000000000000000000029"
                                  DH "2903030300000000000000000000000000000000000000000000000000004629"
                                  DH "2900000000000000000000004646460000000000000046464600000000000029"
                                  DH "2900000000004646000000000000000000000000000000050000000046464629"
                                  DH "2900000000000000000000000000000000004646000000000000000000000029"
                                  DH "2900000000000000000000000000000000000000000000000000000000000029"
                                  DH "2946464646464646464646464646464646464646464646464646464646464629"

; The next 32 bytes specify the cavern name.

                                  DEFM "   Abandoned Uranium Workings   "  ; Cavern name.

; The next 72 bytes contain the attributes and graphic data for the tiles used to build the cavern.

                                  DB $00                                   ; Attribute.
                                  DG --------                              ; Background.
                                  DG --------
                                  DG --------
                                  DG --------
                                  DG --------
                                  DG --------
                                  DG --------
                                  DG --------

                                  DB $46                                   ; Attribute.
                                  DG ########                              ; Floor.
                                  DG ########
                                  DG ##-##-##
                                  DG -##-###-
                                  DG ##---#-#
                                  DG -#------
                                  DG --------
                                  DG --------

                                  DB $06                                   ; Attribute.
                                  DG ########                              ; Crumbling Floor.
                                  DG ##-##-##
                                  DG #-#--#-#
                                  DG --#--#--
                                  DG -#-#--#-
                                  DG --#-----
                                  DG ----#---
                                  DG --------

                                  DB $29                                   ; Attribute.
                                  DG --#---#-                              ; Wall.
                                  DG ########
                                  DG #---#---
                                  DG ########
                                  DG --#---#-
                                  DG ########
                                  DG #---#---
                                  DG ########

                                  DB $03                                   ; Attribute.
                                  DG ####----                              ; Conveyor.
                                  DG -##--##-
                                  DG ####----
                                  DG -##--##-
                                  DG --------
                                  DG #--##--#
                                  DG ########
                                  DG --------

                                  DB $04                                   ; Attribute.
                                  DG -#---#--                              ; Nasty 1 (unused).
                                  DG --#-#---
                                  DG #--#-#--
                                  DG -#-#---#
                                  DG --##-#-#
                                  DG ##-#-##-
                                  DG -#-##---
                                  DG ---#----

                                  DB $05                                   ; Attribute.
                                  DG ---#----                              ; Nasty 2.
                                  DG ---#----
                                  DG ---#----
                                  DG -#-#-#--
                                  DG --###---
                                  DG ##-#-##-
                                  DG --###---
                                  DG -#-#-#--

                                  DB $00                                   ; Attribute.
                                  DG --------                              ; Extra (unused).
                                  DG --------
                                  DG --------
                                  DG --------
                                  DG --------
                                  DG --------
                                  DG --------
                                  DG --------

; The next seven bytes specify Miner Willy's initial location and appearance in the cavern.

                                  DEFB 208                                 ; Pixel y-coordinate * 2.
                                  DEFB 0                                   ; Animation frame.
                                  DEFB 1                                   ; Direction and movement flags: facing left.
                                  DEFB 0                                   ; Airborne status indicator.
                                  DEFW 23997                               ; Location in the attribute buffer at 23552: (13,29).
                                  DEFB 0                                   ; Jumping animation counter.

; The next four bytes specify the direction, location and length of the conveyor.

                                  DEFB 1                                   ; Direction (right).
                                  DEFW 30785                               ; Location in the screen buffer at 28672: (10,1).
                                  DEFB 3                                   ; Length.

; The next byte specifies the border colour.

                                  DEFB 2                                   ; Border Colour.

; The next byte is copied but is not used.

                                  DEFB 0                                   ; Unused.

; The next 25 bytes specify the location and initial colour of the items in the cavern.

                                  DEFB 3                                   ; Item 1 at (0,1).
                                  DEFW 23553
                                  DEFB 96
                                  DEFB 255
                                  DEFB 4                                   ; Item 2 at (1,12).
                                  DEFW 23596
                                  DEFB 96
                                  DEFB 255
                                  DEFB 5                                   ; Item 3 at (1,25).
                                  DEFW 23609
                                  DEFB 96
                                  DEFB 255
                                  DEFB 6                                   ; Item 4 at (6,16).
                                  DEFW 23760
                                  DEFB 96
                                  DEFB 255
                                  DEFB 3                                   ; Item 5 at (6,30).
                                  DEFW 23774
                                  DEFB 96
                                  DEFB 255
                                  DEFB 255                                 ; Terminator.

; The next 37 bytes define the portal graphic and its location.

                                  DB $0E                                   ; Attribute.
                                  DG --#---#---#---#-                      ; Portal Graphic Data.
                                  DG ---#---#---#---#
                                  DG #---#---#---#---
                                  DG -#---#---#---#--
                                  DG --#---#---#---#-
                                  DG ---#---#---#---#
                                  DG #---#---#---#---
                                  DG -#---#---#---#--
                                  DG --#---#---#---#-
                                  DG ---#---#---#---#
                                  DG #---#---#---#---
                                  DG -#---#---#---#--
                                  DG --#---#---#---#-
                                  DG ---#---#---#---#
                                  DG #---#---#---#---
                                  DG -#---#---#---#--

                                  DW $5C3D                                 ; Location in the attribute buffer at 23552: (1,29).
                                  DW $603D                                 ; Location in the screen buffer at 24576: (1,29).

; The next eight bytes define the item graphic.

                                  DG --##----                              ; Item graphic data.
                                  DG -#--#---
                                  DG #---#---
                                  DG #--#----
                                  DG -##-#---
                                  DG -----#--
                                  DG ----#-#-
                                  DG -----#--

; The next byte specifies the initial air supply in the cavern.

                                  DEFB 63                                  ; Air

; The next byte initialises the game clock.

                                  DEFB 128                                 ; Game clock

; The next 28 bytes define the horizontal guardians.

                                  DEFB 66                                  ; Horizontal Guardian 1:
                                  DEFW 23969                               ; y = 13, initial x = 1, 1 <= x <= 10, speed = normal.
                                  DEFB 104
                                  DEFB 0
                                  DEFB 161
                                  DEFB 170
                                  DEFB 68                                  ; Horizontal Guardian 2:
                                  DEFW 23975                               ; y = 13, initial x = 7, 6 <= x <= 15, speed = normal.
                                  DEFB 104
                                  DEFB 0
                                  DEFB 166
                                  DEFB 175
                                  DEFB 255,0,0,0,0,0,0                     ; Horizontal Guardian 3 (unused).
                                  DEFB 0,0,0,0,0,0,0                       ; Horizontal Guardian 4 (unused).
                                  DEFB 255                                 ; Terminator.

; The next two bytes are not used.

                                  DEFB 0,0                                 ; Unused.

; The next 28 bytes define the vertical guardians.

                                  DEFB 255,0,0,0,0,0,0                     ; Vertical Guardian 1 (unused).
                                  DEFB 0,0,0,0,0,0,0                       ; Vertical Guardian 2 (unused).
                                  DEFB 0,0,0,0,0,0,0                       ; Vertical Guardian 3 (unused).
                                  DEFB 0,0,0,0,0,0,0                       ; Vertical Guardian 4 (unused).

; The next 7 bytes are unused.

                                  DEFB 0,0,0,0,0,0,0                       ; Unused.

; The next 256 bytes define the guardian graphics.

                                  DG -----###--------                      ; Guardian Graphic Data.
                                  DG ----#-###-------
                                  DG ---#--####------
                                  DG ---#--####------
                                  DG ---#--####------
                                  DG ----#-###-------
                                  DG -----###--------
                                  DG -------#--------
                                  DG -----###--------
                                  DG -----#-#--------
                                  DG -----###--------
                                  DG -----####-------
                                  DG -#--#####-------
                                  DG -#-#######------
                                  DG #######-##------
                                  DG --####---#------

                                  DG -------###------
                                  DG ------#-###-----
                                  DG -----#-###-#----
                                  DG -----#-###-#----
                                  DG -----#-###-#----
                                  DG ------#-###-----
                                  DG -------###------
                                  DG ---------#------
                                  DG -------###------
                                  DG -------#-#------
                                  DG -------###------
                                  DG -------####-----
                                  DG --#---#####-----
                                  DG --#-########----
                                  DG -########-##----
                                  DG ---#####---#----

                                  DG ---------###----
                                  DG --------###-#---
                                  DG -------####--#--
                                  DG -------####--#--
                                  DG -------####--#--
                                  DG --------###-#---
                                  DG ---------###----
                                  DG -----------#----
                                  DG ---------###----
                                  DG ---------#-#----
                                  DG ---------###----
                                  DG --------#####---
                                  DG --#----######---
                                  DG --#--#########--
                                  DG -##########-##--
                                  DG ----######---#--

                                  DG -----------###--
                                  DG ----------##-##-
                                  DG ---------##---##
                                  DG ---------##---##
                                  DG ---------##---##
                                  DG ----------##-##-
                                  DG -----------###--
                                  DG -------------#--
                                  DG -----------###--
                                  DG -----------#-#--
                                  DG -----------###--
                                  DG -----------####-
                                  DG -----#----#####-
                                  DG -----#--########
                                  DG ----#########-##
                                  DG ------######---#

                                  DG --###-----------
                                  DG -##-##----------
                                  DG ##---##---------
                                  DG ##---##---------
                                  DG ##---##---------
                                  DG -##-##----------
                                  DG --###-----------
                                  DG --#-------------
                                  DG --###-----------
                                  DG --#-#-----------
                                  DG --###-----------
                                  DG -####-----------
                                  DG -#####----#-----
                                  DG ########--#-----
                                  DG ##-#########----
                                  DG #---######------

                                  DG ----###---------
                                  DG ---#-###--------
                                  DG --#--####-------
                                  DG --#--####-------
                                  DG --#--####-------
                                  DG ---#-###--------
                                  DG ----###---------
                                  DG ----#-----------
                                  DG ----###---------
                                  DG ----#-#---------
                                  DG ----###---------
                                  DG ---#####--------
                                  DG ---######----#--
                                  DG --#########--#--
                                  DG --##-##########-
                                  DG --#---######----

                                  DG ------###-------
                                  DG -----###-#------
                                  DG ----#-###-#-----
                                  DG ----#-###-#-----
                                  DG ----#-###-#-----
                                  DG -----###-#------
                                  DG ------###-------
                                  DG ------#---------
                                  DG ------###-------
                                  DG ------#-#-------
                                  DG ------###-------
                                  DG -----####-------
                                  DG -----#####---#--
                                  DG ----########-#--
                                  DG ----##-########-
                                  DG ----#---#####---

                                  DG --------###-----
                                  DG -------###-#----
                                  DG ------####--#---
                                  DG ------####--#---
                                  DG ------####--#---
                                  DG -------###-#----
                                  DG --------###-----
                                  DG --------#-------
                                  DG --------###-----
                                  DG --------#-#-----
                                  DG --------###-----
                                  DG -------####-----
                                  DG -------#####--#-
                                  DG ------#######-#-
                                  DG ------##-#######
                                  DG ------#---####--

;------------------------------------------------------------------------------------------------------------------------------------------;

;----------------------------------------------------------------;
;                                                                ;
; Eugene's Lair (teleport: 36)                                   ;
;                                                                ;
;----------------------------------------------------------------;

; The first 512 bytes are the attributes that define the layout of the cavern.

EugenesLairData                   DH "2E1010101010101010101010101010101010101013101010101010101010102E"
                                  DH "2E1010101010101010101010101010101010101010101010101010101010102E"
                                  DH "2E1010101010101010101010101010101010101010101010101010101010102E"
                                  DH "2E1010101010101010101010101010101010101010101010101010101010102E"
                                  DH "2E1010101010101010101010101010101010101010101010161010101010102E"
                                  DH "2E1515151515151515151515151510101010141414141515151515151010102E"
                                  DH "2E1010101010101010101010101010101010101010101010101010101015152E"
                                  DH "2E1010101010101010101010101010101010101010161010101010101010102E"
                                  DH "2E1010101010101010101010101010101010565656565656565656561010102E"
                                  DH "2E1010101515151515151515151510101010101010101010101010101010102E"
                                  DH "2E1010101010101010101010101010101010101010101010101010101010102E"
                                  DH "2E1414151515151515151515151510101010151515151515151010101010152E"
                                  DH "2E101010101010102E101010101010101010101010101010101010101010102E"
                                  DH "2E151510101010102E10101010102E10102E101010101010101010101010102E"
                                  DH "2E101010101610102E10101010102E10102E2E2E2E2E2E2E161610101010102E"
                                  DH "2E151515151515152E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E151515151515152E"

; The next 32 bytes specify the cavern name.

                                  DEFM "         Eugene's Lair          "  ; Cavern name.

; The next 72 bytes contain the attributes and graphic data for the tiles used to build the cavern.

                                  DB $10                                   ; Attribute.
                                  DG --------                              ; Background
                                  DG --------
                                  DG --------
                                  DG --------
                                  DG --------
                                  DG --------
                                  DG --------
                                  DG --------

                                  DB $15                                   ; Attribute.
                                  DG ########                              ; Floor
                                  DG ########
                                  DG ##-##-##
                                  DG -##-###-
                                  DG ##---#-#
                                  DG -#------
                                  DG --------
                                  DG --------

                                  DB $14                                   ; Attribute.
                                  DG ########                              ; Crumbling floor
                                  DG ##-##-##
                                  DG #-#--#-#
                                  DG --#--#--
                                  DG -#-#--#-
                                  DG --#-----
                                  DG ----#---
                                  DG --------

                                  DB $2E                                   ; Attribute.
                                  DG --#---#-                              ; Wall
                                  DG ########
                                  DG #---#---
                                  DG ########
                                  DG --#---#-
                                  DG ########
                                  DG #---#---
                                  DG ########


                                  DB $56                                   ; Attribute.
                                  DG ######--                              ; Conveyor
                                  DG -##--##-
                                  DG ######--
                                  DG -##--##-
                                  DG --------
                                  DG --------
                                  DG --------
                                  DG --------


                                  DB $16                                   ; Attribute.
                                  DG -#---#--                              ; Nasty 1
                                  DG --#-#---
                                  DG #--#-#--
                                  DG -#-#---#
                                  DG --##-#-#
                                  DG ##-#-##-
                                  DG -#-##---
                                  DG ---#----

                                  DB $13                                   ; Attribute.
                                  DG -######-                              ; Nasty 2
                                  DG --####--
                                  DG ---###--
                                  DG ---##---
                                  DG ---##---
                                  DG ----#---
                                  DG ----#---
                                  DG ----#---

                                  DB $00                                   ; Attribute.
                                  DG --------                              ; Extra
                                  DG --------
                                  DG --------
                                  DG --------
                                  DG --------
                                  DG --------
                                  DG --------
                                  DG --------

; The next seven bytes specify Miner Willy's initial location and appearance in the cavern.

                                  DEFB 48                                  ; Pixel y-coordinate * 2.
                                  DEFB 0                                   ; Animation frame.
                                  DEFB 0                                   ; Direction and movement flags: facing right.
                                  DEFB 0                                   ; Airborne status indicator.
                                  DEFW 23649                               ; Location in the attribute buffer at 23552: (3,1).
                                  DEFB 0                                   ; Jumping animation counter.

; The next four bytes specify the direction, location and length of the conveyor.

                                  DEFB 0                                   ; Direction (left).
                                  DEFW 30738                               ; Location in the screen buffer at 28672: (8,18).
                                  DEFB 10                                  ; Length.

; The next byte specifies the border colour.

                                  DEFB 1                                   ; Border colour.

; The next byte is copied but is not used.

                                  DEFB 0                                   ; Unused.

; The next 25 bytes specify the location and initial colour of the items in the cavern.

                                  DEFB 19                                  ; Item 1 at (1,30).
                                  DEFW 23614
                                  DEFB 96
                                  DEFB 255
                                  DEFB 20                                  ; Item 2 at (6,10).
                                  DEFW 23754
                                  DEFB 96
                                  DEFB 255
                                  DEFB 21                                  ; Item 3 at (7,29)
                                  DEFW 23805
                                  DEFB 96
                                  DEFB 255
                                  DEFB 22                                  ; Item 4 at (12,7)
                                  DEFW 23943
                                  DEFB 104
                                  DEFB 255
                                  DEFB 19                                  ; Item 5 at (12,9)
                                  DEFW 23945
                                  DEFB 104
                                  DEFB 255
                                  DEFB 255                                 ; Terminator.

; The next 37 bytes define the portal graphic and its location.

                                  DB $57                                   ; Attribute.
                                  DG ################
                                  DG #-#-#-#-#-#-#-#-
                                  DG #-#-#-#-#-#-#-#-
                                  DG #-#-#-#-#-#-#-#-
                                  DG #-#-#-#-#-#-#-#-
                                  DG #-#-#-#-#-#-#-#-
                                  DG #-#-#-#-#-#-#-#-
                                  DG #-#-#-#-#-#-#-#-
                                  DG #-#-#-#-#-#-#-#-
                                  DG #-#-#-#-#-#-#-#-
                                  DG #-#-#-#-#-#-#-#-
                                  DG #-#-#-#-#-#-#-#-
                                  DG #-#-#-#-#-#-#-#-
                                  DG #-#-#-#-#-#-#-#-
                                  DG #-#-#-#-#-#-#-#-
                                  DG ################

                                  DW $5DAF                                 ; Location in the attribute buffer at 23552: (1,29).
                                  DW $68AF                                 ; Location in the screen buffer at 24576: (1,29).

; Item graphic

                                  DG ---#####                              ; Item graphic data.
                                  DG --#---##
                                  DG -#---###
                                  DG ########
                                  DG #---####
                                  DG #---###-
                                  DG #---##--
                                  DG #####---


; The next byte specifies the initial air supply in the cavern.

                                  DEFB 63                                  ; Air.

; The next byte initialises the game clock.

                                  DEFB 128                                 ; Game clock.

; The next 28 bytes define the horizontal guardians.

                                  DEFB 22                                  ; Horizontal guardian 1:
                                  DEFW 23660                               ; y=3, initial x=12, 1<=x<=12, speed=normal.
                                  DEFB 96
                                  DEFB 7
                                  DEFB 97
                                  DEFB 108
                                  DEFB 16                                  ; Horizontal guardian 2:
                                  DEFW 23780                               ; y=7, initial x=4, 4<=x<=12, speed=normal.
                                  DEFB 96
                                  DEFB 0
                                  DEFB 228
                                  DEFB 236
                                  DEFB 255,0,0,0,0,0,0                     ; Horizontal guardian 3 (unused).
                                  DEFB 0,0,0,0,0,0,0                       ; Horizontal guardian 4 (unused)
                                  DEFB 255                                 ; Terminator

; The next two bytes specify Eugene's initial direction and pixel y-coordinate.

                                  DEFB 0                                   ; Initial direction (down)
                                  DEFB 0                                   ; Initial pixel y-coordinate

; The next three bytes are unused.

                                  DEFB 0,0,0                               ; Unused.

; The next 32 bytes define the Eugene graphic.

                                  DG ------####------
                                  DG ----########----
                                  DG ---##########---
                                  DG ---##########---
                                  DG --##---##---##--
                                  DG ----###--###----
                                  DG -##-########-##-
                                  DG #-#-###--###-#-#
                                  DG #-##---##---##-#
                                  DG #--##########--#
                                  DG #--##-####-##--#
                                  DG #---##----##---#
                                  DG -#---######---#-
                                  DG ------#--#------
                                  DG ------#--#------
                                  DG ----###--###----

; The next 256 bytes define the guardian graphics.

                                  DG ##--------------
                                  DG ##--------------
                                  DG ##--------------
                                  DG ##--------------
                                  DG ##--------------
                                  DG ##--------------
                                  DG ##--------------
                                  DG ##-#######------
                                  DG ##-#######------
                                  DG ##########------
                                  DG ---#######------
                                  DG ----#####-------
                                  DG -###-####-------
                                  DG ########--------
                                  DG ##-#####--------
                                  DG ##-#####--------

                                  DG --##------------
                                  DG --##------------
                                  DG --##------------
                                  DG --##------------
                                  DG --##------#-----
                                  DG --##----##------
                                  DG --##--##--------
                                  DG --##-#----------
                                  DG --##-#######----
                                  DG --##########----
                                  DG -----#######----
                                  DG ------#####-----
                                  DG ---###-####-----
                                  DG --########------
                                  DG --##-#####------
                                  DG --##-#####------

                                  DG ----##----------
                                  DG ----##----------
                                  DG ----##----#-----
                                  DG ----##---#------
                                  DG ----##---#------
                                  DG ----##--#-------
                                  DG ----##--#-------
                                  DG ----##-#--------
                                  DG ----##-#######--
                                  DG ----##########--
                                  DG -------#######--
                                  DG --------#####---
                                  DG -----###-####---
                                  DG ----########----
                                  DG ----##-#####----
                                  DG ----##-#####----

                                  DG ------##--------
                                  DG ------##--------
                                  DG ------##--------
                                  DG ------##--------
                                  DG ------##------#-
                                  DG ------##----##--
                                  DG ------##--##----
                                  DG ------##-#------
                                  DG ------##-#######
                                  DG ------##########
                                  DG ---------#######
                                  DG ----------#####-
                                  DG -------###-####-
                                  DG ------########--
                                  DG ------##-#####--
                                  DG ------##-#####--

                                  DG --------##------
                                  DG --------##------
                                  DG --------##------
                                  DG --------##------
                                  DG -#------##------
                                  DG --##----##------
                                  DG ----##--##------
                                  DG ------#-##------
                                  DG #######-##------
                                  DG ##########------
                                  DG #######---------
                                  DG -#####----------
                                  DG -####-###-------
                                  DG --########------
                                  DG --#####-##------
                                  DG --#####-##------

                                  DG ----------##----
                                  DG ----------##----
                                  DG -----#----##----
                                  DG ------#---##----
                                  DG ------#---##----
                                  DG -------#--##----
                                  DG -------#--##----
                                  DG --------#-##----
                                  DG --#######-##----
                                  DG --##########----
                                  DG --#######-------
                                  DG ---#####--------
                                  DG ---####-###-----
                                  DG ----########----
                                  DG ----#####-##----
                                  DG ----#####-##----

                                  DG ------------##--
                                  DG ------------##--
                                  DG ------------##--
                                  DG ------------##--
                                  DG -----#------##--
                                  DG ------##----##--
                                  DG --------##--##--
                                  DG ----------#-##--
                                  DG ----#######-##--
                                  DG ----##########--
                                  DG ----#######-----
                                  DG -----#####------
                                  DG -----####-###---
                                  DG ------########--
                                  DG ------#####-##--
                                  DG ------#####-##--

                                  DG --------------##
                                  DG --------------##
                                  DG --------------##
                                  DG --------------##
                                  DG --------------##
                                  DG --------------##
                                  DG --------------##
                                  DG ------#######-##
                                  DG ------#######-##
                                  DG ------##########
                                  DG ------#######---
                                  DG -------#####----
                                  DG -------####-###-
                                  DG --------########
                                  DG --------#####-##
                                  DG --------#####-##

;------------------------------------------------------------------------------------------------------------------------------------------;

;----------------------------------------------------------------;
;                                                                ;
; Processing Plant (teleport: 136)                               ;
;                                                                ;
;----------------------------------------------------------------;

; The first 512 bytes are the attributes that define the layout of the cavern.

ProcessingPlantData               DH "1600000000000000000000000000000000000000000000000000000000000016"
                                  DH "1600000000000000000000000000000000000000000000000000000000000016"
                                  DH "1600000000000000000000000000000000000000000000000000000000000016"
                                  DH "1600000000000000000000000000000000000000000000000000000000000016"
                                  DH "1600000000000000000000000000000000000000000600000000000000000016"
                                  DH "1600000000000000444444000000004444000000004444444444000000000016"
                                  DH "1600004444000000000000000000000016000000000000000000000044444416"
                                  DH "1600000000000000000000000000000016000000000000000000000000000016"
                                  DH "1600000000000000000000000000000000000000000000444444444400000016"
                                  DH "1644440000000000000000000000000000000000000000000000000000000016"
                                  DH "1600000000000044444444444444444416444444444444444444000000000016"
                                  DH "1600000000000000000000000000000016060000000000000000000000000016"
                                  DH "1600004300000000000000000000000016000000000000000000000044444416"
                                  DH "1600000505050500000000000000000000000000000044440000000000000016"
                                  DH "1600000000000000000000000000000000000000000000000000000000000016"
                                  DH "1644444444444444444444444444444444444444444444444444444444444416"

; The next 32 bytes specify the cavern name.

                                  DEFM "       Processing Plant         "  ; Cavern name.

; The next 72 bytes contain the attributes and graphic data for the tiles used to build the cavern.

                                  DB $00                                   ; Attribute.
                                  DG --------                              ; Background
                                  DG --------
                                  DG --------
                                  DG --------
                                  DG --------
                                  DG --------
                                  DG --------
                                  DG --------

                                  DB $44                                   ; Attribute.
                                  DG ########                              ; Floor
                                  DG ########
                                  DG #--##--#
                                  DG #--##--#
                                  DG ########
                                  DG #--##--#
                                  DG -##--##-
                                  DG --------

                                  DB $04                                   ; Attribute.
                                  DG ########                              ; Crumbling floor
                                  DG ##-##-##
                                  DG #-#--#-#
                                  DG --#--#--
                                  DG -#-#--#-
                                  DG --#-----
                                  DG ----#---
                                  DG --------

                                  DB $16                                   ; Attribute.
                                  DG ########                              ; Wall
                                  DG #--##--#
                                  DG ########
                                  DG -##--##-
                                  DG ########
                                  DG #--##--#
                                  DG ########
                                  DG -##--##-

                                  DB $05                                   ; Attribute.
                                  DG ####----                              ; Conveyor
                                  DG -##--##-
                                  DG ####----
                                  DG -##--##-
                                  DG --------
                                  DG #--##--#
                                  DG ########
                                  DG --------

                                  DB $43                                   ; Attribute.
                                  DG -#---#--                              ; Nasty 1
                                  DG --#-#---
                                  DG #--#-#--
                                  DG -#-#---#
                                  DG --##-#-#
                                  DG ##-#-##-
                                  DG -#-##---
                                  DG ---#----

                                  DB $06                                   ; Attribute.
                                  DG --####--                              ; Nasty 2
                                  DG ---##---
                                  DG #-####-#
                                  DG ###--###
                                  DG ###--###
                                  DG #-####-#
                                  DG ---##---
                                  DG --####--

                                  DB $00                                   ; Attribute.
                                  DG --------                              ; Extra
                                  DG --------
                                  DG --------
                                  DG --------
                                  DG --------
                                  DG --------
                                  DG --------
                                  DG --------

; The next seven bytes specify Miner Willy's initial location and appearance in the cavern.

                                  DEFB 48                                  ; Pixel y-coordinate * 2.
                                  DEFB 3                                   ; Animation frame.
                                  DEFB 1                                   ; Direction and movement flags: facing left.
                                  DEFB 0                                   ; Airborne status indicator.
                                  DEFW 23663                               ; Location in the attribute buffer at 23552: (3,15).
                                  DEFB 0                                   ; Jumping animation counter.

; The next four bytes specify the direction, location and length of the conveyor.

                                  DEFB 0                                   ; Direction (left).
                                  DEFW 30883                               ; Location in the screen buffer at 28672: (13,3).
                                  DEFB 4                                   ; Length.

; The next byte and specifies the border colour.

                                  DEFB 2                                   ; Border colour.

; The next byte is not used.

                                  DEFB 0                                   ; Unused.

; The next 25 bytes specify the location and initial colour of the items in the cavern.

                                  DEFB 3                                   ; Item 1 at (6,15).
                                  DEFW 23759
                                  DEFB 96
                                  DEFB 255
                                  DEFB 4                                   ; Item 2 at (6,17).
                                  DEFW 23761
                                  DEFB 96
                                  DEFB 255
                                  DEFB 5                                   ; Item 3 at (7,30).
                                  DEFW 23806
                                  DEFB 96
                                  DEFB 255
                                  DEFB 6                                   ; Item 4 at (10,1).
                                  DEFW 23873
                                  DEFB 104
                                  DEFB 255
                                  DEFB 3                                   ; Item 5 at (11,13).
                                  DEFW 23917
                                  DEFB 104
                                  DEFB 255
                                  DEFB 255                                 ; Terminator.

; The next 37 bytes define the portal graphic and its location.

                                  DB $0E                                   ; Attribute.
                                  DG ################
                                  DG #------##------#
                                  DG #-############-#
                                  DG #-############-#
                                  DG #-##--------##-#
                                  DG #-##--------##-#
                                  DG #-##--------##-#
                                  DG ####--------####
                                  DG ####--------####
                                  DG #-##--------##-#
                                  DG #-##--------##-#
                                  DG #-##--------##-#
                                  DG #-############-#
                                  DG #-############-#
                                  DG #------##------#
                                  DG ################

                                  DW $5C1D                                 ; Location
                                  DW $601D

; Item graphic

                                  DG --##----
                                  DG -#--#---
                                  DG #---#---
                                  DG #--#----
                                  DG -##-#---
                                  DG -----#--
                                  DG ----#-#-
                                  DG -----#--

; The next byte specifies the initial air supply in the cavern.

                                  DEFB 63                                  ; Air.

; The next byte initialises the game clock.

                                  DEFB 128                                 ; Game clock.

; The next 28 bytes define the horizontal guardians.

                                  DEFB 70                                  ; Horizontal guardian 1:
                                  DEFW 23814                               ; y=8, initial x=6, 6<=x<=13, speed=normal.
                                  DEFB 104
                                  DEFB 0
                                  DEFB 6
                                  DEFB 13
                                  DEFB 67                                  ; Horizontal guardian 2:
                                  DEFW 23822                               ; y=8, initial x=14, 14<=x<=21, speed=normal.
                                  DEFB 104
                                  DEFB 1
                                  DEFB 14
                                  DEFB 21
                                  DEFB 69                                  ; Horizontal guardian 3:
                                  DEFW 23976                               ; y=13, initial x=8, 8<=x<=20, speed=normal.
                                  DEFB 104
                                  DEFB 2
                                  DEFB 168
                                  DEFB 180
                                  DEFB 6                                   ; Horizontal guardian 4:
                                  DEFW 23992                               ; y=13, initial x=24, 24<=x<=29, speed=normal.
                                  DEFB 104
                                  DEFB 3
                                  DEFB 184
                                  DEFB 189
                                  DEFB 255                                 ; Terminator.

; The next two bytes but are not used.

                                  DEFB 0,0                                 ; Unused.

; The next 28 bytes define the vertical guardians.

                                  DEFB 255,0,0,0,0,0,0                     ; Vertical guardian 1 (unused).
                                  DEFB 0,0,0,0,0,0,0                       ; Vertical guardian 2 (unused).
                                  DEFB 0,0,0,0,0,0,0                       ; Vertical guardian 3 (unused).
                                  DEFB 0,0,0,0,0,0,0                       ; Vertical guardian 4 (unused).

; The next 7 bytes are unused.

                                  DEFB 0,0,0,0,0,0,0                       ; Unused.

; The next 256 bytes define the guardian graphics.

                                  DG ---#####--------
                                  DG -#########------
                                  DG -###--#####-----
                                  DG ####--###-------
                                  DG #######---------
                                  DG #####-----------
                                  DG #######---------
                                  DG #########-------
                                  DG -##########-----
                                  DG -#########------
                                  DG ---#####--------
                                  DG ----#-#---------
                                  DG ----#-#---------
                                  DG ----#-#---------
                                  DG ----#-#---------
                                  DG ---#####--------

                                  DG -----#####------
                                  DG ---#########----
                                  DG ---####--###----
                                  DG --#####--####---
                                  DG --###########---
                                  DG --#####---------
                                  DG --###########---
                                  DG --###########---
                                  DG ---#########----
                                  DG ---#########----
                                  DG -----#####------
                                  DG ------#-#-------
                                  DG ------#-#-------
                                  DG -----#####------
                                  DG ----------------
                                  DG ----------------

                                  DG -------#####----
                                  DG -----#########--
                                  DG -----###--#####-
                                  DG ----####--###---
                                  DG ----#######-----
                                  DG ----#####-------
                                  DG ----#######-----
                                  DG ----#########---
                                  DG -----##########-
                                  DG -----#########--
                                  DG -------#####----
                                  DG -------#####----
                                  DG ----------------
                                  DG ----------------
                                  DG ----------------
                                  DG ----------------

                                  DG ---------#####--
                                  DG -------###--####
                                  DG -------###--###-
                                  DG ------########--
                                  DG ------######----
                                  DG ------#####-----
                                  DG ------######----
                                  DG ------########--
                                  DG -------########-
                                  DG -------#########
                                  DG ---------#####--
                                  DG ----------#-#---
                                  DG ----------#-#---
                                  DG ---------#####--
                                  DG ----------------
                                  DG ----------------

                                  DG --#####---------
                                  DG ####--###-------
                                  DG -###--###-------
                                  DG --########------
                                  DG ----######------
                                  DG -----#####------
                                  DG ----######------
                                  DG --########------
                                  DG -########-------
                                  DG #########-------
                                  DG --#####---------
                                  DG ---#-#----------
                                  DG ---#-#----------
                                  DG --#####---------
                                  DG ----------------
                                  DG ----------------

                                  DG ----#####-------
                                  DG --#########-----
                                  DG -#####--###-----
                                  DG ---###--####----
                                  DG -----#######----
                                  DG -------#####----
                                  DG -----#######----
                                  DG ---#########----
                                  DG -##########-----
                                  DG --#########-----
                                  DG ----#####-------
                                  DG ----#####-------
                                  DG ----------------
                                  DG ----------------
                                  DG ----------------
                                  DG ----------------

                                  DG ------#####-----
                                  DG ----#########---
                                  DG ----###--####---
                                  DG ---####--#####--
                                  DG ---###########--
                                  DG ---------#####--
                                  DG ---###########--
                                  DG ---###########--
                                  DG ----#########---
                                  DG ----#########---
                                  DG ------#####-----
                                  DG -------#-#------
                                  DG -------#-#------
                                  DG ------#####-----
                                  DG ----------------
                                  DG ----------------

                                  DG --------#####---
                                  DG ------#########-
                                  DG -----#####--###-
                                  DG -------###--####
                                  DG ---------#######
                                  DG -----------#####
                                  DG ---------#######
                                  DG -------#########
                                  DG -----##########-
                                  DG ------#########-
                                  DG --------#####---
                                  DG ---------#-#----
                                  DG ---------#-#----
                                  DG ---------#-#----
                                  DG ---------#-#----
                                  DG --------#####---

;------------------------------------------------------------------------------------------------------------------------------------------;

;----------------------------------------------------------------;
;                                                                ;
; The Vat (teleport: 236)                                        ;
;                                                                ;
;----------------------------------------------------------------;

; The first 512 bytes are the attributes that define the layout of the cavern.

TheVatData                        DH "4D000000000000000000000000004D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D"
                                  DH "4D0000000000000000000000000000000000000000000000000000000000004D"
                                  DH "4D0000000000000000000000000000000000000000000000000000000000004D"
                                  DH "4D000000000000000000000000000046464D020202020202020202020202004D"
                                  DH "4D000000000000000000000000000000004D020202020202020202020202024D"
                                  DH "4D000000000000040404040400004646464D020202020202020202021602024D"
                                  DH "4D464646000000000000000000000000004D020200020202020202020202024D"
                                  DH "4D000000000000000000000000000000004D020202020202020202000202024D"
                                  DH "4D460000000000000000000000000000004D020202020216020202020202024D"
                                  DH "4D000000000000000000000000004646464D020202020202020202020202024D"
                                  DH "4D464646464646464646464600000000004D020002020202020202021602024D"
                                  DH "4D000000000000000000000000000000004D020202020202020202020202004D"
                                  DH "4D000000000000000000000000004D4D4D4D020202020216020202020202024D"
                                  DH "4D000000000000000046464600004D000000000000000000000000000000004D"
                                  DH "4D000000000000000000000000004D000000000000000000000000000000004D"
                                  DH "4D464646464646464646464646464D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D"
; Cavern name

                                  defm "            The Vat             "

; Background
                                  db $00
                                  DG --------
                                  DG --------
                                  DG --------
                                  DG --------
                                  DG --------
                                  DG --------
                                  DG --------
                                  DG --------

; Floor
                                  db $46
                                  DG ########
                                  DG ########
                                  DG ##-##-##
                                  DG -##-###-
                                  DG ##---#-#
                                  DG -#------
                                  DG --------
                                  DG --------

; Crumbling floor
                                  db $02
                                  DG ########
                                  DG #-#-#-#-
                                  DG -#-#-#-#
                                  DG #-#-#-#-
                                  DG -#-#-#-#
                                  DG #-#-#-#-
                                  DG -#-#-#-#
                                  DG #-#-#-#-

; Wall
                                  db $4D
                                  DG --#---#-
                                  DG ########
                                  DG #---#---
                                  DG ########
                                  DG --#---#-
                                  DG ########
                                  DG #---#---
                                  DG ########

; Conveyor
                                  db $04
                                  DG ####-#--
                                  DG -##--##-
                                  DG ####-#--
                                  DG --------
                                  DG --------
                                  DG --------
                                  DG --------
                                  DG --------

; Nasty 1
                                  db $15
                                  DG -#---#--
                                  DG --#-#---
                                  DG #--#-#--
                                  DG -#-#---#
                                  DG --##-#-#
                                  DG ##-#-##-
                                  DG -#-##---
                                  DG ---#----

; Nasty 2
                                  db $16
                                  DG #-#--#-#
                                  DG -#----#-
                                  DG --####--
                                  DG ##-##-##
                                  DG --####--
                                  DG -######-
                                  DG #-#--#-#
                                  DG --#--#--

; Extra
                                  db $00
                                  DG --------
                                  DG --------
                                  DG --------
                                  DG --------
                                  DG --------
                                  DG --------
                                  DG --------
                                  DG --------

; Pixel y-coordinate * 2.
                        db $D0

; Animation frame.
                        db $00

; Direction and movement flags
                        db $00

; Airborne status indicator.
                        db $00

; Location in the attribute buffer at 23970
                        dw $5DA2

; Jumping animation counter
                        db $00

; Conveyor

; Direction
                        db $00

; Location in the screen buffer
                        dw $70A7

; Length.
                        db $05

; Border colour
                        db $04

; Unused?
                        db $00

; Item data

                        db $13
                        dw $5C7E
                        db $60,$FF

                        db $14
                        dw $5CD4
                        db $60,$FF

                        db $15
                        dw $5CFB
                        db $60,$FF

                        db $16
                        dw $5D53
                        db $68,$FF

                        db $13
                        dw $5D7E
                        db $68,$FF
; Terminator
                        db $FF


; Portal

                                  db $0B
                                  DG ################
                                  DG #------##------#
                                  DG #------##------#
                                  DG #------##------#
                                  DG #------##------#
                                  DG #------##------#
                                  DG #------##------#
                                  DG ################
                                  DG ################
                                  DG #------##------#
                                  DG #------##------#
                                  DG #------##------#
                                  DG #------##------#
                                  DG #------##------#
                                  DG #------##------#
                                  DG ################

; Location
                                  dw $5DAF,$68AF

; Item graphic

                                  DG --##----
                                  DG -#--#---
                                  DG #---#---
                                  DG #--#----
                                  DG -##-#---
                                  DG -----#--
                                  DG ----#-#-
                                  DG -----#--

; Air supply
                                  db $3F

; Game clock
                                  db $80

; Horizontal guardians

                                  db $45
                                  dw $5C2F
                                  db $60,$00,$2F,$3D

                                  db $43
                                  dw $5D0A
                                  db $68,$07,$02,$0A

                                  db $06
                                  dw $5DB1
                                  db $68,$00,$B1,$BD

                                  db $FF
                                  dw $0000
                                  db $00,$00,$00,$00

; Terminator
                                  db $FF

; Unused?
                                  db $00,$00

; Vertical guardians

                                  db $FF
                                  dw $0000
                                  db $00,$00,$00,$00

                                  db $00
                                  dw $0000
                                  db $00,$00,$00,$00

                                  db $00
                                  dw $0000
                                  db $00,$00,$00,$00

                                  db $00
                                  dw $0000
                                  db $00,$00,$00,$00

; Terminator
                                  db $00

; Unused?
                                  db $00,$00,$00,$00,$00,$00


                                  DG ---##-----------
                                  DG ---###----------
                                  DG ----#-#-#-------
                                  DG ----#####-------
                                  DG ----##----------
                                  DG ---###----------
                                  DG ---####---------
                                  DG ---###-#--------
                                  DG --####----------
                                  DG --#####---------
                                  DG --#####---------
                                  DG -##-###---------
                                  DG -#---#----------
                                  DG -#----#---------
                                  DG #------#--------
                                  DG ----------------

                                  DG ----------------
                                  DG ----------------
                                  DG -----##---------
                                  DG -----###--------
                                  DG ------#-#-#-----
                                  DG ------#####-----
                                  DG ------###-------
                                  DG -----###--------
                                  DG -----####-------
                                  DG -----###-#------
                                  DG ----####--------
                                  DG ----#####-------
                                  DG ----#####-------
                                  DG ---##-###-------
                                  DG --##--##--------
                                  DG -#------##------

                                  DG ----------------
                                  DG ----------------
                                  DG ----------------
                                  DG ----------------
                                  DG -------##-------
                                  DG -------###------
                                  DG --------#-#-#---
                                  DG --------#####---
                                  DG --------###-----
                                  DG -------###------
                                  DG -------####-----
                                  DG -------###-#----
                                  DG ------####------
                                  DG ------#####-----
                                  DG -----######-----
                                  DG --#####-#####---

                                  DG ----------------
                                  DG ----------------
                                  DG ---------##-----
                                  DG ---------###----
                                  DG ----------#-#-#-
                                  DG ----------#####-
                                  DG ----------###---
                                  DG ---------###----
                                  DG ---------####---
                                  DG ---------###-#--
                                  DG --------####----
                                  DG --------#####---
                                  DG -------######---
                                  DG -------##-##----
                                  DG ------##----##--
                                  DG -----#----------

                                  DG ----------------
                                  DG ----------------
                                  DG -----##---------
                                  DG ----###---------
                                  DG -#-#-#----------
                                  DG -#####----------
                                  DG ---###----------
                                  DG ----###---------
                                  DG ---####---------
                                  DG --#-###---------
                                  DG ----####--------
                                  DG ---#####--------
                                  DG ---######-------
                                  DG ----##-##-------
                                  DG --##----##------
                                  DG ----------#-----

                                  DG ----------------
                                  DG ----------------
                                  DG ----------------
                                  DG ----------------
                                  DG -------##-------
                                  DG ------###-------
                                  DG ---#-#-#--------
                                  DG ---#####--------
                                  DG -----###--------
                                  DG ------###-------
                                  DG -----####-------
                                  DG ----#-###-------
                                  DG ------####------
                                  DG -----#####------
                                  DG -----######-----
                                  DG ---#####-#####--

                                  DG ----------------
                                  DG ----------------
                                  DG ---------##-----
                                  DG --------###-----
                                  DG -----#-#-#------
                                  DG -----#####------
                                  DG -------###------
                                  DG --------###-----
                                  DG -------####-----
                                  DG ------#-###-----
                                  DG --------####----
                                  DG -------#####----
                                  DG -------#####----
                                  DG -------###-##---
                                  DG --------##--##--
                                  DG ------##------#-

                                  DG -----------##---
                                  DG ----------###---
                                  DG -------#-#-#----
                                  DG -------#####----
                                  DG ----------##----
                                  DG ----------###---
                                  DG ---------####---
                                  DG --------#-###---
                                  DG ----------####--
                                  DG ---------#####--
                                  DG ---------#####--
                                  DG ---------###-##-
                                  DG ----------#---#-
                                  DG ---------#----#-
                                  DG --------#------#
                                  DG ----------------

;------------------------------------------------------------------------------------------------------------------------------------------;

;----------------------------------------------------------------;
;                                                                ;
; Miner Willy meets the Kong Beast (teleport: 1236)              ;
;                                                                ;
;----------------------------------------------------------------;

; The first 512 bytes are the attributes that define the layout of the cavern.

MinerWillyMeetsTheKongBeastData   DH "7200050000000600000005000000000000720600720000000000000000000072"
                                  DH "7200000000000000000000000000000000720000720000000000000000000072"
                                  DH "7200000000000000000000000000004242720000000000000000000000424272"
                                  DH "7200000000000000000000000000000000720000000000000000000000000072"
                                  DH "7200000000000000000000000000000000720000000000000000000000000072"
                                  DH "7242424200000000004242424242420000724242000000000000000000000072"
                                  DH "7200000000000000000000000000000000720000004242424200000000004272"
                                  DH "7200424242000000000000000000000000720000000000000000004200000072"
                                  DH "7200000000000000424242000000000000720000000000000000000000000072"
                                  DH "7200000000000000000000000000000000724242424242000000000000000072"
                                  DH "7242000000000000000000004242420000720000000000000000004242424272"
                                  DH "7200000000000000004242000000000000720000000000000000000000000072"
                                  DH "7200000042420000000000000000000000720000000042424242420000000072"
                                  DH "7200000000000000000000444444720000724242000000000000000000000072"
                                  DH "7200000000000000000000000000720000720000000000040000000000000072"
                                  DH "7242424242424242424242424242424242424242424242424242424242424272"

; Cavern name

                        defm "Miner Willy meets the Kong Beast"

; Background
                        db $00
                        dg --------
                        dg --------
                        dg --------
                        dg --------
                        dg --------
                        dg --------
                        dg --------
                        dg --------

; Floor
                        db $42
                        dg ########
                        dg ########
                        dg ##-##-##
                        dg -##-###-
                        dg ##---#-#
                        dg -#------
                        dg --------
                        dg --------

; Crumbling floor
                        db $02
                        dg ########
                        dg ##-##-##
                        dg #-#--#-#
                        dg --#--#--
                        dg -#-#--#-
                        dg --#-----
                        dg ----#---
                        dg --------

; Wall
                        db $72
                        dg --#---#-
                        dg ########
                        dg #---#---
                        dg ########
                        dg --#---#-
                        dg ########
                        dg #---#---
                        dg ########

; Conveyor
                        db $44
                        dg ####----
                        dg -##--##-
                        dg ####----
                        dg #-#-#-#-
                        dg --------
                        dg --------
                        dg --------
                        dg --------

; Nasty 1
                        db $04
                        dg -#---#--
                        dg --#-#---
                        dg #--#-#--
                        dg -#-#---#
                        dg --##-#-#
                        dg ##-#-##-
                        dg -#-##---
                        dg ---#----

; Nasty 2
                        db $05
                        dg -######-
                        dg --####--
                        dg ---###--
                        dg ---##---
                        dg ---##---
                        dg ----#---
                        dg ----#---
                        dg ----#---

; Extra
                        db $06
                        dg ########
                        dg #------#
                        dg #------#
                        dg -#----#-
                        dg --####--
                        dg ---#----
                        dg -##-----
                        dg -##-----

; Pixel y-coordinate * 2.
                        db $D0

; Animation frame.
                        db $00

; Direction and movement flags
                        db $00

; Airborne status indicator.
                        db $00

; Location in the attribute buffer at 23970
                        dw $5DA2

; Jumping animation counter
                        db $00

; Conveyor

; Direction
                        db $01

; Location in the screen buffer
                        dw $78AB

; Length.
                        db $03

; Border colour
                        db $02

; Unused?
                        db $00

; Item data

                        db $03
                        dw $5C4D
                        db $60,$FF

                        db $04
                        dw $5CCE
                        db $60,$FF

                        db $05
                        dw $5D02
                        db $68,$FF

                        db $06
                        dw $5DBD
                        db $68,$FF

                        db $FF
                        dw $FFFF
                        db $FF,$FF
; Terminator
                        db $FF


; Portal

                        db $0E
                        dg ################
                        dg #--------------#
                        dg ##------------##
                        dg #-#----------#-#
                        dg #--#--------#--#
                        dg ##--#------#--##
                        dg #-#--#----#--#-#
                        dg #--#--#--#--#--#
                        dg ##--#--##--#--##
                        dg #-#--#----#--#-#
                        dg #--#--#--#--#--#
                        dg ##--#--##--#--##
                        dg #-#--#----#--#-#
                        dg ##--#--##--#--##
                        dg #--#--#--#--#--#
                        dg ################

; Location
                        dw $5DAF,$68AF

; Item graphic

                        dg #-------
                        dg ##------
                        dg ###-##--
                        dg -###--#-
                        dg --#-#---
                        dg -#-#-#--
                        dg #---#-#-
                        dg #----###

; Air supply
                        db $3F

; Game clock
                        db $80

; Horizontal guardians

                        db $44
                        dw $5DA9
                        db $68,$07,$A1,$A9

                        db $C3
                        dw $5D6B
                        db $68,$00,$6B,$6F

                        db $00
                        dw $0000
                        db $00,$00,$00,$00

                        db $05
                        dw $5CF2
                        db $60,$00,$F2,$F5

; Terminator
                        db $FF

; Unused?
                        db $00,$00

; Vertical guardians

                        db $FF
                        dw $0000
                        db $00,$00,$00,$00

                        db $00
                        dw $0000
                        db $00,$00,$00,$00

                        db $00
                        dw $0000
                        db $00,$00,$00,$00

                        db $00
                        dw $0000
                        db $00,$00,$00,$00

; Terminator
                        db $00

; Unused?
                        db $00,$00,$00,$00,$00,$00


                        DG ---#--####--#---
                        DG ---###-##-###---
                        DG ----########----
                        DG -----##--##-----
                        DG -----#-##-#-----
                        DG ------#--#------
                        DG -----######-----
                        DG ----########----
                        DG ---##########---
                        DG --##--####--##--
                        DG -##---####---##-
                        DG -#---##--##---#-
                        DG --#-##----##-#--
                        DG -----##--##-----
                        DG ------#--#------
                        DG ----###--###----

                        DG ----#-####-#----
                        DG ----##-##-##----
                        DG ----########----
                        DG -----##--##-----
                        DG -----#-##-#-----
                        DG ------#--#------
                        DG ------####------
                        DG ---##########---
                        DG -##############-
                        DG ###--######--###
                        DG #-----####-----#
                        DG ##---######---##
                        DG -----##--##-----
                        DG ----##----##----
                        DG ----#------#----
                        DG --###------###--

                        DG ---###----###---
                        DG -----##--##-----
                        DG ----##----##----
                        DG -##--##--##--##-
                        DG --#---####---#--
                        DG -##--######--##-
                        DG --##-######-##--
                        DG ---##########---
                        DG ----########----
                        DG -----######-----
                        DG ------#--#------
                        DG -----#-##-#-----
                        DG -----##--##-----
                        DG ----########----
                        DG ----##-##-##----
                        DG ----#-####-#----

                        DG -###--------###-
                        DG ---##------##---
                        DG ----##----##----
                        DG -----##--##-----
                        DG -##---####---##-
                        DG --#--######--#--
                        DG -##--######--##-
                        DG --##-######-##--
                        DG ---##########---
                        DG ----########----
                        DG ------#--#------
                        DG -----#-##-#-----
                        DG ---#-##--##-#---
                        DG ----########----
                        DG ----##-##-##----
                        DG ------####------

                        DG ----#-----------
                        DG -----#-#--------
                        DG ----#---#-------
                        DG --#--#-#--------
                        DG -#--#---#-------
                        DG --#----#--------
                        DG -#--##----------
                        DG --##--##--------
                        DG -#---#--#-------
                        DG -#---#--#-------
                        DG #---#----#------
                        DG #----#---#------
                        DG -#--#---#-------
                        DG -#--#---#-------
                        DG --##--##--------
                        DG ----##----------

                        DG ------#---------
                        DG ---#---#--#-----
                        DG ----#-#--#------
                        DG ---#---#--#-----
                        DG ----#-#--#------
                        DG ---#------#-----
                        DG ------##--------
                        DG ----##--##------
                        DG ---#------#-----
                        DG ---#-----##-----
                        DG --#---#-#--#----
                        DG --#--#-#---#----
                        DG ---##-----#-----
                        DG ---#------#-----
                        DG ----##--##------
                        DG ------##--------

                        DG ---------#------
                        DG ------#---#-----
                        DG -----#---#--#---
                        DG ------#---#--#--
                        DG -----#---#--#---
                        DG ------#------#--
                        DG --------##--#---
                        DG ------##--##----
                        DG -----#------#---
                        DG -----#------#---
                        DG ----#-##-#---#--
                        DG ----#---#-##-#--
                        DG -----#------#---
                        DG -----#------#---
                        DG ------##--##----
                        DG --------##------

                        DG ---------#---#--
                        DG -------#--#---#-
                        DG ------#--#---#--
                        DG -------#--#---#-
                        DG ------#--#---#--
                        DG -------#------#-
                        DG ------#---##----
                        DG --------##--##--
                        DG -------#-#----#-
                        DG -------#--#---#-
                        DG ------#----#---#
                        DG ------#---#----#
                        DG -------#---#--#-
                        DG -------#----#-#-
                        DG --------##--##--
                        DG ----------##----

;------------------------------------------------------------------------------------------------------------------------------------------;

;----------------------------------------------------------------;
;                                                                ;
; Wacky Amoebatrons (teleport: 46)                               ;
;                                                                ;
;----------------------------------------------------------------;

; The first 512 bytes are the attributes that define the layout of the cavern.

; Cavern attributes

WackyAmoebatronsData    dh "1600001600000000000000000000000000000000000000000000000000000016"
                        dh "1600000000000000000000000000000000000000000000000000000000000016"
                        dh "1600000000000000000000000000000000000000000000000000000000000016"
                        dh "1600000000000000000000000000000000000000000000000000000000000016"
                        dh "1600000000000000000000000000000000000000000000000000000000000016"
                        dh "1606060606000006060600000606060606060606000006060600000606000016"
                        dh "1600000000000000000000000000000000000000000000000000000000000016"
                        dh "1600000000000000000000000000000000000000000000000000000000060616"
                        dh "1600000606000006060600000404040404040404000000000000000000000016"
                        dh "1600000000000000000000000000000000000000000006060600000606000016"
                        dh "1606060000000000000000000000000000000000000000000000000000000016"
                        dh "1600000000000000000000000000000000000000000000000000000000000016"
                        dh "1600000606000006060600000606060606060606000006060600000606000016"
                        dh "1600000000000000000000000000000000000000000000000000000000060616"
                        dh "1600000000000000000000000000000000000000000000000000000000000016"
                        dh "1606060606060606060606060606060606060606060606060606060606060616"

; Cavern name

                        defm "        Wacky Amoebatrons       "

; Background
                        db $00
                        dg --------
                        dg --------
                        dg --------
                        dg --------
                        dg --------
                        dg --------
                        dg --------
                        dg --------

; Floor
                        db $06
                        dg ########
                        dg ########
                        dg ##-##-##
                        dg -##-###-
                        dg ##---#-#
                        dg -#------
                        dg --------
                        dg --------

; Crumbling floor
                        db $42
                        dg ########
                        dg ##-##-##
                        dg #-#--#-#
                        dg --#--#--
                        dg -#-#--#-
                        dg --#-----
                        dg ----#---
                        dg --------

; Wall
                        db $16
                        dg -#-##-#-
                        dg -#-##-#-
                        dg -#-##-#-
                        dg -#-##-#-
                        dg -#-##-#-
                        dg -#-##-#-
                        dg -#-##-#-
                        dg -#-##-#-

; Conveyor
                        db $04
                        dg ####----
                        dg -##--##-
                        dg ####----
                        dg -##--##-
                        dg --------
                        dg --------
                        dg --------
                        dg --------

; Nasty 1
                        db $44
                        dg -#---#--
                        dg --#-#---
                        dg #--#-#--
                        dg -#-#---#
                        dg --##-#-#
                        dg ##-#-##-
                        dg -#-##---
                        dg ---#----

; Nasty 2
                        db $05
                        dg -######-
                        dg --####--
                        dg ---###--
                        dg ---##---
                        dg ---##---
                        dg ----#---
                        dg ----#---
                        dg ----#---

; Extra
                        db $00
                        dg --------
                        dg --------
                        dg --------
                        dg --------
                        dg --------
                        dg --------
                        dg --------
                        dg --------

; Pixel y-coordinate * 2.
                        db $D0

; Animation frame.
                        db $00

; Direction and movement flags
                        db $00

; Airborne status indicator.
                        db $00

; Location in the attribute buffer at 23970
                        dw $5DA1

; Jumping animation counter
                        db $00

; Conveyor

; Direction
                        db $01

; Location in the screen buffer
                        dw $780C

; Length.
                        db $08

; Border colour
                        db $01

; Unused?
                        db $00

; Item data

                        db $03
                        dw $5C30
                        db $60,$FF

                        db $FF
                        dw $FFFF
                        db $FF,$FF

                        db $00
                        dw $FFFF
                        db $FF,$FF

                        db $00
                        dw $FFFF
                        db $FF,$FF

                        db $00
                        dw $FFFF
                        db $FF,$FF
; Terminator
                        db $FF


; Portal

                        db $0E
                        dg ################
                        dg #--------------#
                        dg #------##------#
                        dg #-----#--#-----#
                        dg #----#----#----#
                        dg #---#------#---#
                        dg #--#--------#--#
                        dg #-#----##----#-#
                        dg #-#----##----#-#
                        dg #--#--------#--#
                        dg #---#------#---#
                        dg #----#----#----#
                        dg #-----#--#-----#
                        dg #------##------#
                        dg #--------------#
                        dg ################

; Location
                        dw $5C01,$6001

; Item graphic

                        dg --##----
                        dg -#--#---
                        dg #---#---
                        dg #--#----
                        dg -##-#---
                        dg -----#--
                        dg ----#-#-
                        dg -----#--

; Air supply
                        db $3F

; Game clock
                        db $80

; Horizontal guardians

                        db $44
                        dw $5C6C
                        db $60,$00,$6C,$72

                        db $85
                        dw $5D50
                        db $68,$00,$4C,$52

                        db $00
                        dw $0000
                        db $00,$00,$00,$00

                        db $00
                        dw $0000
                        db $00,$00,$00,$00

; Terminator
                        db $FF

; Unused?
                        db $00,$00

; Vertical guardians

                        db $43
                        dw $0800
                        db $05,$01,$05,$64

                        db $04
                        dw $0801
                        db $0A,$02,$05,$64

                        db $05
                        dw $0802
                        db $14,$01,$05,$64

                        db $42
                        dw $0803
                        db $19,$02,$05,$64

; Terminator
                        db $FF

; Unused?
                        db $00,$00,$00,$00,$00,$00


                        DG ----#-#---#-----
                        DG ---#-##--##-#---
                        DG -------#-#-#----
                        DG --###--#-##---#-
                        DG -##--#-###--###-
                        DG ------####-#----
                        DG ###########-###-
                        DG #----#######---#
                        DG -###-######--#--
                        DG ##---###########
                        DG #---#-######---#
                        DG --##--#-#-#-##--
                        DG -##--#--#-#--##-
                        DG -#--#--##-#---#-
                        DG ---#--#-#--#----
                        DG --##-##-#--##---

                        DG ----------------
                        DG -----#-#--#-----
                        DG ------##-#------
                        DG --##---#-###-#--
                        DG ---###-###--##--
                        DG ------####-#----
                        DG --#########-##--
                        DG -----#######-#--
                        DG --#########-----
                        DG -##--#########--
                        DG ----#-######--#-
                        DG --##--#-#-#-##--
                        DG --#--#--#-#--#--
                        DG ----#-###--#----
                        DG ---##-#-##-##---
                        DG --------##------

                        DG ----------------
                        DG ----------------
                        DG ------#---#-----
                        DG ----#--#-##-----
                        DG -----#-###--#---
                        DG ------####-#----
                        DG ---########-----
                        DG -----########---
                        DG ---########-----
                        DG ---#-########---
                        DG ----########----
                        DG ---#--#-#-#-#---
                        DG -----#-##-#-----
                        DG ----#-#-#-##----
                        DG --------##------
                        DG ----------------

                        DG ----------------
                        DG -----#-#--#-----
                        DG ------##-#------
                        DG --##---#-###-#--
                        DG ---###-###--##--
                        DG ------####-#----
                        DG --#########-##--
                        DG -----#######-#--
                        DG --#########-----
                        DG -##--#########--
                        DG ----#-######--#-
                        DG --##--#-#-#-##--
                        DG --#--#--#-#--#--
                        DG ----#-###--#----
                        DG ---##-#-##-##---
                        DG --------##------

                        DG ----##----------
                        DG ----##----------
                        DG ----##----------
                        DG ----##----------
                        DG ----##----------
                        DG ----##----------
                        DG ----##----------
                        DG ----##----------
                        DG ----##----------
                        DG ----##----------
                        DG ##########------
                        DG ----##----------
                        DG -##----##-------
                        DG ##-#--#-##------
                        DG #-##--##-#------
                        DG -##----##-------

                        DG ------##--------
                        DG ------##--------
                        DG ------##--------
                        DG ------##--------
                        DG ------##--------
                        DG ------##--------
                        DG ------##--------
                        DG ------##--------
                        DG ------##--------
                        DG ------##--------
                        DG --##########----
                        DG ------##--------
                        DG ---##----##-----
                        DG --#--#--##-#----
                        DG --####--##-#----
                        DG ---##----##-----

                        DG --------##------
                        DG --------##------
                        DG --------##------
                        DG --------##------
                        DG --------##------
                        DG --------##------
                        DG --------##------
                        DG --------##------
                        DG --------##------
                        DG --------##------
                        DG ----##########--
                        DG --------##------
                        DG -----##----##---
                        DG ----#-##--##-#--
                        DG ----##-#--#-##--
                        DG -----##----##---

                        DG ----------##----
                        DG ----------##----
                        DG ----------##----
                        DG ----------##----
                        DG ----------##----
                        DG ----------##----
                        DG ----------##----
                        DG ----------##----
                        DG ----------##----
                        DG ----------##----
                        DG ------##########
                        DG ----------##----
                        DG -------##----##-
                        DG ------#--#--##-#
                        DG ------####--##-#
                        DG -------##----##-

;------------------------------------------------------------------------------------------------------------------------------------------;

;----------------------------------------------------------------;
;                                                                ;
; The Endorian Forest (teleport: 146)                            ;
;                                                                ;
;----------------------------------------------------------------;

; The first 512 bytes are the attributes that define the layout of the cavern.

; Cavern attributes

TheEndorianForestData             DH "1600000000000000000000040044444416000400044444444444444444444416"
                                  DH "1600000000000000000000000000000016000000000400000000000000000016"
                                  DH "1644444444444400000000000000000016000000000000000000004444444416"
                                  DH "1600000400000000000000000000000016000000000000000000000000000016"
                                  DH "1600000000000000000000000000000016444444440000000000000000000016"
                                  DH "1600000000000000440202020202020216000000000000444444444444444416"
                                  DH "1644444444000000000000000000000016000000000000000000000000000016"
                                  DH "1600000000000000000000000000000016444444444444440202020000000016"
                                  DH "1644444444440000000000000000000016000000000000000000000000000016"
                                  DH "1604000000000000004444444444444416000000000000000000000000444416"
                                  DH "1644444444020200000000000000000016444444444444440000000000000416"
                                  DH "1600000000000000000000000000000016000000000000040202020000000016"
                                  DH "1600000000000000050505050505050505050000000000000000000000000016"
                                  DH "1644444400000000000000000000000000000000000000000000000044444416"
                                  DH "1600000000000000000000000000000000000000000000000000000000000016"
                                  DH "0505050505050505050505050505050505050505050505050505050505050505"

; Cavern name

                        defm "       The Endorian Forest      "

; Background
                        db $00
                        dg --------
                        dg --------
                        dg --------
                        dg --------
                        dg --------
                        dg --------
                        dg --------
                        dg --------

; Floor
                        db $44
                        dg -#####--
                        dg ########
                        dg ###-####
                        dg ---####-
                        dg ----##--
                        dg ----#---
                        dg ----#---
                        dg ----#---

; Crumbling floor
                        db $02
                        dg ######--
                        dg ########
                        dg #----###
                        dg ----##--
                        dg ----#---
                        dg ----#---
                        dg ----#---
                        dg --------

; Wall
                        db $16
                        dg -#--#-#-
                        dg -#--#-#-
                        dg -#--#-#-
                        dg -#-#--#-
                        dg -#-#-#--
                        dg -#--#-#-
                        dg --#-#-#-
                        dg --#-#-#-

; Conveyor
                        db $43
                        dg ####----
                        dg -##--##-
                        dg ####----
                        dg -##--##-
                        dg --------
                        dg --------
                        dg --------
                        dg --------

; Nasty 1
                        db $45
                        dg -#---#--
                        dg --#-#---
                        dg #--#-#--
                        dg -#-#---#
                        dg --##-#-#
                        dg ##-#-##-
                        dg -#-##---
                        dg ---#----

; Nasty 2
                        db $04
                        dg -#--#---
                        dg #-##--#-
                        dg -#-###-#
                        dg ---#--#-
                        dg -###----
                        dg #-#-###-
                        dg #-#-#--#
                        dg -#---###

; Extra
                        db $05
                        dg ########
                        dg ########
                        dg ##--#-#-
                        dg -##--#-#
                        dg #--#--#-
                        dg --#-#---
                        dg #-----#-
                        dg --------

; Pixel y-coordinate * 2.
                        db $40

; Animation frame.
                        db $00

; Direction and movement flags
                        db $00

; Airborne status indicator.
                        db $00

; Location in the attribute buffer at 23970
                        dw $5C81

; Jumping animation counter
                        db $00

; Conveyor

; Direction
                        db $00

; Location in the screen buffer
                        dw $7013

; Length.
                        db $01

; Border colour
                        db $02

; Unused?
                        db $00

; Item data

                        db $03
                        dw $5C55
                        db $60,$FF

                        db $04
                        dw $5C2E
                        db $60,$FF

                        db $05
                        dw $5CCC
                        db $60,$FF

                        db $06
                        dw $5D12
                        db $68,$FF

                        db $03
                        dw $5C3E
                        db $60,$FF
; Terminator
                        db $FF


; Portal

                        db $1E
                        dg ################
                        dg #####---#---####
                        dg #---#---#--#---#
                        dg #-#-#-#-#--#---#
                        dg #-#-#-#-#--#-#-#
                        dg #---#-#-#----#-#
                        dg #--#----#--#---#
                        dg ##-#-#-##-###--#
                        dg ##-#-#-#-#-#-#-#
                        dg ##-#---#-#---#-#
                        dg #---#--#--###--#
                        dg #---#--#------##
                        dg #-#-#---#-#-#-##
                        dg #-#-#-#-#-#-#-##
                        dg #---#-#-#---#--#
                        dg ################

; Location
                        dw $5DAC,$68AC

; Item graphic

                        dg ----#---
                        dg ----#---
                        dg --#####-
                        dg -#-#####
                        dg -#-#####
                        dg -#---###
                        dg -##----#
                        dg --#####-

; Air supply
                        db $3F

; Game clock
                        db $F8

; Horizontal guardians

                        db $46
                        dw $5CE9
                        db $60,$00,$E9,$EE

                        db $C2
                        dw $5D4C
                        db $68,$00,$48,$4E

                        db $43
                        dw $5DA8
                        db $68,$00,$A4,$BA

                        db $05
                        dw $5CB2
                        db $60,$00,$B1,$B5

; Terminator
                        db $FF

; Unused?
                        db $00,$00

; Vertical guardians

                        db $FF
                        dw $0000
                        db $00,$00,$00,$00

                        db $00
                        dw $0000
                        db $00,$00,$00,$00

                        db $00
                        dw $0000
                        db $00,$00,$00,$00

                        db $00
                        dw $0000
                        db $00,$00,$00,$00

; Terminator
                        db $00

; Unused?
                        db $00,$00,$00,$00,$00,$00


                        DG -###------------
                        DG -#-#------------
                        DG -#####----------
                        DG --##-#----------
                        DG --#####---------
                        DG --#####---------
                        DG ---##-----------
                        DG --####----------
                        DG -######---------
                        DG -######---------
                        DG ####-###--------
                        DG #####-##--------
                        DG --####----------
                        DG -###-##---------
                        DG -##-###---------
                        DG -###-###--------

                        DG ---###----------
                        DG ---#-#----------
                        DG ---#####--------
                        DG ----##-#--------
                        DG ----#####-------
                        DG ----#####-------
                        DG -----##---------
                        DG ----####--------
                        DG ---##-###-------
                        DG ---##-###-------
                        DG ---##-###-------
                        DG ---###-##-------
                        DG ----####--------
                        DG -----##---------
                        DG -----##---------
                        DG -----###--------

                        DG -----###--------
                        DG -----#-#--------
                        DG -----#####------
                        DG ------##-#------
                        DG ------#####-----
                        DG ------#####-----
                        DG -------##-------
                        DG ------####------
                        DG -----######-----
                        DG -----######-----
                        DG ----####-###----
                        DG ----#####-##----
                        DG ------####------
                        DG -----###-##-----
                        DG -----##-###-----
                        DG -----###-###----

                        DG -------###------
                        DG -------#-#------
                        DG -------#####----
                        DG --------##-#----
                        DG --------#####---
                        DG --------#####---
                        DG ---------##-----
                        DG --------####----
                        DG -------######---
                        DG ------########--
                        DG -----##########-
                        DG -----##-####-##-
                        DG --------#####---
                        DG -------###-##-#-
                        DG ------##----###-
                        DG ------###----#--

                        DG ------###-------
                        DG -----##-#-------
                        DG ----#####-------
                        DG ----#-##--------
                        DG ---#####--------
                        DG ---#####--------
                        DG -----##---------
                        DG ----####--------
                        DG ---######-------
                        DG --########------
                        DG -##########-----
                        DG -##-####-##-----
                        DG ---#####--------
                        DG -#-##-###-------
                        DG -###----##------
                        DG --#----###------

                        DG --------###-----
                        DG -------##-#-----
                        DG ------#####-----
                        DG ------#-##------
                        DG -----#####------
                        DG -----#####------
                        DG -------##-------
                        DG ------####------
                        DG -----######-----
                        DG -----######-----
                        DG ----###-####----
                        DG ----##-#####----
                        DG ------####------
                        DG -----##-###-----
                        DG -----###-##-----
                        DG ----###-###-----

                        DG ----------###---
                        DG ---------##-#---
                        DG --------#####---
                        DG --------#-##----
                        DG -------#####----
                        DG -------#####----
                        DG ---------##-----
                        DG --------####----
                        DG -------######---
                        DG -------###-##---
                        DG -------###-##---
                        DG -------##-###---
                        DG --------####----
                        DG ---------##-----
                        DG ---------##-----
                        DG --------###-----

                        DG ------------###-
                        DG -----------##-#-
                        DG ----------#####-
                        DG ----------#-##--
                        DG ---------#####--
                        DG ---------#####--
                        DG -----------##---
                        DG ----------####--
                        DG ---------######-
                        DG ---------######-
                        DG --------###-####
                        DG --------##-#####
                        DG ----------####--
                        DG ---------##-###-
                        DG ---------###-##-
                        DG --------###-###-

;------------------------------------------------------------------------------------------------------------------------------------------;

;----------------------------------------------------------------;
;                                                                ;
; Attack of the Mutant Telephones (teleport: 246)                ;
;                                                                ;
;----------------------------------------------------------------;

; The first 512 bytes are the attributes that define the layout of the cavern.

; Cavern attributes

AttackOfTheMutantTelephonesData   DH "0E0E0E0E0E0E0E0000000000000000000000004200000000000000000000000E"
                                  DH "0E0000000000000000000000000000000000004600000000000000000000000E"
                                  DH "0E0000000000000000000000000000000000000000000000000000000000000E"
                                  DH "0E4141414100000000000000000000000000000000000000000000000000000E"
                                  DH "0E0000000000000000000000000000000000000000000000000000000000000E"
                                  DH "0E0000000041414141414100000000414145454545454545414100000000000E"
                                  DH "0E0000000000000000000000000000000000000000000000420000000041410E"
                                  DH "0E0000000000000000000000000000000000000000000000420000000000000E"
                                  DH "0E4141000006060000000000000000000000000000000000420000000041410E"
                                  DH "0E0000000000000000000041414141414141414100000000460000000000000E"
                                  DH "0E0000000000000000000000420000000000004200000000000000004100000E"
                                  DH "0E0000000000010101410000420000000000004600000000000000000000000E"
                                  DH "0E0000000000000000000000460000000000000000000000000000004141410E"
                                  DH "0E4141000000000000000000000000000000000000000041414100000000000E"
                                  DH "0E0000000000000000000000000000000000000000000000000000000000000E"
                                  DH "0E4141414141414141414141414141414141414141414141414141414141410E"

; Cavern name

                        defm "Attack of the Mutant Telephones "

; Background
                        db $00
                        DG --------
                        DG --------
                        DG --------
                        DG --------
                        DG --------
                        DG --------
                        DG --------
                        DG --------

; Floor
                        db $41
                        DG ########
                        DG ########
                        DG ##-##-##
                        DG -##-###-
                        DG ##---#-#
                        DG -#------
                        DG --------
                        DG --------

; Crumbling floor
                        db $01
                        DG ########
                        DG ##-##-##
                        DG #-#--#-#
                        DG --#--#--
                        DG -#-#--#-
                        DG --#-----
                        DG ----#---
                        DG --------

; Wall
                        db $0E
                        DG #-#-#-#-
                        DG -#-#-#-#
                        DG #-#-#-#-
                        DG -#-#-#-#
                        DG #-#-#-#-
                        DG -#-#-#-#
                        DG #-#-#-#-
                        DG -#-#-#-#

; Conveyor
                        db $06
                        DG #######-
                        DG -##--##-
                        DG #######-
                        DG --------
                        DG --------
                        DG --------
                        DG --------
                        DG --------

; Nasty 1
                        db $46
                        DG ---#----
                        DG ---#----
                        DG ##-#-##-
                        DG --###---
                        DG ##-#-##-
                        DG --###---
                        DG -#-#-#--
                        DG #--#--#-

; Nasty 2
                        db $42
                        DG ---#----
                        DG ---#----
                        DG ---#----
                        DG ---#----
                        DG ---#----
                        DG ---#----
                        DG ---#----
                        DG ---#----

; Extra
                        db $45
                        DG ########
                        DG ########
                        DG ########
                        DG ########
                        DG #-#-#-#-
                        DG --------
                        DG --------
                        DG --------

; Pixel y-coordinate * 2.
                        db $10

; Animation frame.
                        db $00

; Direction and movement flags
                        db $00

; Airborne status indicator.
                        db $00

; Location in the attribute buffer at 23970
                        dw $5C23

; Jumping animation counter
                        db $00

; Conveyor

; Direction
                        db $00

; Location in the screen buffer
                        dw $7805

; Length.
                        db $02

; Border colour
                        db $02

; Unused?
                        db $00

; Item data

                        db $03
                        dw $5C18
                        db $60,$FF

                        db $04
                        dw $5C3E
                        db $60,$FF

                        db $05
                        dw $5C81
                        db $60,$FF

                        db $06
                        dw $5CD3
                        db $60,$FF

                        db $03
                        dw $5DBE
                        db $68,$FF
; Terminator
                        db $FF


; Portal

                        db $56
                        DG ################
                        DG ##-##-#-#-#-#-##
                        DG ###-#-#--##-#-##
                        DG ################
                        DG #--#--------#--#
                        DG #--#--------#--#
                        DG ################
                        DG #--#--------#--#
                        DG #--#--------#--#
                        DG ################
                        DG #--#--------#--#
                        DG #--#--------#--#
                        DG ################
                        DG #--#--------#--#
                        DG #--#--------#--#
                        DG ################

; Location
                        dw $5C21,$6021

; Item graphic

                        DG --####--
                        DG -#-##-#-
                        DG #--#-#-#
                        DG ##-#-#-#
                        DG ##-#-#-#
                        DG ##-#-#-#
                        DG -#-##-#-
                        DG --####--

; Air supply
                        db $3F

; Game clock
                        db $80

; Horizontal guardians

                        db $46
                        dw $5C6F
                        db $60,$00,$6F,$78

                        db $C4
                        dw $5CEE
                        db $60,$00,$EE,$F2

                        db $42
                        dw $5DAF
                        db $68,$07,$A5,$B3

                        db $FF
                        dw $0000
                        db $00,$00,$00,$00

; Terminator
                        db $FF

; Unused?
                        db $00,$00

; Vertical guardians

                        db $43
                        dw $0800
                        db $0C,$02,$02,$38

                        db $04
                        dw $2001
                        db $03,$01,$20,$64

                        db $06
                        dw $3002
                        db $15,$01,$30,$64

                        db $42
                        dw $3003
                        db $1A,$FD,$04,$64

; Terminator
                        db $FF

; Unused?
                        db $00,$00,$00,$00,$00,$00


                        DG ----------------
                        DG ----------------
                        DG --############--
                        DG -##---####---##-
                        DG ###-#-####-#-###
                        DG ###-#------#-###
                        DG ----########----
                        DG -----######-----
                        DG ----##----##----
                        DG ----#-####-#----
                        DG ---##-####-##---
                        DG ---###----###---
                        DG --############--
                        DG --############--
                        DG --############--
                        DG --############--

                        DG --####----------
                        DG -#########------
                        DG -############---
                        DG -##---####---##-
                        DG ----#----#-#-###
                        DG ----#------#-###
                        DG ----########-###
                        DG -----######-----
                        DG ----##----##----
                        DG ----#-####-#----
                        DG ---##-####-##---
                        DG ---###----###---
                        DG --############--
                        DG --############--
                        DG --############--
                        DG --############--

                        DG ----------------
                        DG ----------------
                        DG --############--
                        DG -##---####---##-
                        DG ###-#-####-#-###
                        DG ###-#------#-###
                        DG ----########----
                        DG -----######-----
                        DG ----##----##----
                        DG ----#-####-#----
                        DG ---##-####-##---
                        DG ---###----###---
                        DG --############--
                        DG --############--
                        DG --############--
                        DG --############--

                        DG ----------####--
                        DG ------#########-
                        DG ---############-
                        DG -##---####---##-
                        DG ###-#-#----#----
                        DG ###-#------#----
                        DG ###-########----
                        DG -----######-----
                        DG ----##----##----
                        DG ----#-####-#----
                        DG ---##-####-##---
                        DG ---###----###---
                        DG --############--
                        DG --############--
                        DG --############--
                        DG --############--

                        DG ----##----------
                        DG ---#-##---------
                        DG --#-##-#--------
                        DG -#--##--#-------
                        DG #---##---#------
                        DG #---##---#------
                        DG -#--##--#-------
                        DG --#-##-#--------
                        DG ---#-##---------
                        DG ----##----------
                        DG --##-###--------
                        DG -#--##----------
                        DG -#########------
                        DG ##########------
                        DG -#------#-------
                        DG --#-###---------

                        DG ------##--------
                        DG ------##--------
                        DG -----#-##-------
                        DG -----####-------
                        DG ----#-##-#------
                        DG ----#-##-#------
                        DG -----####-------
                        DG -----#-##-------
                        DG ------##--------
                        DG ------##--------
                        DG ----###-##------
                        DG ------##--#-----
                        DG --#########-----
                        DG --##########----
                        DG ---#------#-----
                        DG -----###-#------

                        DG --------##------
                        DG --------##------
                        DG --------##------
                        DG --------##------
                        DG --------#-------
                        DG --------#-------
                        DG --------##------
                        DG --------##------
                        DG --------##------
                        DG --------##------
                        DG -------###-#----
                        DG -----#--##--#---
                        DG ----##########--
                        DG ----#########---
                        DG ------------#---
                        DG ------###-##----

                        DG ----------##----
                        DG ---------##-#---
                        DG --------#-##-#--
                        DG --------#-##-#--
                        DG -------#--##--#-
                        DG -------#--##--#-
                        DG --------#-##-#--
                        DG --------#-##-#--
                        DG ---------##-#---
                        DG ----------##----
                        DG --------#-###---
                        DG -------#--##--#-
                        DG ------##########
                        DG -------#########
                        DG -------#--------
                        DG --------##-###--

;------------------------------------------------------------------------------------------------------------------------------------------;

;----------------------------------------------------------------;
;                                                                ;
; Return of the Alien Kong Beast (teleport: 1246)                ;
;                                                                ;
;----------------------------------------------------------------;

; The first 512 bytes are the attributes that define the layout of the cavern.

; Cavern attributes

ReturnOfTheAlienKongBeastData     DH "6500050000000600000005000000000000650600006500000000000000000065"
                                  DH "6500000000000000000000000000000000000000000000000000000000000065"
                                  DH "6500000000000000000000000000000303000000000000000000000000000065"
                                  DH "6500000000000000000000000000000000000000000000000000000000000065"
                                  DH "6500000000000000000000000000000000000000000000000000000000000065"
                                  DH "6543434300000000000303030303650000650303030303034343000000000065"
                                  DH "6500000000000000000000000000650000650000000000000000000000004365"
                                  DH "6500000000004343000000000000650000650000000000000000000000000065"
                                  DH "6500004300000000000000000000650000650000000000000043434343434365"
                                  DH "6500000000000000000043434343650000650000000000000000000000000065"
                                  DH "6500000000004300000000000000000000654343430000000000000000000065"
                                  DH "6500000000000000000000000000000000650000000000000043430000000065"
                                  DH "6543434343434300000000000000000000650000000000040000000004000065"
                                  DH "6500000000000000000000434343650000654646464646464646464646000065"
                                  DH "6500000000000000000000000000650000650000000000000000000000000065"
                                  DH "6543434343434343434343434343656565654343434343434343434343434365"

; Cavern name

                        defm " Return of the Alien Kong Beast "

; Background
                        db $00
                        DG --------
                        DG --------
                        DG --------
                        DG --------
                        DG --------
                        DG --------
                        DG --------
                        DG --------

; Floor
                        db $43
                        DG ########
                        DG ########
                        DG ##-##-##
                        DG -##-###-
                        DG ##---#-#
                        DG -#------
                        DG --------
                        DG --------

; Crumbling floor
                        db $03
                        DG ########
                        DG ##-##-##
                        DG #-#--#-#
                        DG --#--#--
                        DG -#-#--#-
                        DG --#-----
                        DG ----#---
                        DG --------

; Wall
                        db $65
                        dg --#---#-
                        dg ########
                        dg #---#---
                        dg ########
                        dg --#---#-
                        dg ########
                        dg #---#---
                        dg ########

; Conveyor
                        db $46
                        dg ####----
                        dg -##--##-
                        dg ####----
                        dg #-#-#-#-
                        dg --------
                        dg --------
                        dg --------
                        dg --------

; Nasty 1
                        db $04
                        dg -#---#--
                        dg --#-#---
                        dg #--#-#--
                        dg -#-#---#
                        dg --##-#-#
                        dg ##-#-##-
                        dg -#-##---
                        dg ---#----

; Nasty 2
                        db $05
                        dg -######-
                        dg --####--
                        dg ---###--
                        dg ---##---
                        dg ---##---
                        dg ----#---
                        dg ----#---
                        dg ----#---

; Extra
                        db $06
                        dg ########
                        dg #------#
                        dg #------#
                        dg -#----#-
                        dg --####--
                        dg ---#----
                        dg -##-----
                        dg -##-----

; Pixel y-coordinate * 2.
                        db $D0

; Animation frame.
                        db $00

; Direction and movement flags
                        db $00

; Airborne status indicator.
                        db $00

; Location in the attribute buffer at 23970
                        dw $5DA2

; Jumping animation counter
                        db $00

; Conveyor

; Direction
                        db $01

; Location in the screen buffer
                        dw $78B2

; Length.
                        db $0B

; Border colour
                        db $02

; Unused?
                        db $00

; Item data

                        db $03
                        dw $5C6F
                        db $60,$FF

                        db $04
                        dw $5CF0
                        db $60,$FF

                        db $05
                        dw $5CC2
                        db $60,$FF

                        db $06
                        dw $5DBD
                        db $68,$FF

                        db $03
                        dw $5CBA
                        db $60,$FF
; Terminator
                        db $FF


; Portal

                        db $5E
                        DG ################
                        DG #--------------#
                        DG #---########---#
                        DG #---########---#
                        DG #---########---#
                        DG #---########---#
                        DG #---########---#
                        DG #---##----##---#
                        DG #---##----##---#
                        DG #---########---#
                        DG #---########---#
                        DG #---########---#
                        DG #---########---#
                        DG #---########---#
                        DG #--------------#
                        DG ################

; Location
                        dw $5DAF,$68AF

; Item graphic

                        DG #-------
                        DG ##------
                        DG ###-##--
                        DG -###--#-
                        DG --#-#---
                        DG -#-#-#--
                        DG #---#-#-
                        DG #----###

; Air supply
                        db $3F

; Game clock
                        db $80

; Horizontal guardians

                        db $44
                        dw $5DA9
                        db $68,$07,$A1,$A9

                        db $C6
                        dw $5D6B
                        db $68,$00,$6B,$6F

                        db $00
                        dw $0000
                        db $00,$00,$00,$00

                        db $05
                        dw $5CD9
                        db $60,$00,$D9,$DC

; Terminator
                        db $FF

; Unused?
                        db $00,$00

; Vertical guardians

                        db $FF
                        dw $0000
                        db $00,$00,$00,$00

                        db $00
                        dw $0000
                        db $00,$00,$00,$00

                        db $00
                        dw $0000
                        db $00,$00,$00,$00

                        db $00
                        dw $0000
                        db $00,$00,$00,$00

; Terminator
                        db $00

; Unused?
                        db $00,$00,$00,$00,$00,$00


                        DG ---#--####--#---
                        DG ---###-##-###---
                        DG ----########----
                        DG -----##--##-----
                        DG -----#-##-#-----
                        DG ------#--#------
                        DG -----######-----
                        DG ----########----
                        DG ---##########---
                        DG --##--####--##--
                        DG -##---####---##-
                        DG -#---##--##---#-
                        DG --#-##----##-#--
                        DG -----##--##-----
                        DG ------#--#------
                        DG ----###--###----

                        DG ----#-####-#----
                        DG ----##-##-##----
                        DG ----########----
                        DG -----##--##-----
                        DG -----#-##-#-----
                        DG ------#--#------
                        DG ------####------
                        DG ---##########---
                        DG -##############-
                        DG ###--######--###
                        DG #-----####-----#
                        DG ##---######---##
                        DG -----##--##-----
                        DG ----##----##----
                        DG ----#------#----
                        DG --###------###--

                        DG ---###----###---
                        DG -----##--##-----
                        DG ----##----##----
                        DG -##--##--##--##-
                        DG --#---####---#--
                        DG -##--######--##-
                        DG --##-######-##--
                        DG ---##########---
                        DG ----########----
                        DG -----######-----
                        DG ------#--#------
                        DG -----#-##-#-----
                        DG -----##--##-----
                        DG ----########----
                        DG ----##-##-##----
                        DG ----#-####-#----

                        DG -###--------###-
                        DG ---##------##---
                        DG ----##----##----
                        DG -----##--##-----
                        DG -##---####---##-
                        DG --#--######--#--
                        DG -##--######--##-
                        DG --##-######-##--
                        DG ---##########---
                        DG ----########----
                        DG ------#--#------
                        DG -----#-##-#-----
                        DG ---#-##--##-#---
                        DG ----########----
                        DG ----##-##-##----
                        DG ------####------

                        DG ----#-----------
                        DG -----#-#--------
                        DG ----#---#-------
                        DG --#--#-#--------
                        DG -#--#---#-------
                        DG --#----#--------
                        DG -#--##----------
                        DG --##--##--------
                        DG -#---#--#-------
                        DG -#---#--#-------
                        DG #---#----#------
                        DG #----#---#------
                        DG -#--#---#-------
                        DG -#--#---#-------
                        DG --##--##--------
                        DG ----##----------

                        DG ------#---------
                        DG ---#---#--#-----
                        DG ----#-#--#------
                        DG ---#---#--#-----
                        DG ----#-#--#------
                        DG ---#------#-----
                        DG ------##--------
                        DG ----##--##------
                        DG ---#------#-----
                        DG ---#-----##-----
                        DG --#---#-#--#----
                        DG --#--#-#---#----
                        DG ---##-----#-----
                        DG ---#------#-----
                        DG ----##--##------
                        DG ------##--------

                        DG ---------#------
                        DG ------#---#-----
                        DG -----#---#--#---
                        DG ------#---#--#--
                        DG -----#---#--#---
                        DG ------#------#--
                        DG --------##--#---
                        DG ------##--##----
                        DG -----#------#---
                        DG -----#------#---
                        DG ----#-##-#---#--
                        DG ----#---#-##-#--
                        DG -----#------#---
                        DG -----#------#---
                        DG ------##--##----
                        DG --------##------

                        DG ---------#---#--
                        DG -------#--#---#-
                        DG ------#--#---#--
                        DG -------#--#---#-
                        DG ------#--#---#--
                        DG -------#------#-
                        DG ------#---##----
                        DG --------##--##--
                        DG -------#-#----#-
                        DG -------#--#---#-
                        DG ------#----#---#
                        DG ------#---#----#
                        DG -------#---#--#-
                        DG -------#----#-#-
                        DG --------##--##--
                        DG ----------##----

;------------------------------------------------------------------------------------------------------------------------------------------;

;----------------------------------------------------------------;
;                                                                ;
; Ore Refinary (teleport: 346)                                   ;
;                                                                ;
;----------------------------------------------------------------;

; The first 512 bytes are the attributes that define the layout of the cavern.

; Cavern attributes

OreRefineryData                   DH "1616161616161616161616161616161616161616161616161616161616161616"
                                  DH "1600000600000000000000000000000000000000000000000000000000000016"
                                  DH "1600000600000000000000000000000000000000000000000000000000000016"
                                  DH "1600000600000005050505050505050505050505050505050500000505050516"
                                  DH "1600000600000000000000000000000000000000000000000000000000000016"
                                  DH "1600000600000000000000000000000000000000000000000000000000000016"
                                  DH "1600000600000005050000050505050000050505050500000505050500000516"
                                  DH "1600000600000000000000000000000000000000000000000000000000000016"
                                  DH "1600000600000000000000000000000000000000000000000000000000000016"
                                  DH "1600000600000005050505050000050505000000050505050500000505050516"
                                  DH "1600000600000000000000000000000000000000000000000000000000000016"
                                  DH "1600000600000000000000000000000000000000000000000000000000000016"
                                  DH "1600000600000005050500000505050000050505050000050505050000050516"
                                  DH "1600000600000000000000000000000000000000000000000000000000000016"
                                  DH "1600000600000000000000000000000000000000000000000000000000000016"
                                  DH "1605050404040404040404040404040404040404040404040404040404050516"

; Cavern name

                        defm "          Ore Refinery          "

; Background
                        db $00
                        dg --------
                        dg --------
                        dg --------
                        dg --------
                        dg --------
                        dg --------
                        dg --------
                        dg --------

; Floor
                        db $05
                        dg ########
                        dg ########
                        dg ---#---#
                        dg --#---#-
                        dg -#---#--
                        dg #---#---
                        dg ########
                        dg ########

; Crumbling floor
                        db $42
                        dg ########
                        dg ##-##-##
                        dg #-#--#-#
                        dg --#--#--
                        dg -#-#--#-
                        dg --#-----
                        dg ----#---
                        dg --------

; Wall
                        db $16
                        dg -#-##-#-
                        dg -#-##-#-
                        dg -#-##-#-
                        dg -#-##-#-
                        dg -#-##-#-
                        dg -#-##-#-
                        dg -#-##-#-
                        dg -#-##-#-

; Conveyor
                        db $04
                        dg ####----
                        dg -##--##-
                        dg ####----
                        dg -##--##-
                        dg --------
                        dg --------
                        dg --------
                        dg --------

; Nasty 1
                        db $44
                        dg -#---#--
                        dg --#-#---
                        dg #--#-#--
                        dg -#-#---#
                        dg --##-#-#
                        dg ##-#-##-
                        dg -#-##---
                        dg ---#----

; Nasty 2
                        db $45
                        dg -######-
                        dg --####--
                        dg ---###--
                        dg ---##---
                        dg ---##---
                        dg ----#---
                        dg ----#---
                        dg ----#---

; Extra
                        db $06
                        dg ########
                        dg #------#
                        dg #------#
                        dg #------#
                        dg #------#
                        dg #------#
                        dg #------#
                        dg #------#

; Pixel y-coordinate * 2.
                        db $D0

; Animation frame.
                        db $00

; Direction and movement flags
                        db $00

; Airborne status indicator.
                        db $00

; Location in the attribute buffer at 23970
                        dw $5DBD

; Jumping animation counter
                        db $00

; Conveyor

; Direction
                        db $01

; Location in the screen buffer
                        dw $78E3

; Length.
                        db $1A

; Border colour
                        db $01

; Unused?
                        db $00

; Item data

                        db $03
                        dw $5C7A
                        db $60,$FF

                        db $04
                        dw $5CCA
                        db $60,$FF

                        db $05
                        dw $5D33
                        db $68,$FF

                        db $06
                        dw $5D3A
                        db $68,$FF

                        db $03
                        dw $5D8B
                        db $68,$FF
; Terminator
                        db $FF


; Portal

                        db $4F
                        dg ------####------
                        dg -----######-----
                        dg ----########----
                        dg ----#--##--#----
                        dg ----#--##--#----
                        dg -----######-----
                        dg -----#-##-#-----
                        dg ------#--#------
                        dg -##----##----##-
                        dg #####------#####
                        dg #######--#######
                        dg -----#-####-----
                        dg -----####-#-----
                        dg #######--#######
                        dg #####------#####
                        dg -##----------##-

; Location
                        dw $5DA1,$68A1

; Item graphic

                        dg ---##---
                        dg -##-###-
                        dg -#----#-
                        dg ##-##-##
                        dg ##--#--#
                        dg -##---#-
                        dg -######-
                        dg ---##---

; Air supply
                        db $3F

; Game clock
                        db $FC

; Horizontal guardians

                        db $43
                        dw $5C27
                        db $60,$00,$27,$3D

                        db $C4
                        dw $5C90
                        db $60,$00,$87,$9D

                        db $46
                        dw $5CF4
                        db $60,$07,$EA,$FA

                        db $C2
                        dw $5D52
                        db $68,$00,$47,$5D

; Terminator
                        db $FF

; Unused?
                        db $00,$00

; Vertical guardians

                        db $47
                        dw $0800
                        db $05,$02,$08,$64

                        db $FF
                        dw $0000
                        db $00,$00,$00,$00

                        db $00
                        dw $0000
                        db $00,$00,$00,$00

                        db $00
                        dw $0000
                        db $00,$00,$00,$00

; Terminator
                        db $00

; Unused?
                        db $00,$00,$00,$00,$00,$00


                        dg ----------------
                        dg ----------------
                        dg ----------------
                        dg ------####------
                        dg ----##----##----
                        dg ---#--------#---
                        dg --#----------#--
                        dg -#------------#-
                        dg #--------------#
                        dg -#------------#-
                        dg --#----------#--
                        dg ##-#--------#-##
                        dg --#-##----##-#--
                        dg -#--#-####-#--#-
                        dg ---#--#--#--#---
                        dg ------#--#------

                        dg ----------------
                        dg ----------------
                        dg ----------------
                        dg ------####------
                        dg ----##----##----
                        dg ---#--------#---
                        dg --#----------#--
                        dg -#------------#-
                        dg #####------#####
                        dg -#-#-######-#-#-
                        dg --#-#-####-#-#--
                        dg ---#--#--#--#---
                        dg ----##----##----
                        dg ------####------
                        dg ----------------
                        dg ----------------

                        dg -----#----#-----
                        dg -----#----#-----
                        dg ---#--#--#--#---
                        dg -#--#-####-#--#-
                        dg --#-##----##-#--
                        dg #--#--####--#--#
                        dg #-#--######--#-#
                        dg -#---##--##---#-
                        dg #----##--##----#
                        dg -#---######---#-
                        dg --#---####---#--
                        dg ---#--------#---
                        dg ----##----##----
                        dg ------####------
                        dg ----------------
                        dg ----------------

                        dg ----------------
                        dg ----------------
                        dg ----------------
                        dg ------####------
                        dg ----##----##----
                        dg ---#--#--#--#---
                        dg --#-#-#--#-#-#--
                        dg -#-##########-#-
                        dg ####-##--#######
                        dg -#---######---#-
                        dg --#---####---#--
                        dg ---#--------#---
                        dg ----##----##----
                        dg ------####------
                        dg ----------------
                        dg ----------------

                        dg -##----##-------
                        dg #-##--#--#------
                        dg #-##--####------
                        dg -##----##-------
                        dg ----##----------
                        dg ##########------
                        dg -#-#--#-#-------
                        dg ---#--#---------
                        dg ---#--#---------
                        dg ---####---------
                        dg ----##----------
                        dg ----##----------
                        dg ----##----------
                        dg ----##----------
                        dg ---####---------
                        dg --######--------

                        dg ---##----##-----
                        dg --#--#--##-#----
                        dg --####--##-#----
                        dg ---##----##-----
                        dg ------##--------
                        dg --##########----
                        dg ---#-#--#-#-----
                        dg -----#--#-------
                        dg -----#--#-------
                        dg -----####-------
                        dg ------##--------
                        dg ------##--------
                        dg -----####-------
                        dg ----######------
                        dg ----------------
                        dg ----------------

                        dg -----##----##---
                        dg ----##-#--####--
                        dg ----##-#--#--#--
                        dg -----##----##---
                        dg --------##------
                        dg ----##########--
                        dg -----#-#--#-#---
                        dg -------#--#-----
                        dg -------#--#-----
                        dg -------####-----
                        dg -------####-----
                        dg ------######----
                        dg ----------------
                        dg ----------------
                        dg ----------------
                        dg ----------------

                        dg -------##----##-
                        dg ------####--#-##
                        dg ------#--#--#-##
                        dg -------##----##-
                        dg ----------##----
                        dg ------##########
                        dg -------#-#--#-#-
                        dg ---------#--#---
                        dg ---------#--#---
                        dg ---------####---
                        dg ----------##----
                        dg ----------##----
                        dg ---------####---
                        dg --------######--
                        dg ----------------
                        dg ----------------

;----------------------------------------------------------------;
;                                                                ;
; Skylab Landing Bay (teleport: 1346)                            ;
;                                                                ;
;----------------------------------------------------------------;

; The first 512 bytes are the attributes that define the layout of the cavern.

; Cavern attributes

SkylabLandingBayData              DH "6808080808080808080808080808080808080808080808080808080808080868"
                                  DH "6808080808080808080808080808080808080808080808080808080808080868"
                                  DH "6808080808080808080808080808080808080808080808080808080808080868"
                                  DH "6808080808080808080808080808080808080808080808080808080808080868"
                                  DH "6808080808080808080808080808080808080808080808080808080808080868"
                                  DH "6808080808080808080808080808084C0C080808080808080808080808080868"
                                  DH "6808084C0C0808080808084C0C0808080808084C0C0808080808084C0C080868"
                                  DH "680808080808084C0C08080808080808080808080808084C0C08080808080868"
                                  DH "6808080808080808080808080808080808080808080808080808080808080868"
                                  DH "68080808084C0C0808080808084C0C0808080808084C0C0808080808084C0C68"
                                  DH "6808080808080808080808080808080808080808080808080808080808080868"
                                  DH "684C0C0808080808084C0C080808084B4B4B4B4B4B080808084C0C0808080868"
                                  DH "6808080808080808080808080808080808080808080808080808080808080868"
                                  DH "680808080808084C0C0808080808080808080808080808080808080808080868"
                                  DH "6808080808080808080808080808080808080808080808080808080808080868"
                                  DH "6868686868686868686868686868686868686868686868686868686868686868"

; Cavern name

                        defm "       Skylab Landing Bay       "

; Background
                        db $08
                        dg --------
                        dg --------
                        dg --------
                        dg --------
                        dg --------
                        dg --------
                        dg --------
                        dg --------

; Floor
                        db $4C
                        dg ########
                        dg ########
                        dg -##---#-
                        dg -##--#--
                        dg -####---
                        dg -###----
                        dg -##-----
                        dg -##-----

; Crumbling floor
                        db $02
                        dg ######--
                        dg ########
                        dg ########
                        dg #----###
                        dg ########
                        dg ----#---
                        dg ----#---
                        dg --------

; Wall
                        db $68
                        dg -------#
                        dg #-----#-
                        dg ##---#--
                        dg ###-#---
                        dg ###-----
                        dg ##-##---
                        dg #-####--
                        dg -######-

; Conveyor
                        db $4B
                        dg ####----
                        dg -##--##-
                        dg ####----
                        dg -##--##-
                        dg --------
                        dg --------
                        dg --------
                        dg --------

; Nasty 1
                        db $00
                        dg -#---#--
                        dg --#-#---
                        dg #--#-#--
                        dg -#-#---#
                        dg --##-#-#
                        dg ##-#-##-
                        dg -#-##---
                        dg ---#----

; Nasty 2
                        db $00
                        dg -#--#---
                        dg #-##--#-
                        dg -#-###-#
                        dg ---#--#-
                        dg -###----
                        dg #-#-###-
                        dg #-#-#--#
                        dg -#---###

; Extra
                        db $0C
                        dg ########
                        dg ########
                        dg -#---##-
                        dg --#--##-
                        dg ---####-
                        dg ----###-
                        dg -----##-
                        dg -----##-

; Pixel y-coordinate * 2.
                        db $D0

; Animation frame.
                        db $00

; Direction and movement flags
                        db $00

; Airborne status indicator.
                        db $00

; Location in the attribute buffer at 23970
                        dw $5DBD

; Jumping animation counter
                        db $00

; Conveyor

; Direction
                        db $00

; Location in the screen buffer
                        dw $786F

; Length.
                        db $06

; Border colour
                        db $06

; Unused?
                        db $00

; Item data

                        db $0B
                        dw $5C57
                        db $60,$FF

                        db $0C
                        dw $5D03
                        db $68,$FF

                        db $0D
                        dw $5CFB
                        db $60,$FF

                        db $0E
                        dw $5CF0
                        db $60,$FF

                        db $00
                        dw $FFFF
                        db $FF,$FF
; Terminator
                        db $FF


; Portal

                        db $1E
                        dg ################
                        dg ################
                        dg ######----######
                        dg #####------#####
                        dg ####--------####
                        dg ###----------###
                        dg ##-----##-----##
                        dg ##----#--#----##
                        dg ##----#--#----##
                        dg ##-----##-----##
                        dg ###----------###
                        dg ####--------####
                        dg #####------#####
                        dg ######----######
                        dg ################
                        dg ################

; Location
                        dw $5C0F,$600F

; Item graphic

                        dg #-#-#-#-
                        dg #-#-#-#-
                        dg #######-
                        dg #######-
                        dg #######-
                        dg #######-
                        dg #-#-#-#-
                        dg #-#-#-#-

; Air supply
                        db $3F

; Game clock
                        db $F8

; Horizontal guardians

                        db $FF
                        dw $5CE9
                        db $60,$00,$E9,$EE

                        db $C2
                        dw $5D4C
                        db $68,$00,$48,$4E

                        db $43
                        dw $5DA8
                        db $68,$00,$A4,$BA

                        db $00
                        dw $0000
                        db $00,$00,$00,$00

; Terminator
                        db $FF

; Unused?
                        db $00,$00

; Vertical guardians

                        db $0F
                        dw $0000
                        db $01,$04,$00,$48

                        db $0D
                        dw $0000
                        db $0B,$01,$00,$20

                        db $0E
                        dw $0200
                        db $15,$03,$02,$38

                        db $FF
                        dw $0000
                        db $00,$00,$00,$00

; Terminator
                        db $00

; Unused?
                        db $00,$00,$00,$00,$00,$00


                        dg ------####------
                        dg ################
                        dg #-#-#-####-#-#-#
                        dg ################
                        dg ---#--####--#---
                        dg --#-#--##--#-#--
                        dg ---#-#-##-#-#---
                        dg ----#-####-#----
                        dg -----#-##-#-----
                        dg ------####------
                        dg ------####------
                        dg -----#-##-#-----
                        dg ----#-#--#-#----
                        dg ---#-#----#-#---
                        dg --#-#------#-#--
                        dg ---#--------#---

                        dg ----------------
                        dg ----------------
                        dg ------####------
                        dg ################
                        dg #-#-#-####-#-#-#
                        dg ################
                        dg ---#--####--#---
                        dg --#-#--##--#-#--
                        dg ---#-#-##-#-#---
                        dg ----#-####-#----
                        dg -----#-##-#-----
                        dg ------####------
                        dg ------####------
                        dg --#--#-##-#-----
                        dg -#--#-#--#-#-#--
                        dg ---#-#----#-#-#-

                        dg ----------------
                        dg ----------------
                        dg ----------------
                        dg -------------###
                        dg ------########-#
                        dg ##########-#-###
                        dg #-#-#-#######---
                        dg ##########------
                        dg ------####------
                        dg -------##-------
                        dg ---#-#-##-#--#--
                        dg -#--#-####-#--#-
                        dg -----#-##-#--#--
                        dg --#---####----#-
                        dg ----#-####-#----
                        dg --#--#-##-#-#---

                        dg ----------------
                        dg ----------------
                        dg ----------------
                        dg ----------#-----
                        dg ------#-------#-
                        dg -----------#-#-#
                        dg ------####--###-
                        dg ----######-#-#--
                        dg ##--#-####--#---
                        dg #-##-#####----#-
                        dg ###---####--#---
                        dg --##---##------#
                        dg -----######--#--
                        dg ##----####--#---
                        dg ---#-#####----#-
                        dg --#---########--

                        dg ----------------
                        dg -------#--------
                        dg ----------------
                        dg ----#-----#-----
                        dg ----------------
                        dg ----------------
                        dg --#----#------#-
                        dg -----------#---#
                        dg ------###---#-#-
                        dg ----###-#--#----
                        dg -#--#-####------
                        dg --##-###------#-
                        dg -##---#-##------
                        dg --##---#-------#
                        dg -----#-####---#-
                        dg ##----##-#---#--

                        dg ----------------
                        dg ----------------
                        dg ----------------
                        dg ----------------
                        dg ----------------
                        dg ------#---------
                        dg ----------------
                        dg ----------#-----
                        dg ---#--------#---
                        dg ----#-#-#----#--
                        dg ----------#-----
                        dg -##--#-#--------
                        dg --#---#--##-#---
                        dg ----#---#-#-----
                        dg ------####-#----
                        dg ---#-######-----

                        dg ----------------
                        dg ----------------
                        dg ----------------
                        dg ----------------
                        dg ----------------
                        dg ----------------
                        dg ----------------
                        dg ----------------
                        dg ------#---------
                        dg ----------#-----
                        dg ---#------------
                        dg ----------------
                        dg -----#-#---#----
                        dg ---------##-#---
                        dg --#---#-#-#-----
                        dg ----##-###-#----

                        dg ----------------
                        dg ----------------
                        dg ----------------
                        dg ----------------
                        dg ----------------
                        dg ----------------
                        dg ----------------
                        dg ----------------
                        dg ----------------
                        dg ----------------
                        dg ----------------
                        dg --------#-------
                        dg ----------#-----
                        dg ----#-----------
                        dg ------#-##------
                        dg -----###-##-----

;----------------------------------------------------------------;
;                                                                ;
; The Bank (teleport: 2346)                                      ;
;                                                                ;
;----------------------------------------------------------------;
; Cavern attributes

TheBankData             dh "0E00000000000E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E"
                        dh "0E0000000000000000000000000000000000000000000000000000000006060E"
                        dh "0E0000000000000000000000000000000000000000000000000000000006060E"
                        dh "0E0000000000000045454545454545454545454545454545414141414106060E"
                        dh "0E0000000000000042000000000000000000000000000000000000004206060E"
                        dh "0E4141414141000046000000000000000000000000000000000000004206060E"
                        dh "0E0000000000000000000000000000000000000000000000414100004206060E"
                        dh "0E0000000000000100000000414100000000000000000000000000004206060E"
                        dh "0E0000414100000000000000000000000000414100000000000000004206060E"
                        dh "0E0000000000000000000000000000000000000000000000004141004206060E"
                        dh "0E4141000000000000000000414100000000000000000000000000004606060E"
                        dh "0E0000000000000000000000000000000000414100000000000000000006060E"
                        dh "0E0000000041414100000000000000000000000000000041410000000006060E"
                        dh "0E0000000000000000000000414100000000000000000000000000000006060E"
                        dh "0E0000000000000000000000000000000000000000000000000000000006060E"
                        dh "0E4141414141414141414141414141414141414141414141414141414141410E"

; Cavern name

                        defm "            The Bank            "

; Background
                        db $00
                        dg --------
                        dg --------
                        dg --------
                        dg --------
                        dg --------
                        dg --------
                        dg --------
                        dg --------

; Floor
                        db $41
                        dg ########
                        dg ########
                        dg ##-###-#
                        dg -###-###
                        dg #-#-#-#-
                        dg -#-#-#-#
                        dg --#---#-
                        dg --------

; Crumbling floor
                        db $01
                        dg ########
                        dg ##-##-##
                        dg #-#--#-#
                        dg --#--#--
                        dg -#-#--#-
                        dg --#-----
                        dg ----#---
                        dg --------

; Wall
                        db $0E
                        dg #-#-#-#-
                        dg -#-#-#-#
                        dg #-#-#-#-
                        dg -#-#-#-#
                        dg #-#-#-#-
                        dg -#-#-#-#
                        dg #-#-#-#-
                        dg -#-#-#-#

; Conveyor
                        db $45
                        dg #######-
                        dg -##--##-
                        dg #######-
                        dg --------
                        dg --------
                        dg --------
                        dg --------
                        dg --------

; Nasty 1
                        db $46
                        dg ---#----
                        dg ---#----
                        dg ##-#-##-
                        dg --###---
                        dg ##-#-##-
                        dg --###---
                        dg -#-#-#--
                        dg #--#--#-

; Nasty 2
                        db $42
                        dg ---#----
                        dg ---#----
                        dg ---#----
                        dg ---#----
                        dg ---#----
                        dg ---#----
                        dg ---#----
                        dg ---#----

; Extra
                        db $06
                        dg ########
                        dg ########
                        dg ---##---
                        dg ---##---
                        dg ---##---
                        dg ---##---
                        dg ---##---
                        dg ---##---

; Pixel y-coordinate * 2.
                        db $D0

; Animation frame.
                        db $00

; Direction and movement flags
                        db $00

; Airborne status indicator.
                        db $00

; Location in the attribute buffer at 23970
                        dw $5DA2

; Jumping animation counter
                        db $00

; Conveyor

; Direction
                        db $00

; Location in the screen buffer
                        dw $7068

; Length.
                        db $10

; Border colour
                        db $02

; Unused?
                        db $00

; Item data

                        db $03
                        dw $5C59
                        db $60,$FF

                        db $04
                        dw $5CCC
                        db $60,$FF

                        db $05
                        dw $5DDA
                        db $68,$FF

                        db $FF
                        dw $5CD3
                        db $60,$FF

                        db $03
                        dw $5DBE
                        db $68,$FF
; Terminator
                        db $FF


; Portal

                        db $56
                        dg ################
                        dg #--------------#
                        dg #--------------#
                        dg #--------------#
                        dg #--------------#
                        dg #---#----------#
                        dg #-#-#-#--------#
                        dg #--###----####-#
                        dg ########-#---###
                        dg #--###---------#
                        dg #-#-#-#--------#
                        dg #---#----------#
                        dg #--------------#
                        dg #--------------#
                        dg #--------------#
                        dg ################

; Location
                        dw $5C61,$6061

; Item graphic

                        dg -#####--
                        dg --###---
                        dg -##--#--
                        dg ##-####-
                        dg #---###-
                        dg ##-####-
                        dg #-----#-
                        dg -#####--

; Air supply
                        db $3F

; Game clock
                        db $FC

; Horizontal guardians

                        db $45
                        dw $5DB1
                        db $68,$00,$B1,$B3

                        db $00
                        dw $0000
                        db $00,$00,$00,$00

                        db $00
                        dw $0000
                        db $00,$00,$00,$00

                        db $00
                        dw $0000
                        db $00,$00,$00,$00

; Terminator
                        db $FF

; Unused?
                        db $00,$00

; Vertical guardians

                        db $06
                        dw $2800
                        db $09,$02,$24,$66

                        db $07
                        dw $4001
                        db $0F,$01,$24,$66

                        db $44
                        dw $5003
                        db $15,$FD,$20,$68

                        db $FF
                        dw $0000
                        db $00,$00,$00,$00

; Terminator
                        db $FF

; Unused?
                        db $00,$00,$00,$00,$00,$00


                        dg -##----##----##-
                        dg #--##########--#
                        dg #--##########--#
                        dg -##----##----##-
                        dg ------####------
                        dg ################
                        dg #--------------#
                        dg #-#-#-#-#-#-#--#
                        dg #--###########-#
                        dg #-##-#-#-#-##--#
                        dg #--#--------##-#
                        dg #-##-#-#-#-##--#
                        dg #--###########-#
                        dg #-#-#-#-#-#-#--#
                        dg #--------------#
                        dg ################

                        dg ---###-##-###---
                        dg --#---#-####-#--
                        dg --#---#-####-#--
                        dg ---###-##-###---
                        dg ------####------
                        dg ################
                        dg ##-#-#-#-#-#-#-#
                        dg #-##############
                        dg ###-#-#-#-#-##-#
                        dg #-##---------###
                        dg ###--#-#-#--##-#
                        dg #-##---------###
                        dg ###-#-#-#-#-##-#
                        dg #-##############
                        dg ##-#-#-#-#-#-#-#
                        dg ################

                        dg -----######-----
                        dg ----#------#----
                        dg ----#------#----
                        dg -----######-----
                        dg ------####------
                        dg ################
                        dg ################
                        dg ##-#-#-#-#-#-###
                        dg ###-----------##
                        dg ##--#-#-#-#--###
                        dg ###--#######--##
                        dg ##--#-#-#-#--###
                        dg ###-----------##
                        dg ##-#-#-#-#-#-###
                        dg ################
                        dg ################

                        dg ---###-##-###---
                        dg --#-####-#---#--
                        dg --#-####-#---#--
                        dg ---###-##-###---
                        dg ------####------
                        dg ################
                        dg #-#-#-#-#-#-#-##
                        dg ##-------------#
                        dg #--#-#-#-#-#--##
                        dg ##--#########--#
                        dg #--##-#-#-##--##
                        dg ##--#########--#
                        dg #--#-#-#-#-#--##
                        dg ##-------------#
                        dg #-#-#-#-#-#-#-##
                        dg ################

                        dg ----------------
                        dg ----------------
                        dg ----------------
                        dg ----------------
                        dg ----------------
                        dg ----------------
                        dg ----------------
                        dg ----------------
                        dg ----------------
                        dg ----------------
                        dg ##########------
                        dg #------###------
                        dg ##########------
                        dg #-----#--#------
                        dg #######--#------
                        dg ##########------

                        dg ----------------
                        dg ----------------
                        dg ----------------
                        dg ----------------
                        dg ----------------
                        dg ----------------
                        dg --##########----
                        dg --#------###----
                        dg --##########----
                        dg --#-----#--#----
                        dg --#######--#----
                        dg --##########----
                        dg ----------------
                        dg ----------------
                        dg ----------------
                        dg ----------------

                        dg ----------------
                        dg ----------------
                        dg ----------------
                        dg ----------------
                        dg ----##########--
                        dg ----#------###--
                        dg ----##########--
                        dg ----#-----#--#--
                        dg ----#######--#--
                        dg ----##########--
                        dg ----------------
                        dg ----------------
                        dg ----------------
                        dg ----------------
                        dg ----------------
                        dg ----------------

                        dg ----------------
                        dg ----------------
                        dg ----------------
                        dg ----------------
                        dg ----------------
                        dg ----------------
                        dg ------##########
                        dg ------#------###
                        dg ------##########
                        dg ------#-----#--#
                        dg ------#######--#
                        dg ------##########
                        dg ----------------
                        dg ----------------
                        dg ----------------
                        dg ----------------

;------------------------------------------------------------------------------------------------------------------------------------------;

;----------------------------------------------------------------;
;                                                                ;
; The Sixteenth Cavern (teleport: 12346)                         ;
;                                                                ;
;----------------------------------------------------------------;

; The first 512 bytes are the attributes that define the layout of the cavern.

TheSixteenthCavernData            DH "6500000000000000000000000000000000000000000000000000000000000065"
                                  DH "6500000000000000000000000000000000000000000000000000000000000065"
                                  DH "6500000000000000000000000000000000000000000000000000000000000065"
                                  DH "6500000000000000000000000000000000000000000000000000000000000065"
                                  DH "6500000000000000000000000000000000000000000000000000000000000065"
                                  DH "6542000000004200000000650000650000000000000042424200000000000065"
                                  DH "6500000000000000000000650000656500000000000000000000000000000065"
                                  DH "6500000042000000000000650000656565000000000000000042424242424265"
                                  DH "6500000000000000000000650000656565650000000000000000000000000065"
                                  DH "6502024646464646464646464646464646464646464646464646460000000065"
                                  DH "6500000000000000000000000000000000000000000000000000000000000065"
                                  DH "6500000000000000000065654242000000000000000000000000420000000065"
                                  DH "6542424242424242424200000000000000000000000000000000000000000065"
                                  DH "6500000000000000000000000000000000000000420000000000420000000065"
                                  DH "6500000000000000000000000000000000000000000000040404000000000065"
                                  DH "6542424242424242424242424242424242424242424242424242424242424265"

; Cavern name

                        defm "      The Sixteenth Cavern      "

; Background
                        db $00
                        dg --------
                        dg --------
                        dg --------
                        dg --------
                        dg --------
                        dg --------
                        dg --------
                        dg --------

; Floor
                        db $42
                        dg ########
                        dg ########
                        dg ##-##-##
                        dg -##-###-
                        dg ##---#-#
                        dg -#------
                        dg --------
                        dg --------

; Crumbling floor
                        db $02
                        dg ########
                        dg ##-##-##
                        dg #-#--#-#
                        dg --#--#--
                        dg -#-#--#-
                        dg --#-----
                        dg ----#---
                        dg --------

; Wall
                        db $65
                        dg -#--#--#
                        dg #####--#
                        dg -#--####
                        dg -#--#--#
                        dg ########
                        dg -#--#---
                        dg -####---
                        dg ##--####

; Conveyor
                        db $46
                        dg ####----
                        dg -##--##-
                        dg ####----
                        dg #-#-#-#-
                        dg --------
                        dg --------
                        dg --------
                        dg --------

; Nasty 1
                        db $04
                        dg -#---#--
                        dg -#---#--
                        dg -#---#--
                        dg -#---#--
                        dg -##--##-
                        dg ###-###-
                        dg ###-###-
                        dg ########

; Nasty 2
                        db $05
                        dg -######-
                        dg --####--
                        dg ---###--
                        dg ---##---
                        dg ---##---
                        dg ----#---
                        dg ----#---
                        dg ----#---

; Extra
                        db $06
                        dg ########
                        dg #------#
                        dg #------#
                        dg -#----#-
                        dg --####--
                        dg ---#----
                        dg -##-----
                        dg -##-----

; Pixel y-coordinate * 2.
                        db $D0

; Animation frame.
                        db $00

; Direction and movement flags
                        db $00

; Airborne status indicator.
                        db $00

; Location in the attribute buffer at 23970
                        dw $5DA2

; Jumping animation counter
                        db $00

; Conveyor

; Direction
                        db $00

; Location in the screen buffer
                        dw $7823

; Length.
                        db $18

; Border colour
                        db $02

; Unused?
                        db $00

; Item data

                        db $03
                        dw $5C5E
                        db $60,$FF

                        db $04
                        dw $5CED
                        db $60,$FF

                        db $05
                        dw $5C01
                        db $60,$FF

                        db $06
                        dw $5D51
                        db $68,$FF

                        db $FF
                        dw $5CBA
                        db $60,$FF
; Terminator
                        db $FF


; Portal

                        db $5E
                        dg ################
                        dg #------##------#
                        dg #------##------#
                        dg ################
                        dg #------##------#
                        dg #------##------#
                        dg ################
                        dg #------##------#
                        dg #------##------#
                        dg ################
                        dg #------##------#
                        dg #------##------#
                        dg ################
                        dg #------##------#
                        dg #------##------#
                        dg ################

; Location
                        dw $5CAC,$60AC

; Item graphic

                        dg ----####
                        dg ----#--#
                        dg --####-#
                        dg --#--###
                        dg ####-#--
                        dg #--###--
                        dg #--#----
                        dg ####----

; Air supply
                        db $3F

; Game clock
                        db $F8

; Horizontal guardians

                        db $44
                        dw $5DA9
                        db $68,$00,$A1,$B2

                        db $06
                        dw $5D41
                        db $68,$00,$41,$47

                        db $43
                        dw $5CF2
                        db $60,$00,$F2,$F7

                        db $85
                        dw $5CBA
                        db $60,$00,$B9,$BD

; Terminator
                        db $FF

; Unused?
                        db $00,$00

; Vertical guardians

                        db $FF
                        dw $0000
                        db $00,$00,$00,$00

                        db $00
                        dw $0000
                        db $00,$00,$00,$00

                        db $00
                        dw $0000
                        db $00,$00,$00,$00

                        db $00
                        dw $0000
                        db $00,$00,$00,$00

; Terminator
                        db $00

; Unused?
                        db $00,$00,$00,$00,$00,$00


                        dg ----------------
                        dg ----#-----------
                        dg ---#-#----------
                        dg --#-#-#---------
                        dg -#-#-#-#--------
                        dg -#--#-#---------
                        dg #----#----------
                        dg #-------##------
                        dg #-------##------
                        dg -#-----#--------
                        dg -########-------
                        dg --########------
                        dg ---######-------
                        dg ----####--------
                        dg ----#-#-#-------
                        dg ---#--#--#------

                        dg --#-#-#---------
                        dg ---#-#-#--------
                        dg --#-#-#---------
                        dg ---#-#-#--------
                        dg --#-------------
                        dg --#-------------
                        dg --#-------------
                        dg --#-------##----
                        dg --#-------##----
                        dg ---#-----#------
                        dg ---########-----
                        dg ----########----
                        dg -----######-----
                        dg ------####------
                        dg ------#-#-#-----
                        dg -----#--#--#----

                        dg ----------------
                        dg ---#------------
                        dg --#-#-----------
                        dg -#-#-#----------
                        dg #-#-#-#---------
                        dg -#-#---#--------
                        dg --#----#--------
                        dg -------#----##--
                        dg ------#-----##--
                        dg ------#----#----
                        dg ------#######---
                        dg ------########--
                        dg -------######---
                        dg --------####----
                        dg --------#-#-#---
                        dg -------#--#--#--

                        dg -----#-#-#------
                        dg ----#-#-#-------
                        dg -----#-#-#------
                        dg ----#-#-#-------
                        dg ---------#------
                        dg ---------#------
                        dg ---------#------
                        dg ---------#----##
                        dg --------#-----##
                        dg --------#----#--
                        dg --------#######-
                        dg --------########
                        dg ---------######-
                        dg ----------####--
                        dg ----------#-#-#-
                        dg ---------#--#--#

                        dg ------#-#-#-----
                        dg -------#-#-#----
                        dg ------#-#-#-----
                        dg -------#-#-#----
                        dg ------#---------
                        dg ------#---------
                        dg ------#---------
                        dg ##----#---------
                        dg ##-----#--------
                        dg --#----#--------
                        dg -#######--------
                        dg ########--------
                        dg -######---------
                        dg --####----------
                        dg -#-#-#----------
                        dg #--#--#---------

                        dg ----------------
                        dg ------------#---
                        dg -----------#-#--
                        dg ----------#-#-#-
                        dg ---------#-#-#-#
                        dg --------#---#-#-
                        dg --------#----#--
                        dg --##----#-------
                        dg --##-----#------
                        dg ----#----#------
                        dg ---#######------
                        dg --########------
                        dg ---######-------
                        dg ----####--------
                        dg ---#-#-#--------
                        dg --#--#--#-------

                        dg ---------#-#-#--
                        dg --------#-#-#---
                        dg ---------#-#-#--
                        dg --------#-#-#---
                        dg -------------#--
                        dg -------------#--
                        dg -------------#--
                        dg ----##-------#--
                        dg ----##-------#--
                        dg ------#-----#---
                        dg -----########---
                        dg ----########----
                        dg -----######-----
                        dg ------####------
                        dg -----#-#-#------
                        dg ----#--#--#-----

                        dg ----------------
                        dg -----------#----
                        dg ----------#-#---
                        dg ---------#-#-#--
                        dg --------#-#-#-#-
                        dg ---------#-#--#-
                        dg ----------#----#
                        dg ------##-------#
                        dg ------##-------#
                        dg --------#-----#-
                        dg -------########-
                        dg ------########--
                        dg -------######---
                        dg --------####----
                        dg -------#-#-#----
                        dg ------#--#--#---

;------------------------------------------------------------------------------------------------------------------------------------------;

;----------------------------------------------------------------;
;                                                                ;
; The Warehouse (teleport: 56)                                   ;
;                                                                ;
;----------------------------------------------------------------;

; The first 512 bytes are the attributes that define the layout of the cavern.


TheWarehouseData                  DH "1600000000000000000000000000000000000000000000000000000000161616"
                                  DH "1600000000000000000000000000000000000000000000000000000000000016"
                                  DH "1600000000000000000000000000000000000000000000000000000000000016"
                                  DH "1600000000000000000000000000000000000000000000000000000000000016"
                                  DH "1600000000000600000600000006000006000000000006000600000000000016"
                                  DH "1604044444444444444400004444444444444400004444440044440000040416"
                                  DH "1644442144444444444400004444444444444400004444444444440000444416"
                                  DH "1644444444444444444400004444440044444400004444444444210000444416"
                                  DH "1644440000444444444400004444202020202000004444444444440000444416"
                                  DH "1600440000444444444400004444444444444400004444444444440000444416"
                                  DH "1644440000444444444400004444444444444400444421444444440000444416"
                                  DH "1644440000444444442100004444444444444444444444444444000000444416"
                                  DH "1644440000444444444400004444444444444444444444444444440000444416"
                                  DH "1600000000000000000000000000000000000000000000000000000000000016"
                                  DH "1600000000000000000000000000000000000000000000000000000404040416"
                                  DH "1604040404040404040404040404040404040404040404040404040404040416"

; The next 32 bytes specify the cavern name.

                                  defm "         The Warehouse          "    ; Cavern name

; The next 72 bytes contain the attributes and graphic data for the tiles used to build the cavern.

; Background
                        db $00
                        dg --------
                        dg --------
                        dg --------
                        dg --------
                        dg --------
                        dg --------
                        dg --------
                        dg --------

; Floor
                        db $04
                        dg ########
                        dg ########
                        dg ##-##-##
                        dg -##-###-
                        dg ##---#-#
                        dg -#------
                        dg --------
                        dg --------

; Crumbling floor
                        db $44
                        dg ########
                        dg #-#-#-#-
                        dg -#-#-#-#
                        dg #-#-#-#-
                        dg -#-#-#-#
                        dg #-#-#-#-
                        dg -#-#-#-#
                        dg #-#-#-#-

; Wall
                        db $16
                        dg ########
                        dg #--##--#
                        dg #-###-##
                        dg ########
                        dg ########
                        dg #--##--#
                        dg #-###-##
                        dg ########

; Conveyor
                        db $20
                        dg ####----
                        dg -##--##-
                        dg ####----
                        dg -##--##-
                        dg --------
                        dg --------
                        dg --------
                        dg --------

; Nasty 1
                        db $06
                        dg -#---#--
                        dg --#-#---
                        dg #--#-#--
                        dg -#-#---#
                        dg --##-#-#
                        dg ##-#-##-
                        dg -#-##---
                        dg ---#----

; Nasty 2
                        db $21
                        dg -#----#-
                        dg ##-#-###
                        dg #######-
                        dg -##--#-#
                        dg #-#--##-
                        dg -#####-#
                        dg ###-###-
                        dg ##-#-###

; Extra
                        db $00
                        dg --------
                        dg --------
                        dg --------
                        dg --------
                        dg --------
                        dg --------
                        dg --------
                        dg --------

; Pixel y-coordinate * 2.
                        db $30

; Animation frame.
                        db $03

; Direction and movement flags
                        db $01

; Airborne status indicator.
                        db $00

; Location in the attribute buffer at 23970
                        dw $5C61

; Jumping animation counter
                        db $00

; Conveyor

; Direction
                        db $01

; Location in the screen buffer
                        dw $780E

; Length.
                        db $05

; Border colour
                        db $02

; Unused?
                        db $00

; Item data

                        db $23
                        dw $5CB8
                        db $60,$FF

                        db $24
                        dw $5CEF
                        db $60,$FF

                        db $25
                        dw $5D21
                        db $68,$FF

                        db $26
                        dw $5D53
                        db $68,$FF

                        db $23
                        dw $5D7A
                        db $68,$FF
; Terminator
                        db $FF


; Portal

                        db $4C
                        dg ################
                        dg #--------------#
                        dg #-############-#
                        dg #-#----------#-#
                        dg #-#--#-##-#--#-#
                        dg #-#--#-##-#--#-#
                        dg #-#--#-##-#--#-#
                        dg #-#--#-##-#--#-#
                        dg #-#--#-##-#--#-#
                        dg #-#--#-##-#--#-#
                        dg #-#-########-#-#
                        dg #-#--#-##-#--#-#
                        dg #-#--#-##-#--#-#
                        dg #-#--#-##-#--#-#
                        dg #-#--#-##-#--#-#
                        dg ################

; Location
                        dw $5C3D,$603D

; Item graphic

                        dg --##----
                        dg -#--#---
                        dg #---#---
                        dg #--#----
                        dg -##-#---
                        dg -----#--
                        dg ----#-#-
                        dg -----#--

; Air supply
                        db $3F

; Game clock
                        db $80

; Horizontal guardians

                        db $C2
                        dw $5DA5
                        db $68,$00,$A5,$A8

                        db $05
                        dw $5DAC
                        db $68,$00,$AC,$B9

                        db $FF
                        dw $0000
                        db $00,$00,$00,$00

                        db $00
                        dw $0000
                        db $00,$00,$00,$00

; Terminator
                        db $FF

; Unused?
                        db $00,$00

; Vertical guardians

                        db $41
                        dw $4000
                        db $03,$02,$40,$66

                        db $06
                        dw $4001
                        db $0A,$FD,$03,$60

                        db $47
                        dw $3002
                        db $13,$01,$00,$40

                        db $43
                        dw $0003
                        db $1B,$04,$04,$60

; Terminator
                        db $FF

; Unused?
                        db $00,$00,$00,$00,$00,$00


                        dg -#-#-#-#-#-#-#-#
                        dg ################
                        dg ################
                        dg ----#------#----
                        dg ----#------#----
                        dg ----#------#----
                        dg #####------#####
                        dg -#-#-#-#-#-#-#-#
                        dg ################
                        dg ################
                        dg ----#------#----
                        dg ----#------#----
                        dg ----#------#----
                        dg -#-##------#-#-#
                        dg ################
                        dg ################

                        dg ----------------
                        dg -#-#-#-#-#-#-#-#
                        dg ################
                        dg ################
                        dg ----#------#----
                        dg #####------#####
                        dg ----#------#----
                        dg --#############-
                        dg --###------####-
                        dg ----#------#----
                        dg -#-#########-#-#
                        dg ################
                        dg ################
                        dg ----------------
                        dg ################
                        dg ----------------

                        dg ----------------
                        dg ----------------
                        dg ################
                        dg -#-#-#-#-#-#-#-#
                        dg ################
                        dg ################
                        dg ----#------#----
                        dg --###------####-
                        dg --#############-
                        dg ----#------#----
                        dg #####------#####
                        dg -#-#########-#-#
                        dg ################
                        dg ################
                        dg ----------------
                        dg ----------------

                        dg ----------------
                        dg -#-#-#-#-#-#-#-#
                        dg ################
                        dg #####------#####
                        dg ----#------#----
                        dg -#-#-#-#-#-#-#-#
                        dg ################
                        dg ################
                        dg -####------###-#
                        dg #####------#####
                        dg #####------#####
                        dg ----#------#----
                        dg -#-#-#-#-#-#-#-#
                        dg ################
                        dg ################
                        dg ----------------

                        dg -######---------
                        dg #--##--#--------
                        dg ########--------
                        dg ##-##-##--------
                        dg ###--###--------
                        dg -######---------
                        dg --#--#----------
                        dg --#--#----------
                        dg --#--#----------
                        dg -#----#---------
                        dg -#----#---------
                        dg -#----#---------
                        dg #------#--------
                        dg #------#--------
                        dg ##----##--------
                        dg ##----##--------

                        dg ----------------
                        dg ---######-------
                        dg --#--##--#------
                        dg --########------
                        dg --##-##-##------
                        dg --###--###------
                        dg ---######-------
                        dg ---#----#-------
                        dg --#------#------
                        dg --#------#------
                        dg -#--------#-----
                        dg -#--------#-----
                        dg #----------#----
                        dg #---------##----
                        dg ##--------##----
                        dg ##--------------

                        dg ----------------
                        dg ----------------
                        dg ----------------
                        dg -----######-----
                        dg ----#--##--#----
                        dg ----########----
                        dg ----##-##-##----
                        dg ----###--###----
                        dg -----######-----
                        dg ----#------#----
                        dg ---#--------#---
                        dg --#----------#--
                        dg -#------------#-
                        dg #--------------#
                        dg ##------------##
                        dg ##------------##

                        dg ----------------
                        dg -------######---
                        dg ------#--##--#--
                        dg ------########--
                        dg ------##-##-##--
                        dg ------###--###--
                        dg -------######---
                        dg -------#----#---
                        dg ------#------#--
                        dg ------#------#--
                        dg -----#--------#-
                        dg -----#--------#-
                        dg ----#----------#
                        dg ----##---------#
                        dg ----##--------##
                        dg --------------##

;------------------------------------------------------------------------------------------------------------------------------------------;

;----------------------------------------------------------------;
;                                                                ;
; Amoebatrons' Revenge (teleport: 156)                           ;
;                                                                ;
;----------------------------------------------------------------;

; The first 512 bytes are the attributes that define the layout of the cavern.

AmoebatronsRevengeData            DH "1600000000000000000000000000000000000000000000000000000016000016"
                                  DH "1600000000000000000000000000000000000000000000000000000000000016"
                                  DH "1600000000000000000000000000000000000000000000000000000000000016"
                                  DH "1600000000000000000000000000000000000000000000000000000000000016"
                                  DH "1600000000000000000000000000000000000000000000000000000000000016"
                                  DH "1600004242000042424200004242424242424242000042424200004242424216"
                                  DH "1600000000000000000000000000000000000000000000000000000000000016"
                                  DH "1642420000000000000000000000000000000000000000000000000000000016"
                                  DH "1600000000000000000000004242424242424242000042424200004242000016"
                                  DH "1600004242000042424200000000000000000000000000000000000000000016"
                                  DH "1600000000000000000000000000000000000000000000000000000000424216"
                                  DH "1600000000000000000000000000000000000000000000000000000000000016"
                                  DH "1600004242000042424200004242424242424242000042424200004242000016"
                                  DH "1642420000000000000000000000000000000000000000000000000000000016"
                                  DH "1600000000000000000000000000000000000000000000000000000000000016"
                                  DH "4242424242424242424242424242424242424242424242424242424242424242"

; The next 32 bytes specify the cavern name.

                                  defm "      Amoebatrons' Revenge      "    ; Cavern name.

; Background
                        db $00
                        dg --------
                        dg --------
                        dg --------
                        dg --------
                        dg --------
                        dg --------
                        dg --------
                        dg --------

; Floor
                        db $42
                        dg ########
                        dg ########
                        dg ##-##-##
                        dg -##-###-
                        dg ##---#-#
                        dg -#------
                        dg --------
                        dg --------

; Crumbling floor
                        db $02
                        dg ########
                        dg ##-##-##
                        dg #-#--#-#
                        dg --#--#--
                        dg -#-#--#-
                        dg --#-----
                        dg ----#---
                        dg --------

; Wall
                        db $16
                        dg ########
                        dg #------#
                        dg #------#
                        dg ########
                        dg ########
                        dg #------#
                        dg #------#
                        dg ########

; Conveyor
                        db $04
                        dg ####----
                        dg -##--##-
                        dg ####----
                        dg -##--##-
                        dg --------
                        dg #--##--#
                        dg ########
                        dg --------

; Nasty 1
                        db $44
                        dg -#---#--
                        dg --#-#---
                        dg #--#-#--
                        dg -#-#---#
                        dg --##-#-#
                        dg ##-#-##-
                        dg -#-##---
                        dg ---#----

; Nasty 2
                        db $05
                        dg -######-
                        dg --####--
                        dg ---###--
                        dg ---##---
                        dg ---##---
                        dg ----#---
                        dg ----#---
                        dg ----#---

; Extra
                        db $00
                        dg --------
                        dg --------
                        dg --------
                        dg --------
                        dg --------
                        dg --------
                        dg --------
                        dg --------

; Pixel y-coordinate * 2.
                        db $D0

; Animation frame.
                        db $03

; Direction and movement flags
                        db $01

; Airborne status indicator.
                        db $00

; Location in the attribute buffer at 23970
                        dw $5DBD

; Jumping animation counter
                        db $00

; Conveyor

; Direction
                        db $01

; Location in the screen buffer
                        dw $7827

; Length.
                        db $03

; Border colour
                        db $01

; Unused?
                        db $00

; Item data

                        db $03
                        dw $5C30
                        db $60,$FF

                        db $FF
                        dw $FFFF
                        db $FF,$FF

                        db $00
                        dw $FFFF
                        db $FF,$FF

                        db $00
                        dw $FFFF
                        db $FF,$FF

                        db $00
                        dw $FFFF
                        db $FF,$FF
; Terminator
                        db $FF


; Portal

                        db $0E
                        dg ################
                        dg #--------------#
                        dg #-##--------##-#
                        dg #-#----------#-#
                        dg #-#-#-#--#-#-#-#
                        dg #-#-#-#--#-#-#-#
                        dg #-#-#-#--#-#-#-#
                        dg #-#-#-#--#-#-#-#
                        dg #-#-#-#--#-#-#-#
                        dg #-#-#-#--#-#-#-#
                        dg #-#-#-#--#-#-#-#
                        dg #-#-#-#--#-#-#-#
                        dg #-#----------#-#
                        dg #-##--------##-#
                        dg #--------------#
                        dg ################

; Location
                        dw $5C1D,$601D

; Item graphic

                        dg --##----
                        dg -#--#---
                        dg #---#---
                        dg #--#----
                        dg -##-#---
                        dg -----#--
                        dg ----#-#-
                        dg -----#--

; Air supply
                        db $3F

; Game clock
                        db $80

; Horizontal guardians

                        db $C4
                        dw $5C6C
                        db $60,$00,$6C,$72

                        db $85
                        dw $5D50
                        db $68,$00,$4C,$51

                        db $43
                        dw $5CD0
                        db $60,$00,$CC,$D1

                        db $06
                        dw $5DB0
                        db $68,$07,$AC,$B2

; Terminator
                        db $FF

; Unused?
                        db $00,$00

; Vertical guardians

                        db $43
                        dw $0800
                        db $05,$03,$05,$68

                        db $04
                        dw $0801
                        db $0A,$02,$05,$68

                        db $05
                        dw $0802
                        db $14,$04,$05,$68

                        db $06
                        dw $0803
                        db $19,$01,$05,$68

; Terminator
                        db $FF

; Unused?
                        db $00,$00,$00,$00,$00,$00


                        dg ------####------
                        dg ----###--###----
                        dg ---#--####--#---
                        dg --##---##---##--
                        dg --###--##--###--
                        dg -#-##########-#-
                        dg #---##-##-##--#-
                        dg #----#--#-#--#--
                        dg -#--#--#--#--#--
                        dg --#-#--#---#--#-
                        dg --#--#--#---#--#
                        dg -#----#--#--#--#
                        dg #-----#--#-#--#-
                        dg -----#--#--#----
                        dg ----#---#---#---
                        dg ---------#------

                        dg ------####------
                        dg ----###--###----
                        dg ---#--####--#---
                        dg --##---##---##--
                        dg --###--##--###--
                        dg -#-##########-#-
                        dg -#--##-##-##---#
                        dg #----#-#---#---#
                        dg #----#--#--#--#-
                        dg -#--#---#-#--#--
                        dg --#-#--#--#--#--
                        dg --#-#--#---#--#-
                        dg -#---#--#---#--#
                        dg ------#--#--#---
                        dg ------#--#-#----
                        dg -----#----------

                        dg ------####------
                        dg ----###--###----
                        dg ---#--####--#---
                        dg --##---##---##--
                        dg --###--##--###--
                        dg -#-##########-#-
                        dg -#--##-##-##---#
                        dg -#---#--#--#---#
                        dg #-----#--#--#--#
                        dg #-----#--#--#-#-
                        dg -#---#--#--#-#--
                        dg --#--#-#--#--#--
                        dg --#-#--#--#---#-
                        dg ----#---#--#----
                        dg -----#---#--#---
                        dg ---------#------

                        dg ------####------
                        dg ----###--###----
                        dg ---#--####--#---
                        dg --##---##---##--
                        dg --###--##--###--
                        dg -#-##########-#-
                        dg -#--##-##-##--#-
                        dg --#-#--#---#--#-
                        dg --#--#--#--#---#
                        dg -#----#--#--#--#
                        dg #-----#--#--#-#-
                        dg #----#---#--#-#-
                        dg -#--#---#--#---#
                        dg ----#--#--#-----
                        dg ----#--#--------
                        dg --------#-------

                        dg ----##----------
                        dg ----##----------
                        dg ----##----------
                        dg ----##----------
                        dg ----##----------
                        dg ----##----------
                        dg ----##----------
                        dg ----##----------
                        dg ----##----------
                        dg ----##----------
                        dg ##########------
                        dg ----##----------
                        dg -##----##-------
                        dg ##-#--#-##------
                        dg #-##--##-#------
                        dg -##----##-------

                        dg ------##--------
                        dg ------##--------
                        dg ------##--------
                        dg ------##--------
                        dg ------##--------
                        dg ------##--------
                        dg ------##--------
                        dg ------##--------
                        dg ------##--------
                        dg ------##--------
                        dg --##########----
                        dg ------##--------
                        dg ---##----##-----
                        dg --#--#--##-#----
                        dg --####--##-#----
                        dg ---##----##-----

                        dg --------##------
                        dg --------##------
                        dg --------##------
                        dg --------##------
                        dg --------##------
                        dg --------##------
                        dg --------##------
                        dg --------##------
                        dg --------##------
                        dg --------##------
                        dg ----##########--
                        dg --------##------
                        dg -----##----##---
                        dg ----#-##--##-#--
                        dg ----##-#--#-##--
                        dg -----##----##---

                        dg ----------##----
                        dg ----------##----
                        dg ----------##----
                        dg ----------##----
                        dg ----------##----
                        dg ----------##----
                        dg ----------##----
                        dg ----------##----
                        dg ----------##----
                        dg ----------##----
                        dg ------##########
                        dg ----------##----
                        dg -------##----##-
                        dg ------#--#--##-#
                        dg ------####--##-#
                        dg -------##----##-

;----------------------------------------------------------------;
;                                                                ;
; Solar Power Generator (teleport: 256)                          ;
;                                                                ;
;----------------------------------------------------------------;

SolarPowerGeneratorData           DH "1616162424242424242424242424242424242424242424242424242424242416"
                                  DH "1624242424242424242424242424242424242424242424242424242424242416"
                                  DH "1624242424242424242424242424242424242424242424242424242424242416"
                                  DH "1624242424242424242424242424242424242424242424242424242424242416"
                                  DH "1624242424242424242424242424242424242424242424242424242424242416"
                                  DH "1624242020242424242020202020202424242424242424242020202020202016"
                                  DH "1624242424242424242424242424242424242424242424242424242424242416"
                                  DH "1624242424242424242424242424242424242420202024242424242424242416"
                                  DH "1620202424242424242424242420202024242424242424242020202020202016"
                                  DH "1624242424242424242424242424242424242424242424242424242424242416"
                                  DH "1624242424242424242424242424242424242420202424242424242424242416"
                                  DH "1620202020242424242424242424242424242424242424242020202020202016"
                                  DH "1624242424242426262626242424202020202024242424242424242424242416"
                                  DH "1624242424242424242424242424242424242424242424242424242424242416"
                                  DH "1616162424242424242424242424242424242424242424242424242424242416"
                                  DH "1616162020202020202020202020202020202020202020162020202020202016"

; Cavern name

                        defm "     Solar Power Generator      "

; Background
                        db $24
                        dg --------
                        dg --------
                        dg --------
                        dg --------
                        dg --------
                        dg --------
                        dg --------
                        dg --------

; Floor
                        db $20
                        dg ########
                        dg ########
                        dg ##-##-##
                        dg -##-###-
                        dg ##---#-#
                        dg -#------
                        dg --------
                        dg --------

; Crumbling floor
                        db $02
                        dg ########
                        dg ##-##-##
                        dg #-#--#-#
                        dg --#--#--
                        dg -#-#--#-
                        dg --#-----
                        dg ----#---
                        dg --------

; Wall
                        db $16
                        dg --#---#-
                        dg ########
                        dg #---#---
                        dg ########
                        dg --#---#-
                        dg ########
                        dg #---#---
                        dg ########

; Conveyor
                        db $26
                        dg ####----
                        dg -##--##-
                        dg ####----
                        dg -##--##-
                        dg --------
                        dg #--##--#
                        dg ########
                        dg --------

; Nasty 1
                        db $44
                        dg -#---#--
                        dg --#-#---
                        dg #--#-#--
                        dg -#-#---#
                        dg --##-#-#
                        dg ##-#-##-
                        dg -#-##---
                        dg ---#----

; Nasty 2
                        db $05
                        dg -######-
                        dg --####--
                        dg ---###--
                        dg ---##---
                        dg ---##---
                        dg ----#---
                        dg ----#---
                        dg ----#---

; Extra
                        db $00
                        dg --------
                        dg --------
                        dg --------
                        dg --------
                        dg --------
                        dg --------
                        dg --------
                        dg --------

; Pixel y-coordinate * 2.
                        db $A0

; Animation frame.
                        db $00

; Direction and movement flags
                        db $00

; Airborne status indicator.
                        db $00

; Location in the attribute buffer at 23970
                        dw $5D4E

; Jumping animation counter
                        db $00

; Conveyor

; Direction
                        db $00

; Location in the screen buffer
                        dw $7887

; Length.
                        db $04

; Border colour
                        db $03

; Unused?
                        db $00

; Item data

                        db $23
                        dw $5C3E
                        db $60,$FF

                        db $24
                        dw $5CA1
                        db $60,$FF

                        db $25
                        dw $5D9E
                        db $68,$FF

                        db $FF
                        dw $FFFF
                        db $FF,$FF

                        db $00
                        dw $FFFF
                        db $FF,$FF
; Terminator
                        db $FF


; Portal

                        db $4E
                        dg ################
                        dg #--------------#
                        dg #-############-#
                        dg #-#----------#-#
                        dg #-#-########-#-#
                        dg #-#-#------#-#-#
                        dg #-#-#-####-#-#-#
                        dg #-#-#-#--#-#-#-#
                        dg #-#-#-#--#-#-#-#
                        dg #-#-#-####-#-#-#
                        dg #-#-#------#-#-#
                        dg #-#-########-#-#
                        dg #-#----------#-#
                        dg #-############-#
                        dg #--------------#
                        dg ################

; Location
                        dw $5C21,$6021

; Item graphic

                        dg --##----
                        dg -#--#---
                        dg #---#---
                        dg #--#----
                        dg -##-#---
                        dg -----#--
                        dg ----#-#-
                        dg -----#--

; Air supply
                        db $3F

; Game clock
                        db $F0

; Horizontal guardians

                        db $26
                        dw $5C78
                        db $60,$00,$77,$7D

                        db $21
                        dw $5CDC
                        db $60,$00,$D6,$DD

                        db $A2
                        dw $5D3D
                        db $68,$07,$37,$3D

                        db $26
                        dw $5DB0
                        db $68,$00,$AD,$BD

; Terminator
                        db $FF

; Unused?
                        db $00,$00

; Vertical guardians

                        db $26
                        dw $4000
                        db $05,$03,$02,$66

                        db $22
                        dw $3801
                        db $0B,$FE,$30,$66

                        db $21
                        dw $5002
                        db $10,$01,$04,$50

                        db $FF
                        dw $0000
                        db $00,$00,$00,$00

; Terminator
                        db $00

; Unused?
                        db $00,$00,$00,$00,$00,$00


                        dg ------##-#------
                        dg ----####-###----
                        dg --######--####--
                        dg --######-#--##--
                        dg -#-#####-##--##-
                        dg -#-#####-###-##-
                        dg #--#####-#######
                        dg ---------#######
                        dg #---###---------
                        dg #---###-########
                        dg -#---##-#######-
                        dg -#------####--#-
                        dg --#----------#--
                        dg --##--------##--
                        dg ----##----##----
                        dg ------#-##------

                        dg ------####------
                        dg ----########----
                        dg --#######-#-##--
                        dg --########--##--
                        dg -#-#######---##-
                        dg -#---####-##-##-
                        dg #--##--##-######
                        dg #--####--#######
                        dg #---###--#######
                        dg #---##-##--#####
                        dg -#---#-####--##-
                        dg -#-----#####--#-
                        dg --#----------#--
                        dg --##--------##--
                        dg ----##----##----
                        dg ------####------

                        dg ------####------
                        dg ----########----
                        dg --#-#####-####--
                        dg --##-#####--#---
                        dg -#-##-#####--##-
                        dg -#-###-####--##-
                        dg #--####-##-#####
                        dg #--####---######
                        dg #---##---#######
                        dg #---#-##-#######
                        dg -#---####-#####-
                        dg -#-----###----#-
                        dg -------------#--
                        dg --##---------#--
                        dg ----##----##----
                        dg ------####------

                        dg ------####------
                        dg ----#-######----
                        dg --####-##-####--
                        dg --####-###--##--
                        dg -#-###-####--##-
                        dg -#-####-####-#--
                        dg #--####-###---##
                        dg #--####----#####
                        dg #---#----#######
                        dg #----###-#######
                        dg -----###-######-
                        dg -#-----##-##--#-
                        dg --#----------#--
                        dg --##--------##--
                        dg ----##-----#----
                        dg ------####------

                        dg -----##---------
                        dg ----##----------
                        dg ---##-----------
                        dg --###-----------
                        dg -###-#----------
                        dg ##--#-#-#-------
                        dg #----#-###------
                        dg ------####------
                        dg -----##--#------
                        dg ##--###-##------
                        dg ##-##----#------
                        dg ##########------
                        dg ###---#---------
                        dg ##--#---#-------
                        dg ##-#-#-#-#------
                        dg ----#---#-------

                        dg -------##-------
                        dg ------##--------
                        dg -----##---------
                        dg ----###---------
                        dg ---###-#--------
                        dg --##--#-#-#-----
                        dg --#----#-###----
                        dg --------####----
                        dg -------##--#----
                        dg -##---###-##----
                        dg -##--##----#----
                        dg -###########----
                        dg -####---#-------
                        dg -##---#---#-----
                        dg -##--#-#-#-#----
                        dg ------#---#-----

                        dg ---------##-----
                        dg --------##------
                        dg -------##-------
                        dg ------###-------
                        dg -----###-#------
                        dg ----##--#-#-#---
                        dg ----#----#-###--
                        dg ----------####--
                        dg ---------##--#--
                        dg --##----###-##--
                        dg --##---##----#--
                        dg --############--
                        dg --#####---#-----
                        dg --##----#---#---
                        dg --##---#-#-#-#--
                        dg --------#---#---

                        dg -----------##---
                        dg ----------##----
                        dg ---------##-----
                        dg --------###-----
                        dg -------###-#----
                        dg ------##--#-#-#-
                        dg ------#----#-###
                        dg ------------####
                        dg -----------##--#
                        dg -----##---###-##
                        dg -----##--##----#
                        dg -----###########
                        dg -----####---#---
                        dg -----##---#---#-
                        dg -----##--#-#-#-#
                        dg ----------#---#-

;----------------------------------------------------------------;
;                                                                ;
; The Final Barrier. (teleport: 1256)                            ;
;                                                                ;
;----------------------------------------------------------------;

; The first 512 bytes are the attributes that define the layout of the cavern.

TheFinalBarrierData               DH "2C22222222222C28282828282F2F2F2F2F28282828282E32322E282828282828"
                                  DH "2C22222222222C28282F28282F2F2F2F2F28282828283A38383A2828282A2A2A"
                                  DH "2C222216222C2E2E2E2E2E2E2F2F2F2F2F2E2B2E2B2E3A38383A2F2F2F2A2A2A"
                                  DH "282C2C162C2E2E2E2E2E2E2E2E2828282C2C2C2C2C2C3A3A3A3A2F2F2F282A28"
                                  DH "282F2816282E2E2E2E2E2E2E2E2C2C2C26262626262626262626262626262626"
                                  DH "282C2C162C2E2E2E2E2E2E2E2E27262626262600002600000000000000000026"
                                  DH "0C262626262121210E0E21212127262626262600002600000000000000000026"
                                  DH "2626262626262626262626262626262626262600002600000000000000000026"
                                  DH "2600000000000000000000000000000000000000000000000000000000424226"
                                  DH "2600000000000000000000000000000000000000000000000000000000000026"
                                  DH "2605050505050505050505050505050505050505050505000000020000000026"
                                  DH "2600000000000000004400004400000000440000004400000000000042000026"
                                  DH "2642420000000000000000000000000000000000000000000000000000000026"
                                  DH "2600000000424200000000000000000000000000000000000000000000000026"
                                  DH "2600000000000000000000000000000000000000000000000000000000000026"
                                  DH "2642424242424242424242424242424242424242424242424242424242424226"

; Cavern name

                                  defm "        The Final Barrier       "

; Background
                                  db $00
                                  DG --------
                                  DG --------
                                  DG --------
                                  DG --------
                                  DG --------
                                  DG --------
                                  DG --------
                                  DG --------

; Floor
                                  db $42
                                  DG ########
                                  DG ########
                                  DG ##-##-##
                                  DG -##-###-
                                  DG ##---#-#
                                  DG -#------
                                  DG --------
                                  DG --------

; Crumbling floor
                                  db $02
                                  DG ########
                                  DG ##-##-##
                                  DG #-#--#-#
                                  DG --#--#--
                                  DG -#-#--#-
                                  DG --#-----
                                  DG ----#---
                                  DG --------

; Wall
                                  db $26
                                  DG --#---#-
                                  DG ########
                                  DG #---#---
                                  DG ########
                                  DG --#---#-
                                  DG ########
                                  DG #---#---
                                  DG ########

; Conveyor
                                  db $05
                                  DG ####----
                                  DG -##--##-
                                  DG ####----
                                  DG -##--##-
                                  DG --------
                                  DG #--##--#
                                  DG ########
                                  DG --------

; Nasty 1
                                  db $44
                                  DG ---#----
                                  DG ---#----
                                  DG ##-#-##-
                                  DG --###---
                                  DG ##-#-##-
                                  DG --###---
                                  DG -#-#-#--
                                  DG #--#--#-

; Nasty 2
                                  db $0A
                                  DG -######-
                                  DG --####--
                                  DG ---###--
                                  DG ---##---
                                  DG ---##---
                                  DG ----#---
                                  DG ----#---
                                  DG ----#---

; Extra
                                  db $00
                                  DG --------
                                  DG --------
                                  DG --------
                                  DG --------
                                  DG --------
                                  DG --------
                                  DG --------
                                  DG --------

; Pixel y-coordinate * 2.
                                  db $D0

; Animation frame.
                                  db $00

; Direction and movement flags
                                  db $01

; Airborne status indicator.
                                  db $00

; Location in the attribute buffer at 23970
                                  dw $5DBB

; Jumping animation counter
                                  db $00

; Conveyor

; Direction
                                  db $01

; Location in the screen buffer
                                  dw $7841

; Length.
                                  db $16

; Border colour
                                  db $02

; Unused?
                                  db $00

; Item data

                                  db $03
                                  dw $5CB7
                                  db $60,$FF

                                  db $04
                                  dw $5CDE
                                  db $60,$FF

                                  db $05
                                  dw $5D6A
                                  db $68,$FF

                                  db $06
                                  dw $5D6E
                                  db $68,$FF

                                  db $03
                                  dw $5D73
                                  db $68,$FF
; Terminator
                                  db $FF


; Portal

                                  db $1E
                                  DG ----------------
                                  DG -----######-----
                                  DG ---##------##---
                                  DG --#---####---#--
                                  DG -#---#----#---#-
                                  DG -#--#------#--#-
                                  DG -#--#------#--#-
                                  DG -#--#------#--#-
                                  DG -#---#----#---#-
                                  DG --#---#--#---#--
                                  DG ---##-#--#-##---
                                  DG -#--#-#--#-#--#-
                                  DG -####-#--#-####-
                                  DG -#----#--#----#-
                                  DG -######--######-
                                  DG ----------------

; Location
                                  dw $5CB3,$60B3

; Item graphic

                                  DG --##----
                                  DG -#--#---
                                  DG #---#---
                                  DG #--#----
                                  DG -##-#---
                                  DG -----#--
                                  DG ----#-#-
                                  DG -----#--

; Air supply
                                  db $3F

; Game clock
                                  db $FC

; Horizontal guardians

                                  db $46
                                  dw $5DA7
                                  db $68,$00,$A7,$B6

                                  db $FF
                                  dw $0000
                                  db $00,$00,$00,$00

                                  db $00
                                  dw $0000
                                  db $00,$00,$00,$00

                                  db $00
                                  dw $0000
                                  db $00,$00,$00,$00

; Terminator
                                  db $FF

; Unused?
                                  db $00,$00

; Vertical guardians

                                  db $07
                                  dw $3000
                                  db $18,$01,$28,$67

                                  db $FF
                                  dw $0000
                                  db $00,$00,$00,$00

                                  db $00
                                  dw $0000
                                  db $00,$00,$00,$00

                                  db $00
                                  dw $0000
                                  db $00,$00,$00,$00

; Terminator
                                  db $00

; Unused?
                                  db $00,$00,$00,$00,$00,$00


                                  DG ----------------
                                  DG ----------------
                                  DG ----------------
                                  DG ------####------
                                  DG ----##----##----
                                  DG ---#--------#---
                                  DG --#----------#--
                                  DG -#------------#-
                                  DG #--------------#
                                  DG -#------------#-
                                  DG --#----------#--
                                  DG ##-#--------#-##
                                  DG --#-##----##-#--
                                  DG -#--#-####-#--#-
                                  DG ---#--#--#--#---
                                  DG ------#--#------

                                  DG ----------------
                                  DG ----------------
                                  DG ----------------
                                  DG ------####------
                                  DG ----##----##----
                                  DG ---#--------#---
                                  DG --#----------#--
                                  DG -#------------#-
                                  DG #####------#####
                                  DG -#-#-######-#-#-
                                  DG --#-#-####-#-#--
                                  DG ---#--#--#--#---
                                  DG ----##----##----
                                  DG ------####------
                                  DG ----------------
                                  DG ----------------

                                  DG -----#----#-----
                                  DG -----#----#-----
                                  DG ---#--#--#--#---
                                  DG -#--#-####-#--#-
                                  DG --#-##----##-#--
                                  DG #--#--####--#--#
                                  DG #-#--######--#-#
                                  DG -#---##--##---#-
                                  DG #----##--##----#
                                  DG -#---######---#-
                                  DG --#---####---#--
                                  DG ---#--------#---
                                  DG ----##----##----
                                  DG ------####------
                                  DG ----------------
                                  DG ----------------

                                  DG ----------------
                                  DG ----------------
                                  DG ----------------
                                  DG ------####------
                                  DG ----##----##----
                                  DG ---#--#--#--#---
                                  DG --#-#-#--#-#-#--
                                  DG -#-##########-#-
                                  DG ####-##--#######
                                  DG -#---######---#-
                                  DG --#---####---#--
                                  DG ---#--------#---
                                  DG ----##----##----
                                  DG ------####------
                                  DG ----------------
                                  DG ----------------

                                  DG ---#--#---------
                                  DG ----##----------
                                  DG ---####---------
                                  DG #-######-#------
                                  DG -###--###-------
                                  DG -###--###-------
                                  DG #-######-#------
                                  DG -#-####-#-------
                                  DG -#--##--#-------
                                  DG -#-#--#-#-------
                                  DG -########-------
                                  DG ----##----------
                                  DG -##----##-------
                                  DG #--#--#-##------
                                  DG #-##--#--#------
                                  DG -##----##-------

                                  DG ------##--------
                                  DG -----####-------
                                  DG -----####-------
                                  DG ---###--###-----
                                  DG --###-##-###----
                                  DG --###-##-###----
                                  DG ---###--###-----
                                  DG ---#-####-#-----
                                  DG ---#-####-#-----
                                  DG ---#--##--#-----
                                  DG ---########-----
                                  DG ------##--------
                                  DG ---##----##-----
                                  DG --#--#--#--#----
                                  DG --##-#--#-##----
                                  DG ---##----##-----

                                  DG -------####-----
                                  DG -------####-----
                                  DG -------#--#-----
                                  DG ----###-##-###--
                                  DG ----##-####-##--
                                  DG ----##-####-##--
                                  DG ----###-##-###--
                                  DG -----#-#--#-#---
                                  DG -----#-####-#---
                                  DG -----#-####-#---
                                  DG -----########---
                                  DG --------##------
                                  DG -----##----##---
                                  DG ----##-#--#--#--
                                  DG ----#--#--##-#--
                                  DG -----##----##---

                                  DG ---------####---
                                  DG ---------#--#---
                                  DG ----------##----
                                  DG ------##-####-##
                                  DG ------#-######-#
                                  DG ------#-######-#
                                  DG ------##-####-##
                                  DG -------#--##--#-
                                  DG -------#-#--#-#-
                                  DG -------#-####-#-
                                  DG -------########-
                                  DG ----------##----
                                  DG -------##----##-
                                  DG ------#-##--##-#
                                  DG ------#--#--#--#
                                  DG -------##----##-


; Stop planting code after this. (When generating a tape file we save bytes below here).

AppLast                           EQU *                                    ; The last used byte's address.

; Setup the emulation registers, so Zeus can emulate this code correctly.

Zeus_PC                           EQU AppEntry                             ; Tell the emulator where to start.
Zeus_SP                           EQU MemTop                               ; Tell the emulator where to put the stack.

; Tape options

                                  IF enabled bGenerateZ80
                                      output_z80 sFileName+".z80"     ;
                                  ENDIF

                                  IF enabled bGenerateSZX
                                      output_szx sFileName+".szx"     ;
                                  ENDIF

; For some reason Spectaculator isn't loading the tzx file correctly first time, only if LOAD "" is typed manually when running. Very curious.

        if enabled bGenerateTAP or enabled bGenerateTZX

                                  ; This is a loading screen, we want one for the tap and tzx files

                                  ORG $4000

                                  DH "2200000000000000003000FF00000000FF000000000000000000000000300022"
                                  DH "2200000000000000000000000000000030000000000000000000000000000022"
                                  DH "2200000000000000000000000000000000000000000000000000000000000022"
                                  DH "2200000000000000000000000000000000000000000000000000000000000022"
                                  DH "2200000000000000000000000000000000000000000000443000004400000022"
                                  DH "22FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF22"
                                  DH "2200000000000000000000000000000000000000000000000000000000003022"
                                  DH "22FFFFFF00000000007D00000000000000000000000000000000000000000022"
                                  DH "FF00000000000000004800FE00000000FE0000000000000000000000004800FF"
                                  DH "FF000000000000000000000000000000480000000000000000000000000000FF"
                                  DH "FF000000000000000000000000000000000000000000000000000000000000FF"
                                  DH "FF000000000000000000000000000000000000000000000000000000000000FF"
                                  DH "FF000000000000000000000000000000000000000000002848000028000000FF"
                                  DH "FFFFFFFFFFFFFFFFFFFFFFFFFFFFDBDBDBDBFFDBDBDBDBFFFFFFFFFFFFFFFFFF"
                                  DH "FF000000000000000000000000000000000000000000000000000000000048FF"
                                  DH "FFFFFFFF0000000000E7000000000000000000000000000000000000000000FF"
                                  DH "88000000000000000088007E000000007E000000000000000000000000880088"
                                  DH "8800000000000000000000000000000088000000000000000000000000000088"
                                  DH "8800000000000000000000000000000000000000000000000000000000000088"
                                  DH "8800000000000000000000000000000000000000000000000000000000000088"
                                  DH "8800000000000000000000000000000000000000000000948800009400000088"
                                  DH "88DBDBDBDBDBDBDBDBDBDBDBDBDBA5A5A5A5DBA5A5A5A5DBDBDBDBDBDBDBDB88"
                                  DH "8800000000000000000000000000000000000000000000000000000000008888"
                                  DH "88DBDBDB00000000006700000000000000000000000000000000000000000088"
                                  DH "FF000000000000000090007C000000007C0000000000000000000000009000FF"
                                  DH "FF000000000000000000000000000000900000000000000000000000000000FF"
                                  DH "FF000000000000000000000000000000000000000000000000000000000000FF"
                                  DH "FF000000000000000000000000000000000000000000000000000000000000FF"
                                  DH "FF000000000000000000000000000000000000000000005190000051000000FF"
                                  DH "FF6E6E6E6E6E6E6E6E6E6E6E6E6E242424246E242424246E6E6E6E6E6E6E6EFF"
                                  DH "FF000000000000000000000000000000000000000000000000000000000090FF"
                                  DH "FF6E6E6E00000000003D000000000000000000000000000000000000000000FF"
                                  DH "22000000000000000068004C000000004C000000000000000000000000680022"
                                  DH "2200000000000000000000000000000068000000000000000000000000000022"
                                  DH "2200000000000000000000000000000000000000000000000000000000000022"
                                  DH "2200000000000000000000000000000000000000000000000000000000000022"
                                  DH "2200000000000000000000000000000000000000000000356800003500000022"
                                  DH "22C5C5C5C5C5C5C5C5C5C5C5C5C552525252C552525252C5C5C5C5C5C5C5C522"
                                  DH "2200000000000000000000000000000000000000000000000000000000006822"
                                  DH "22C5C5C500000000007C00000000000000000000000000000000000000000022"
                                  DH "FF000000000000000004004C000000004C0000000000000000000000000400FF"
                                  DH "FF000000000000000000000000000000040000000000000000000000000000FF"
                                  DH "FF000000000000000000000000000000000000000000000000000000000000FF"
                                  DH "FF000000000000000000000000000000000000000000000000000000000000FF"
                                  DH "FF00000000000000000000000000000000000000000000D6040000D6000000FF"
                                  DH "FF404040404040404040404040402020202040202020204040404040404040FF"
                                  DH "FF000000000000000000000000000000000000000000000000000000000004FF"
                                  DH "FF40404000000000007F000000000000000000000000000000000000000000FF"
                                  DH "8800000000000000000A000800000000080000000000000000000000000A0088"
                                  DH "880000000000000000000000000000000A000000000000000000000000000088"
                                  DH "8800000000000000000000000000000000000000000000000000000000000088"
                                  DH "8800000000000000000000000000000000000000000000000000000000000088"
                                  DH "8800000000000000000000000000000000000000000000580A00005800000088"
                                  DH "8800000000000000000000000000080808080008080808000000000000000088"
                                  DH "8800000000000000000000000000000000000000000000000000000000000A88"
                                  DH "880000000000000003FC00000000000000000000000000000000000000000088"
                                  DH "FF000000000000000004000800000000080000000000000000000000000400FF"
                                  DH "FF000000000000000000000000000000040000000000000000000000000000FF"
                                  DH "FF000000000000000000000000000000000000000000000000000000000000FF"
                                  DH "FF000000000000000000000000000000000000000000000000000000000000FF"
                                  DH "FF000000000000000000000000000000000000000000001004000010000000FF"
                                  DH "FF000000000000000000000000000000000000000000000000000000000000FF"
                                  DH "FF000000000000000000000000000000000000000000000000000000000004FF"
                                  DH "FF000000000000000078000000000000000000000000000000000000000000FF"
                                  DH "2200000000000000007C00000000000000222222004400000000000000000022"
                                  DH "22FFFFFFFF0000000F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F00000022"
                                  DH "2200000000000000000000000000000000000000000000000000000000FFFF22"
                                  DH "2200000000000000000000000000000000000000000000000000000000000022"
                                  DH "2200000000000000000000004400000000000000222222FFFFFFFFFFFFFFFF22"
                                  DH "2200060000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000FFFF22"
                                  DH "22007E0000000000000000000000000000000000000000000000000000B6DB22"
                                  DH "22FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF22"
                                  DH "FF00000000000000007F00000000000000FFFFFF0028000000000000000000FF"
                                  DH "FFFFFFFFFF0000006666666666666666666666666666666666666666000000FF"
                                  DH "FF00000000000000000000000000000000000000000000000000000000FFFFFF"
                                  DH "FF000000000000000000000000000000000000000000000000000000000000FF"
                                  DH "FF00000000000000000000002800000000000000FFFFFFDBDBDBDBDBFFFFFFFF"
                                  DH "FF003E0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000009249FF"
                                  DH "FF007E0000000000000000000000000000000000000000000000000000FFFFFF"
                                  DH "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
                                  DH "8800000000000000003800000000000000888888009400000000000000000088"
                                  DH "88DBDBDBDB0000000F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F00000088"
                                  DH "8800000000000000000000000000000000000000000000000000000000DBDB88"
                                  DH "8800000000000000000000000000000000000000000000000000000000000088"
                                  DH "8800000000000000000000009400000000000000888888A5A5A5A5A5DBDBDB88"
                                  DH "88007C0000DBDBDBDBDBDBDBDBDBDBDBDBDBDBDB000000000000000000B6DB88"
                                  DH "8800F70000000000000000000000000000000000000000000000000000924988"
                                  DH "88DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB88"
                                  DH "FF00000000000000003800000000000000FFFFFF0051000000000000000000FF"
                                  DH "FF6E6E6E6E0000006666666666666666666666666666666666666666000000FF"
                                  DH "FF000000000000000000000000000000000000000000000000000000006E6EFF"
                                  DH "FF000000000000000000000000000000000000000000000000000000000000FF"
                                  DH "FF00000000000000000000005100000000000000FFFFFF24242424246E6E6EFF"
                                  DH "FF003400006E6E6E6E6E6E6E6E6E6E6E6E6E6E6E000000000000000000FFFFFF"
                                  DH "FF00FB0000000000000000000000000000000000000000000000000000B6DBFF"
                                  DH "FF6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6EFF"
                                  DH "2200000000000000006C00000000000000222222003500000000000000000022"
                                  DH "22C5C5C5C5000000000000000000000000000000000000000000000000000022"
                                  DH "2200000000000000000000000000000000000000000000000000000000C5C522"
                                  DH "2200000000000000000000000000000000000000000000000000000000000022"
                                  DH "22000000000000000000000035000000000000002222225252525252C5C5C522"
                                  DH "22003E0000C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5000000000000000000924922"
                                  DH "22003C0000000000000000000000000000000000000000000000000000FFFF22"
                                  DH "22C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C522"
                                  DH "FF00000000000000006C00000000000000FFFFFF00D6000000000000000000FF"
                                  DH "FF404040400000009999999999999999999999999999999999999999000000FF"
                                  DH "FF000000000000000000000000000000000000000000000000000000004040FF"
                                  DH "FF000000000000000000000000000000000000000000000000000000000000FF"
                                  DH "FF0000000000000000000000D600000000000000FFFFFF2020202020404040FF"
                                  DH "FF003C0000404040404040404040404040404040000000000000000000B6DBFF"
                                  DH "FF007600000000000000000000000000000000000000000000000000009249FF"
                                  DH "FF404040404040404040404040404040404040404040404040404040404040FF"
                                  DH "880000000000000001C700000000000000888888005800000000000000000088"
                                  DH "8800000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000088"
                                  DH "8800000000000000000000000000000000000000000000000000000000000088"
                                  DH "8800000000000000000000000000000000000000000000000000000000000088"
                                  DH "8800000000000000000000005800000000000000888888080808080800000088"
                                  DH "8800180000000000000000000000000000000000000000000000000000FFFF88"
                                  DH "88006E0000000000000000000000000000000000000000000000000000B6DB88"
                                  DH "8800000000000000000000000000000000000000000000000000000000000088"
                                  DH "FF00000000000000006C00000000000000FFFFFF0010000000000000000000FF"
                                  DH "FF000000000000000000000000000000000000000000000000000000000000FF"
                                  DH "FF000000000000000000000000000000000000000000000000000000000000FF"
                                  DH "FF000000000000000000000000000000000000000000000000000000000000FF"
                                  DH "FF00000000000000000000001000000000000000FFFFFF0000000000000000FF"
                                  DH "FF003C00000000000000000000000000000000000000000000000000009249FF"
                                  DH "FF00770000000000000000000000000000000000000000000000000000FFFFFF"
                                  DH "FF000000000000000000000000000000000000000000000000000000000000FF"
                                  DH "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
                                  DH "0000000000000000000000000000000000000000000000000000000000000000"
                                  DH "0000000000000000000000000000000000000000000000000000000000000000"
                                  DH "0000000000000000000000000000000000000000000000000000000000000000"
                                  DH "0000000000000000000000000000000000000000000000000000000000000000"
                                  DH "0600060000000000000000000000000000000000000000000000000000000000"
                                  DH "7E007E0000000000000000000000000000000000000000000000000000000000"
                                  DH "0000000000000000000000000000000000000000000000000000000000000000"
                                  DH "FFFFFFFFFFFFFFFFFFC3FFFFEFFFFFEFFFC3FFFFFFFFFFFFFFFFFFFFFFFFFFFF"
                                  DH "3C3E7C0000000000000000000000000000000000000000000000000000000000"
                                  DH "0000000000000000000000000000000000000000000000000000000000000000"
                                  DH "42100040003C00000000003C3C3C3C3C3C0000003C00000000003C3C3C3C3C3C"
                                  DH "0000000000000000000000000000000000000000000000000000000000000000"
                                  DH "3E003E0000000000000000000000000000000000000000000000000000000000"
                                  DH "7E007E0000000000000000000000000000000000000000000000000000000000"
                                  DH "0000000000000000000000000000000000000000000000000000000000000000"
                                  DH "FFFFFFFFFFFFFFFFFFBDC787C7E3C7EFFFBDC7BBC7E387FFFFFFFFFFFFFFFFFF"
                                  DH "42084200FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00"
                                  DH "0000000000000000000000000000000000000000000000000000000000000000"
                                  DH "42003C4000401C381C3800464646464646000000401C381C3800464646464646"
                                  DH "0000000000000000000000000000000000000000000000000000000000000000"
                                  DH "7C007C0000000000000000000000000000000000000000000000000000000000"
                                  DH "F700F70000000000000000000000000000000000000000000000000000000000"
                                  DH "0000000000000000000000000000000000000000000000000000000000000000"
                                  DH "FFFFFFFFFFFFFFFFFFBFBBBBEFDFFBEFFFBFFBBBBBDFBBFFFFFFFFFFFFFFFFFF"
                                  DH "42084200FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00"
                                  DH "0000000000000000000000000000000000000000000000000000000000000000"
                                  DH "7E304478003C20442044004A4A4A4A4A4A0000003C20442044004A4A4A4A4A4A"
                                  DH "0000000000000000000000000000000000000000000000000000000000000000"
                                  DH "3400340000000000000000000000000000000000000000000000000000000000"
                                  DH "FB00FB0000000000000000000000000000000000000000000000000000000000"
                                  DH "0000000000000000000000000000000000000000000000000000000000000000"
                                  DH "FFFFFFFFFFFFFFFFFFBF87BBEFDFC3EFFFBFC3D787DFBBFFFFFFFFFFFFFFFFFF"
                                  DH "7E087C00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00"
                                  DH "0000000000000000000000000000000000000000000000000000000000000000"
                                  DH "4210444400022044207800525252525252000000022044207800525252525252"
                                  DH "0000000000000000000000000000000000000000000000000000000000000000"
                                  DH "3E003E0000000000000000000000000000000000000000000000000000000000"
                                  DH "3C003C0000000000000000000000000000000000000000000000000000000000"
                                  DH "0000000000000000000000000000000000000000000000000000000000000000"
                                  DH "FFFFFFFFFFFFFFFFFFBDBFBBEFDFBBEFFFBDBBD7BFDFBBFFFFFFFFFFFFFFFFFF"
                                  DH "42084400FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00"
                                  DH "0000000000000000000000000000000000000000000000000000000000000000"
                                  DH "42103C4400422044204000626262626262000000422044204000626262626262"
                                  DH "0000000000000000000000000000000000000000000000000000000000000000"
                                  DH "3C003C0000000000000000000000000000000000000000000000000000000000"
                                  DH "7600760000000000000000000000000000000000000000000000000000000000"
                                  DH "0000000000000000000000000000000000000000000000000000000000000000"
                                  DH "FFFFFFFFFFFFFFFFFFC3C3BBF3DFC3F3FFC3C3EFC3DFBBFFFFFFFFFFFFFFFFFF"
                                  DH "423E420000000000000000000000000000000000000000000000000000000000"
                                  DH "0000000000000000000000000000000000000000000000000000000000000000"
                                  DH "42380444003C1C38203C003C3C3C3C3C3C0000003C1C38203C003C3C3C3C3C3C"
                                  DH "0000000000000000000000000000000000000000000000000000000000000000"
                                  DH "1800180000000000000000000000000000000000000000000000000000000000"
                                  DH "6E006E0000000000000000000000000000000000000000000000000000000000"
                                  DH "0000000000000000000000000000000000000000000000000000000000000000"
                                  DH "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
                                  DH "0000000000000000000000000000000000000000000000000000000000000000"
                                  DH "0000000000000000000000000000000000000000000000000000000000000000"
                                  DH "0000380000000000000000000000000000000000000000000000000000000000"
                                  DH "0000000000000000000000000000000000000000000000000000000000000000"
                                  DH "3C003C0000000000000000000000000000000000000000000000000000000000"
                                  DH "7700770000000000000000000000000000000000000000000000000000000000"
                                  DH "0000000000000000000000000000000000000000000000000000000000000000"
                                  DH "1600000000000000000500050000000005000000000000000000000000060016"
                                  DH "1600000000000000000000000000000003000000000000000000000000000016"
                                  DH "1600000000000000000000000000000000000000000000000000000000000016"
                                  DH "1600000000000000000000000000000000000000000000000000000000000016"
                                  DH "1600000000000000000000000000000000000000000000440400004400000016"
                                  DH "1642424242424242424242424242020202024202020202424242424242424216"
                                  DH "1600000000000000000000000000000000000000000000000000000000000516"
                                  DH "1642424200000000464600000000000000000000000000000000000000000016"
                                  DH "1600000000000000464600000000000000161616004400000000000000000016"
                                  DH "1642424242000000040404040404040404040404040404040404040400000016"
                                  DH "1600000000000000000000000000000000000000000000000000000000424216"
                                  DH "1600000000000000000000000000000000000000000000000000000000000016"
                                  DH "1600000000000000000000004400000000000000161616020202020242424216"
                                  DH "16000707004242424242424242424242424242420000000000000000000E0E16"
                                  DH "16000707000000000000000000000000000000000000000000000000000E0E16"
                                  DH "1642424242424242424242424242424242424242424242424242424242424216"
                                  DH "0606060606060606060606060606060606060606060606060606060606060606"
                                  DH "5757575757575757575767676767676767676767676767676767676767676767"
                                  DH "4646464646464646464646464646464646464646464646464646464646464646"
                                  DH "4646464646464646464646464646464646464646464646464646464646464646"
                                  DH "4646464646464646464646464646464646464646464646464646464646464646"
                                  DH "4545454545454545454545454545454545454545454545454545454545454545"
                                  DH "4545454545454545454545454545454545454545454545454545454545454545"
                                  DH "0000000000000000000000000000000000000000000000000000000000000000"
