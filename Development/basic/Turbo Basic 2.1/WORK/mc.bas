'���������������������������������������������������������������������������Ŀ
'�                               MC.BAS                          	     �
'�                             VERSION 1.0                                   �
'�                                                                           �
'�			       Turbo Basic				     �
'�		(C) Copyright 1987 by Borland International		     �
'�                                                                           �
'� System Requirements:                                                      �
'�   - DOS Version 2.0 or later                                              �
'�   - 320K                                                                  �
'�                                                                           �
'�   This  program is a simple spreadsheet program that is  provided as an   �
'� example of a simple application that can be done in Turbo Basic. You are  �
'� encouraged to study this program and make any enhancements or modifica-   �
'� tions you might want.                                                     �
'�                                                                           �
'�   In order to use this program do the following:                          �
'�     1) At the DOS prompt type TB<ENTER> to load Turbo Basic               �
'�     2) In the File pulldown select Main and specify MC as the main file   �
'�     3) Select the Run option from the main menu.   			     �
'�����������������������������������������������������������������������������

$DYNAMIC                ' All arrays are DYNAMIC
$STACK  10240           ' to prevent stack overflow

$INCLUDE "MC0.INC"      ' Global variables, named constant AND
                        ' array definition

$INCLUDE "MC1.INC"      ' Miscellaneous commands AND utilities
                        ' (Keyboard,screen,toggles)

$INCLUDE "MC2.INC"      ' Init, display AND clear SpreadSheet grid

$INCLUDE "MC3.INC"      ' Display Cells AND move around the Spreadsheet

$INCLUDE "MC4.INC"      ' Load, Save AND Print a spreadsheet
                        ' display on-line manual
                        ' DOS shell

$INCLUDE "MC5.INC"      ' Procedures to evaluate formulas AND recalculate
                        ' the SpreadSheet

$INCLUDE "MC6.INC"      ' Procedures to read, update AND format cells
                        ' Commands dispatcher

$INCLUDE "MC7.INC"      ' Some string functions

$INCLUDE "MC8.INC"      ' Procedures to Read/Write records to/from the
                        ' data structure representing the SpreadSheet


RANDOMIZE TIMER         ' init random number generator
Begintimer=TIMER	' initial time

'������������������������������ MAIN PROGRAM �������������������������������Ŀ

  CALL Init
  FileName$=FNGetCmd$
  IF FNExists%(FileName$) THEN
     CALL load
  ELSE
     CLS
     CALL Grid
     CALL GotoCell(GlobFX%, GlobFY%)
  END IF

  ' set up an LOOP UNTIL '/Q' command is chosen
  DO
    CALL ReadKBD(Ch$)
    CALL IBMCh(Ch$)
    SELECT CASE left$(Ch$,1)
      CASE CHR$(5)                      '^E
        CALL MoveUp
      CASE CHR$(24), CHR$(10)           '^X, ^J
        CALL MoveDown
      CASE CHR$(4), CHR$(13)            '^D, ^M
        CALL MoveRight
      CASE CHR$(19)                     '^S
        CALL MoveLeft
      CASE CHR$(1)                      '^A
        CALL MoveHome
      CASE CHR$(6)                      '^F
        CALL MoveEnd
      CASE "/"                          ' Command Header
        CALL Commands
      CASE CHR$(%EditKey )              ' F2
        CALL GetCell(GlobFX%, GlobFY%)
      CASE ELSE
        IF ( left$(Ch$,1) >= " " ) AND ( left$(Ch$,1) <= CHR$(255) ) THEN
          CALL GetCell(GlobFX%, GlobFY%)
        END IF
    END SELECT
  LOOP UNTIL CalcExit%

  END
'���������������������������� END MAIN PROGRAM �������������������������������
