'���������������������������������������������������������������������������Ŀ
'�   This  program demonstrates the recursive algorithm commonly             �
'�   known as "Ackerman."                                                    �
'�	In order to run this program do the following:			     �
'�	  1. Load Turbo Basic by typing TB at the DOS prompt. 		     �
'�	  2. Load the file ACKERMAN.BAS from the Load option of the File     �
'�	     pulldown menu.						     �
'�	  3. Select Run from the Main menu				     �
'�����������������������������������������������������������������������������

PRINT "Running Ackerman"
X# = TIMER
Ans% = FNack%(3,6)                ' call the recursive function
XX# = TIMER
Ack = XX# - X#
PRINT USING "Ackerman complete in ##.###";Ack
END

DEF FNack%(M%,N%)	' Ackerman recursive function
  IF M% = 0 THEN
    FNack% = N%+1
  ELSE
    IF N% = 0 then
      FNack% = FNack%(M%-1,1)
    ELSE
      FNack% = FNack%(M%-1,FNack(M%,N%-1))
    END IF
  END IF
END DEF
