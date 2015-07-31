********************
* Program....: S.H.S.S. Chess Club's Rating Program
* Filename...: CHESSCLB.EXE
* Author.....: Stephen W. Makonin
* Date.......: 1990-04-09
* Purpose....: Secret Menu
**********************

CLEAR

rec_num = 0
answer = " "

SET WRAP ON

go = .T.
DO WHILE go

USE member
INDEX ON SUBSTR(TRIM(lname) + name +;
         SPACE(10),1,10) to nlist

SET INDEX TO nlist

@  0, 0 SAY "°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°"
@  1, 0 SAY "°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°"
@  2, 0 SAY "°°ÕÍÍÍÍÍÍÍÍ¸Main MenuÕÍÍÍÍÍÍÍÍ¸°°°°ÕÍÍÍÍÍÍÍÍÍÍÍ¸Output ScreenÕÍÍÍÍÍÍÍÍÍÍÍÍ¸°°°°°"
@  3, 0 SAY "°°³                           ³²²°°³                                      ³²²°°°"
@  4, 0 SAY "°°³                           ³²²°°³                                      ³²²°°°"
@  5, 0 SAY "°°³                           ³²²°°³                                      ³²²°°°"
@  6, 0 SAY "°°³                           ³²²°°³                                      ³²²°°°"
@  7, 0 SAY "°°³                           ³²²°°³                                      ³²²°°°"
@  8, 0 SAY "°°³                           ³²²°°³                                      ³²²°°°"
@  9, 0 SAY "°°³                           ³²²°°³                                      ³²²°°°"
@ 10, 0 SAY "°°³                           ³²²°°³                                      ³²²°°°"
@ 11, 0 SAY "°°³                           ³²²°°³                                      ³²²°°°"
@ 12, 0 SAY "°°ÔÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¾²²°°³                                      ³²²°°°"
@ 13, 0 SAY "°°°²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²°°³                                      ³²²°°°"
@ 14, 0 SAY "°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°ÔÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¾²²°°°"
@ 15, 0 SAY "°°ÕÍÍ¸Sub-Menu & Status ReportÕÍÍ¸°°²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²°°°"
@ 16, 0 SAY "°°³                              ³²²°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°"
@ 17, 0 SAY "°°ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´²²°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°"
@ 18, 0 SAY "°°³                              ³²²°°°°°°°ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿°°°°°°°"
@ 19, 0 SAY "°°³                              ³²²°°°°°°°³     Chess Club Program     ³°°°°°°°"
@ 20, 0 SAY "°°³                              ³²²°°°°°°°³Copyright (C) 1989  Ver. 2.1³°°°°°°°"
@ 21, 0 SAY "°°ÔÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¾²²°°°°°°°³   By: Stephen W. Makonin   ³°°°°°°°"
@ 22, 0 SAY "°°°²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²°°°°°°°ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ°°°°°°°"
@ 23, 0 SAY "°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°"
@ 24, 0 SAY "°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°"

@ 3,3 PROMPT "Add a member to the club   "
@ 4,3 PROMPT "Edit a member of the club  "
@ 5,3 PROMPT "Look at member of the club "
@ 6,3 PROMPT "Delete a member of the club"
@ 7,3 PROMPT "Udate a member's rating    "
@ 8,3 PROMPT "Tied game update           "
@ 9,3 PROMPT "Print out a rating list    "
@ 10,3 PROMPT "Zap all members            "
@ 11,3 PROMPT "Return to main menu        "

MENU TO numin

IF numin = 1
       @ 16,3 SAY "ADDING..."
       APPEND BLANK
       @ 3,37 SAY "Record #: "+str(recno())
       @ 4,37 SAY "Enter last name" 
       @ 4,53 GET lname PICTURE "@!"
       @ 5,37 SAY "Enter first name"
       @ 5,54 GET name PICTURE "@!"
       @ 6,37 SAY "Enter grade"
       @ 6,49 GET grade PICTURE "99"
       @ 7,37 SAY "Enter club number"
       @ 7,55 GET memnum PICTURE "99-99-999"
       @ 8,37 SAY "Enter starting blitz"
       @ 8,58 GET blitz PICTURE "999999"
       @ 9,37 SAY "Enter starting regular"
       @ 9,60 GET regular PICTURE "999999"  
       READ
       ENDIF

IF numin = 2 
       qname = SPACE(10)
       qlname = SPACE(10)  
       @ 16,3 SAY "EDITING..."
       @ 18,3 SAY "Enter Last Name-";
            GET qlname PICTURE "@!"
       @ 19,3 SAY "Enter First Name-";
            GET qname PICTURE "@!"
       READ
       SEEK TRIM(qlname)+qname
       IF FOUND()
          @ 3,37 SAY"Last Name-"
          @ 3,48 GET lname PICTURE "@!"
          @ 4,37 SAY "First Name-"
          @ 4,49 GET name PICTURE "@!"
          @ 5,37 SAY "Grade-"
          @ 5,44 GET grade PICTURE "99"
          @ 6,37 SAY "Club #-"
          @ 6,45 GET memnum PICTURE "99-99-999"
          @ 7,37 SAY "Retierant-"
          @ 7,48 GET r PICTURE "Y"
          READ
        ELSE
          @ 18, 3 SAY "                             "
          @ 19, 3 SAY "                             "
          @ 18, 3 SAY "RECORD NOT FOUND"
          WAIT "°°³ Hit any key..."   
       ENDIF
       ENDIF

IF numin = 3 
       qname = SPACE(10)
       qlname = SPACE(10)  
       @ 16,3 SAY "LOOKING..."
       @ 18,3 SAY "Enter Last Name-";
            GET qlname PICTURE "@!"
       @ 19,3 SAY "Enter First Name-";
            GET qname PICTURE "@!"
       READ
       SEEK TRIM(qlname)+qname
       IF FOUND()
          @  3, 37 SAY "Personal File For;"
          @  4, 37 SAY lname
          @  4, 47 SAY ", "
          @  4, 49 SAY name
          @  5, 37 SAY "Grade-       Retierant-"
          @  5, 43 SAY grade
          @  5, 60 SAY r PICTURE "Y" 
          @  6, 37 SAY "Date Last Played-"
          @  6, 54 SAY pdate
          @  6, 37 SAY "Blitz:          Regular:" 
          @  7, 37 SAY "Rating-         Rating-"
          @  7, 44 SAY blitz
          @  7, 60 SAY regular
          @  8, 37 SAY "Total-          Total-"
          @  8, 43 SAY btotal
          @  8, 59 SAY rtotal 
          @  9, 37 SAY "Wins-           Wins-"
          @  9, 42 SAY bwins
          @  9, 58 SAY rwins
          @ 10, 37 SAY "Losses-         Losses-"
          @ 10, 44 SAY blosse
          @ 10, 60 SAY rlosse
          @ 19,30 say ""
          WAIT "°°³ Hit any key..."
       ELSE
          @ 18, 3 SAY "                             "
          @ 19, 3 SAY "                             "
          @ 18, 3 SAY "RECORD NOT FOUND"
          WAIT "°°³ Hit any key..."   
       ENDIF
       ENDIF

IF numin = 4 
       qname = SPACE(10)
       qlname = SPACE(10)  
       @ 16,3 SAY "DELETING..."
       @ 18,3 SAY "Enter Last Name-";
            GET qlname PICTURE "@!"
       @ 19,3 SAY "Enter First Name-";
            GET qname PICTURE "@!"
       READ
       SEEK TRIM(qlname)+qname
       IF FOUND()
         @ 18,3 CLEAR TO 19,33
         @ 18,3 SAY "Are you sure? (Y/N)";
                GET answer PICTURE "!";
                Valid answer $ "YN"
         READ
         IF answer="Y"
         DELETE
         PACK
         @ 19,3 SAY "RECORD REMOVED..."
         WAIT "°°³ Hit any key..."
         ENDIF
       ELSE
          @ 18, 3 SAY "                             "
          @ 19, 3 SAY "                             "
          @ 18, 3 SAY "RECORD NOT FOUND"
          WAIT "°°³ Hit any key..."   
       ENDIF
       ENDIF

IF numin = 5
        choice = " "
        diff = 0
        wlname = SPACE(10)
        wname = SPACE(10)
        wblitz = SPACE(6)
        wbtotal = SPACE(3)
        wbwins = SPACE(3)
        xlname = SPACE(10)
        xname = SPACE(10)
        xblitz = SPACE(6)
        xblosse = SPACE(3)
        xbtotal = SPACE(3)
        wregular = SPACE(6)
        wrtotal = SPACE(3)
        wrwins = SPACE(3)
        xregular = SPACE(6)
        xrlosse = SPACE(3)
        xrtotal = SPACE(3)

        DO WHILE choice != "E"
        choice = " "
        @ 16, 4 SAY "UPDATING...          "
        @ 18, 3 SAY "B=Blitz Update               "
        @ 19, 3 SAY "R=Regular Update             "
        @ 20, 3 SAY "E=Exit Update                "
        @ 16, 30 GET choice PICTURE "!" VALID choice $ "BRE"
        READ

        DO CASE
        CASE choice = "B"
           @ 16,15 SAY " ,BLITZ"
           qname = SPACE(10)
           qlname = SPACE(10)
           @ 20,3 SAY "                  "
           @ 18,3 SAY "Winner Last Name-";
               GET qlname PICTURE "@!"
           @ 19,3 SAY "Winner First Name-";
               GET qname PICTURE "@!"
           READ
           SEEK TRIM(qlname)+qname
           IF FOUND()
               wlname = lname
               wname = name
               wblitz = blitz
               wbtotal = btotal
               wbwins = bwins
               wbtotal = wbtotal + 1
               wbwins = wbwins + 1
           @ 20,3 SAY "                 "
           @ 18,3 SAY "Losser Last Name-";
               GET qlname PICTURE "@!"
           @ 19,3 SAY "Losser First Name-";
              GET qname PICTURE "@!"
           READ
           SEEK TRIM(qlname)+qname
           IF FOUND()
               xlname = lname
               xname = name 
               xblitz = blitz
               xbtotal = btotal
               xblosse  = blosse
               xbtotal = xbtotal + 1
               xblosse = xblosse + 1
          
               diff = wblitz - xblitz
           IF diff > 350
             diff = 350
           ENDIF
           IF diff < -350
             diff = -350
           ENDIF
           wblitz = wblitz + 16 + .04 * diff + 2
           xblitz = xblitz - 16 + .04 * diff + 2
        *   REPLACE qlname WITH wlname
        *   REPLACE qname  WITH wname
           SEEK TRIM(wlname)+wname
              REPLACE blitz WITH wblitz
              REPLACE bwins WITH wbwins
              REPLACE btotal WITH wbtotal
       *    REPLACE qlname WITH xlname
       *    REPLCAE qname  WITH xname
           SEEK TRIM(xlname)+xname
              REPLACE blitz WITH xblitz
              REPLACE blosse WITH xblosse
              REPLACE btotal WITH xbtotal
           ELSE
             @ 18, 3 SAY "                             "
             @ 19, 3 SAY "                             "
             @ 18, 3 SAY "RECORD NOT FOUND"
             WAIT "°°³ Hit any key..."   
           ENDIF
           ELSE
             @ 18, 3 SAY "                             "
             @ 19, 3 SAY "                             "
             @ 18, 3 SAY "RECORD NOT FOUND"
             WAIT "°°³ Hit any key..."   
           ENDIF
           
           
        CASE choice = "R"
           @ 16, 15 SAY " ,REGULAR"
           qname = SPACE(10)
           qlname = SPACE(10)
           @ 20,3 SAY "                 "
           @ 18,3 SAY "Winner Last Name-";
               GET qlname PICTURE "@!"
           @ 19,3 SAY "Winner First Name-";
               GET qname PICTURE "@!"
           READ
           SEEK TRIM(qlname)+qname
           IF FOUND()
               wlname = lname
               wname = name
               wregular = regular
               wrtotal = rtotal
               wrwins = rwins
               wrtotal = wrtotal + 1
               wrwins = wrwins + 1
  
           @ 18,3 SAY "Losser Last Name-";
               GET qlname PICTURE "@!"
           @ 19,3 SAY "Losser First Name-";
               GET qname PICTURE "@!"
           READ
           SEEK TRIM(qlname)+qname
           IF FOUND()
               xlname = lname
               xname = name 
               xregular = regular
               xrtotal = rtotal
               xrlosse  = rlosse
               xrtotal = xrtotal + 1
               xrlosse = xrlosse + 1
          
               diff = wregular - xregular
           IF diff > 350
             diff = 350
           ENDIF
           IF diff < -350
             diff = -350
           ENDIF
           wregular = wregular + 16 + .04 * diff + 2
           xregular = xregular - 16 + .04 * diff + 2
        *   REPLACE qlname WITH wlname
        *   REPLACE qname  WITH wname
           SEEK TRIM(wlname)+wname
              REPLACE regular WITH wregular
              REPLACE rwins WITH wrwins
              REPLACE rtotal WITH wrtotal
       *    REPLACE qlname WITH xlname
       *    REPLCAE qname  WITH xname
           SEEK TRIM(xlname)+xname
              REPLACE regular WITH xregular
              REPLACE rlosse WITH xrlosse
              REPLACE rtotal WITH xrtotal
           ELSE
             @ 18, 3 SAY "                             "
             @ 19, 3 SAY "                             "
             @ 18, 3 SAY "RECORD NOT FOUND"
             WAIT "°°³ Hit any key..."   
           ENDIF
           ELSE
             @ 18, 3 SAY "                             "
             @ 19, 3 SAY "                             "
             @ 18, 3 SAY "RECORD NOT FOUND"
             WAIT "°°³ Hit any key..."   
           ENDIF     
        ENDCASE
        ENDDO
        ENDIF
        
IF numin = 6
        choice = " "
        diff = 0
        wlname = SPACE(10)
        wname = SPACE(10)
        wblitz = SPACE(6)
        wbtotal = SPACE(3)
        wbwins = SPACE(3)
        xlname = SPACE(10)
        xname = SPACE(10)
        xblitz = SPACE(6)
        xbwins = SPACE(3)
        xbtotal = SPACE(3)
        wregular = SPACE(6)
        wrtotal = SPACE(3)
        wrwins = SPACE(3)
        xregular = SPACE(6)
        xrwins = SPACE(3)
        xrtotal = SPACE(3)

        DO WHILE choice != "E"
        choice = " "
        @ 16, 4 SAY "TIED...              "
        @ 18, 3 SAY "B=Blitz Tied                  "
        @ 19, 3 SAY "R=Regular Tied                "
        @ 20, 3 SAY "E=Exit Update                 "
        @ 16, 30 GET choice PICTURE "!" VALID choice $ "BRE"
        READ

        DO CASE
        CASE choice = "B"
           @ 16,15 SAY " ,BLITZ"
           qname = SPACE(10)
           qlname = SPACE(10)
           @ 20,3 SAY "                  "
           @ 18,3 SAY "1 Last Name- ";
               GET qlname PICTURE "@!"
           @ 19,3 SAY "1 First Name- ";
               GET qname PICTURE "@!"
           READ
           SEEK TRIM(qlname)+qname
           IF FOUND()
               wlname = lname
               wname = name
               wblitz = blitz
               wbtotal = btotal
               wbwins = bwins
               wbtotal = wbtotal + 1
               wbwins = wbwins + 1
           @ 20,3 SAY "                 "
           @ 18,3 SAY "2 Last Name- ";
               GET qlname PICTURE "@!"
           @ 19,3 SAY "2 First Name- ";
              GET qname PICTURE "@!"
           READ
           SEEK TRIM(qlname)+qname
           IF FOUND()
               xlname = lname
               xname = name 
               xblitz = blitz
               xbtotal = btotal
               xbwins  = bwins
               xbtotal = xbtotal + 1
               xbwins = xbwins + 1
          
               diff = wblitz - xblitz
           IF diff > 350
             diff = 350
           ENDIF
           IF diff < -350
             diff = -350
           ENDIF
           wblitz = wblitz + .04 * diff + 2
           xblitz = xblitz + .04 * diff + 2
        *   REPLACE qlname WITH wlname
        *   REPLACE qname  WITH wname
           SEEK TRIM(wlname)+wname
              REPLACE blitz WITH wblitz
              REPLACE bwins WITH wbwins
              REPLACE btotal WITH wbtotal
       *    REPLACE qlname WITH xlname
       *    REPLCAE qname  WITH xname
           SEEK TRIM(xlname)+xname
              REPLACE blitz WITH xblitz
              REPLACE bwins WITH xbwins
              REPLACE btotal WITH xbtotal
           ELSE
             @ 18, 3 SAY "                             "
             @ 19, 3 SAY "                             "
             @ 18, 3 SAY "RECORD NOT FOUND"
             WAIT "°°³ Hit any key..."   
           ENDIF
           ELSE
             @ 18, 3 SAY "                             "
             @ 19, 3 SAY "                             "
             @ 18, 3 SAY "RECORD NOT FOUND"
             WAIT "°°³ Hit any key..."   
           ENDIF
           
           
        CASE choice = "R"
           @ 16, 15 SAY " ,REGULAR"
           qname = SPACE(10)
           qlname = SPACE(10)
           @ 20,3 SAY "                 "
           @ 18,3 SAY "1 Last Name-";
               GET qlname PICTURE "@!"
           @ 19,3 SAY "1 First Name-";
               GET qname PICTURE "@!"
           READ
           SEEK TRIM(qlname)+qname
           IF FOUND()
               wlname = lname
               wname = name
               wregular = regular
               wrtotal = rtotal
               wrwins = rwins
               wrtotal = wrtotal + 1
               wrwins = wrwins + 1
  
           @ 18,3 SAY "2 Last Name-";
               GET qlname PICTURE "@!"
           @ 19,3 SAY "2 First Name-";
               GET qname PICTURE "@!"
           READ
           SEEK TRIM(qlname)+qname
           IF FOUND()
               xlname = lname
               xname = name 
               xregular = regular
               xrtotal = rtotal
               xrwins  = rwins
               xrtotal = xrtotal + 1
               xrwins = xrwins + 1
          
               diff = wregular - xregular
           IF diff > 350
             diff = 350
           ENDIF
           IF diff < -350
             diff = -350
           ENDIF
           wregular = wregular + .04 * diff + 2
           xregular = xregular + .04 * diff + 2
        *   REPLACE qlname WITH wlname
        *   REPLACE qname  WITH wname
           SEEK TRIM(wlname)+wname
              REPLACE regular WITH wregular
              REPLACE rwins WITH wrwins
              REPLACE rtotal WITH wrtotal
       *    REPLACE qlname WITH xlname
       *    REPLCAE qname  WITH xname
           SEEK TRIM(xlname)+xname
              REPLACE regular WITH xregular
              REPLACE rwins WITH xrwins
              REPLACE rtotal WITH xrtotal
           ELSE
             @ 18, 3 SAY "                             "
             @ 19, 3 SAY "                             "
             @ 18, 3 SAY "RECORD NOT FOUND"
             WAIT "°°³ Hit any key..."   
           ENDIF
           ELSE
             @ 18, 3 SAY "                             "
             @ 19, 3 SAY "                             "
             @ 18, 3 SAY "RECORD NOT FOUND"
             WAIT "°°³ Hit any key..."   
           ENDIF     
        ENDCASE
        ENDDO
        ENDIF

IF numin = 7
         @ 16, 3 SAY "PRINTING..."
         @ 18,3 SAY "MAKE SURE PRINTER IS ON"
         WAIT "°°³ Hit any key..." TO KEY
         lm = 0
         lines = 0
         pages = 0
         SORT ON regular /D TO print
         USE print
         SET DEVICE TO PRINTER
              pages = pages + 1
              @ 0, 0  SAY " "
              @ 1, 0  SAY DATE()
              @ 1, 60 SAY "           PAGE: "+STR(pages,3,0)
              @ 3, 0  SAY "                                    S.H.S.S."
              @ 4, 0  SAY "                                   CHESS CLUB"
              @ 6, 0  SAY "   PLAYER'S  NAME                     GR      Blitz   Total      Regular   Total"
              @ 7, 0  SAY "   RANK      OF PLAYERS                       Rating/ Games      Rating  / Games"
              @ 8, 0  SAY "--------------------------------------------------------------------------------"
              lines = lines + 9
              rec_num = 1
           DO WHILE .NOT. EOF ()   
              GOTO rec_num
              @ lines, 5 SAY rec_num PICTURE "99"
              @ lines, 13 SAY lname 
              @ lines, 23 SAY ", " 
              @ lines, 25 SAY name 
              @ lines, 37 SAY "/" 
              @ lines, 38 SAY grade 
              @ lines, 45 SAY blitz 
              @ lines, 51 SAY  " / " 
              @ lines, 54 SAY btotal  
              @ lines, 66 SAY regular  
              @ lines, 72 SAY " / " 
              @ lines, 75 SAY rtotal 
              lines = lines + 1
              rec_num = rec_num + 1
              SKIP   
            
              IF lines = 60
                 pages = pages + 1
                 lines = 0
                 @ lines,0 SAY ""
                 @ lines + 1, 0 SAY ""
                 @ lines + 2, 0 SAY "Page: "+STR(pages,3,0)
                 lines = 4
              ENDIF
           ENDDO
              @ lines, 0 SAY "   "
           ENDIF
         SET DEVICE TO SCREEN
          
IF numin = 8
      @ 16,4 SAY "ZAPING..."
      @ 18,3 SAY "Are you sure? (Y/N)";
                GET answer PICTURE "!";
                Valid answer $ "YN"
         READ
         IF answer="Y"
         ZAP
         ENDIF
         ENDIF

IF numin = 9
         EXIT
         ENDIF
ENDDO
CLEAR
QUIT

 
