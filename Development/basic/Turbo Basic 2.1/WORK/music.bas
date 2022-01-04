'旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�
'�				MUSIC.BAS				     �
'�                             VERSION 1.0                                   �
'�									     �
'�			       Turbo Basic				     �
'�		(C) Copyright 1987 by Borland International		     �
'�									     �
'� System Requirements:							     �
'�   - DOS Version 2.0 or later						     �
'�   - 320K								     �
'�									     �
'�   This  program is a simple demonstration of the sound capabilities	     �
'� of Turbo Basic.  It plays the classical "Two-Part Invention Number 4 in   �
'� D-Minor by Johann Sebastian Bach.                                         �
'�									     �
'�	In order to run this program do the following:			     �
'�	  1. Load Turbo Basic by typing TB at the DOS prompt. 		     �
'�	  2. Load the file MUSIC.BAS from the Load option of the File	     �
'�	     pulldown menu.						     �
'�	  3. Select Run from the Main menu				     �
'읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�


$SOUND 4096                    ' set the sound buffer to the maximum size
DEFINT A-Z                     ' declare all variables integer type
READ Frequency,Duration        ' read first Frequency and Duration pair
WHILE Frequency <> -1          ' keep playing notes until the end of song
  DELAY .05                    ' general delay for music clarity
  IF Frequency = 0 THEN
    '
    ' If Frequency is 0 then pause for the Duration
    '   value (in hundredths of a second)
    '
    SELECT CASE Duration
    CASE 3
      DELAY .03
    CASE 6
      DELAY .06
    END SELECT
  ELSE
    '
    ' Otherwise, use the SOUND statement to play the Frequency for
    '   the proper Duration.  Remember that the SOUND statement
    '   uses durations in Clock Tick.  The values used in the
    '   following SOUND statements were pre-calculated for speed
    '   and are derived by:
    '      ClockTicks = Duration/100/0.0549
    '        note:  0.0549 = number of seconds per clock tick
    '
    SELECT CASE Duration
    CASE 3
      SOUND Frequency,0.5464
    CASE 6
      SOUND Frequency,1.0929
    CASE 8
      SOUND Frequency,1.4572
    CASE 9
      SOUND Frequency,1.6393
    END SELECT
  END IF
  READ Frequency,Duration      ' read in next Frequency and Duration pair
WEND
END

'
'  Two-Part Invention Number 4 in D-Minor data
'    Data is in Frequency and Duration Pairs:
'      Frequency is the Note frequence to play
'      Duration is the length (in 1/100 of a second) to play
'    Data is terminated by Frequency and Duration = -1
'
DATA 586,6
DATA 0,6
DATA 658,6
DATA 0,6
DATA 697,6
DATA 0,6
DATA 782,6
DATA 0,6
DATA 878,6
DATA 0,6
DATA 930,6
DATA 0,6
DATA 553,6
DATA 0,6
DATA 930,6
DATA 0,6
DATA 878,6
DATA 0,6
DATA 782,6
DATA 0,6
DATA 697,6
DATA 0,6
DATA 658,6
DATA 0,6
DATA 697,6
DATA 293,6
DATA 0,6
DATA 329,6
DATA 878,6
DATA 348,6
DATA 0,6
DATA 391,6
DATA 1172,6
DATA 439,6
DATA 0,6
DATA 465,6
DATA 782,6
DATA 277,6
DATA 0,6
DATA 465,6
DATA 1106,6
DATA 439,6
DATA 0,6
DATA 391,6
DATA 1315,6
DATA 348,6
DATA 0,6
DATA 329,6
DATA 1172,6
DATA 348,6
DATA 1315,6
DATA 0,6
DATA 1394,6
DATA 439,6
DATA 1564,6
DATA 0,6
DATA 1756,6
DATA 586,6
DATA 1860,6
DATA 0,6
DATA 1106,6
DATA 329,6
DATA 1860,6
DATA 0,6
DATA 1756,6
DATA 391,6
DATA 1564,6
DATA 0,6
DATA 1394,6
DATA 553,6
DATA 1315,6
DATA 0,6
DATA 1394,6
DATA 293,6
DATA 1172,6
DATA 0,6
DATA 1315,6
DATA 586,6
DATA 1394,6
DATA 0,6
DATA 1564,6
DATA 348,6
DATA 1756,6
DATA 0,6
DATA 930,6
DATA 391,6
DATA 1756,6
DATA 0,6
DATA 1564,6
DATA 439,6
DATA 1394,6
DATA 0,6
DATA 1315,6
DATA 465,6
DATA 1172,6
DATA 0,6
DATA 1315,6
DATA 261,6
DATA 1044,6
DATA 0,6
DATA 1172,6
DATA 522,6
DATA 1315,6
DATA 0,6
DATA 1394,6
DATA 329,6
DATA 1564,6
DATA 0,6
DATA 878,6
DATA 348,6
DATA 1564,6
DATA 0,6
DATA 1394,6
DATA 391,6
DATA 1315,6
DATA 0,6
DATA 1172,6
DATA 439,6
DATA 1044,6
DATA 0,6
DATA 1172,6
DATA 465,6
DATA 1315,6
DATA 391,6
DATA 1394,6
DATA 439,6
DATA 1172,6
DATA 465,6
DATA 1315,6
DATA 522,6
DATA 1394,6
DATA 586,6
DATA 782,6
DATA 329,6
DATA 586,9
DATA 0,3
DATA 522,9
DATA 0,3
DATA 465,9
DATA 0,3
DATA 439,9
DATA 0,3
DATA 391,9
DATA 0,3
DATA 1044,6
DATA 439,6
DATA 1172,6
DATA 348,6
DATA 1315,6
DATA 391,6
DATA 1044,6
DATA 439,6
DATA 1172,6
DATA 465,6
DATA 1315,6
DATA 522,6
DATA 697,6
DATA 293,6
DATA 522,9
DATA 0,3
DATA 465,9
DATA 0,3
DATA 439,9
DATA 0,3
DATA 930,6
DATA 391,6
DATA 930,6
DATA 391,6
DATA 930,6
DATA 329,6
DATA 0,6
DATA 261,6
DATA 878,6
DATA 293,6
DATA 0,6
DATA 329,6
DATA 782,6
DATA 348,6
DATA 0,6
DATA 391,6
DATA 1044,6
DATA 219,6
DATA 930,6
DATA 391,6
DATA 878,6
DATA 348,6
DATA 782,6
DATA 329,6
DATA 697,6
DATA 293,6
DATA 658,6
DATA 261,6
DATA 697,6
DATA 293,6
DATA 782,6
DATA 233,6
DATA 782,6
DATA 261,6
DATA 782,6
DATA 261,6
DATA 782,6
DATA 131,6
DATA 697,6
DATA 123,6
DATA 697,6
DATA 174,6
DATA 0,6
DATA 196,6
DATA 1044,6
DATA 219,6
DATA 0,6
DATA 233,6
DATA 1044,6
DATA 261,6
DATA 0,6
DATA 293,6
DATA 1044,3
DATA 1172,3
DATA 164,6
DATA 1044,3
DATA 1172,3
DATA 293,6
DATA 1044,3
DATA 1172,3
DATA 261,6
DATA 1044,3
DATA 1172,3
DATA 233,6
DATA 1044,3
DATA 1172,3
DATA 219,6
DATA 1044,3
DATA 1172,3
DATA 196,6
DATA 1044,3
DATA 1172,3
DATA 219,6
DATA 1044,3
DATA 1172,3
DATA 233,6
DATA 1044,3
DATA 1172,3
DATA 261,6
DATA 1044,3
DATA 1172,3
DATA 293,6
DATA 1044,3
DATA 1172,3
DATA 329,6
DATA 1044,3
DATA 1172,3
DATA 348,6
DATA 1044,3
DATA 1172,3
DATA 196,6
DATA 1044,3
DATA 1172,3
DATA 348,6
DATA 1044,3
DATA 1172,3
DATA 329,6
DATA 1044,3
DATA 1172,3
DATA 293,6
DATA 1044,3
DATA 1172,3
DATA 261,6
DATA 1044,3
DATA 1172,3
DATA 233,6
DATA 1044,6
DATA 219,6
DATA 930,6
DATA 233,6
DATA 878,6
DATA 261,6
DATA 782,6
DATA 219,6
DATA 697,6
DATA 233,6
DATA 658,6
DATA 261,6
DATA 1044,6
DATA 185,6
DATA 586,6
DATA 0,6
DATA 658,6
DATA 0,6
DATA 738,6
DATA 0,6
DATA 782,6
DATA 0,6
DATA 878,6
DATA 0,6
DATA 930,6
DATA 196,6
DATA 878,6
DATA 219,6
DATA 782,6
DATA 233,6
DATA 697,6
DATA 196,6
DATA 658,6
DATA 219,6
DATA 586,6
DATA 233,6
DATA 930,6
DATA 164,6
DATA 522,6
DATA 0,6
DATA 586,6
DATA 0,6
DATA 658,6
DATA 0,6
DATA 697,6
DATA 0,6
DATA 782,6
DATA 174,6
DATA 878,6
DATA 0,6
DATA 985,6
DATA 348,6
DATA 1044,6
DATA 0,6
DATA 1172,6
DATA 293,6
DATA 1315,6
DATA 0,6
DATA 1394,6
DATA 246,6
DATA 829,6
DATA 0,6
DATA 1394,6
DATA 207,6
DATA 1315,6
DATA 0,6
DATA 1172,6
DATA 164,6
DATA 1044,6
DATA 0,6
DATA 985,6
DATA 219,6
DATA 1044,6
DATA 207,6
DATA 985,6
DATA 219,6
DATA 1172,6
DATA 246,6
DATA 1044,6
DATA 261,6
DATA 985,6
DATA 293,6
DATA 878,6
DATA 329,3
DATA 348,3
DATA 829,6
DATA 329,3
DATA 348,3
DATA 878,6
DATA 329,3
DATA 348,3
DATA 829,6
DATA 329,3
DATA 348,3
DATA 738,6
DATA 329,3
DATA 348,3
DATA 658,6
DATA 329,3
DATA 348,3
DATA 586,6
DATA 329,3
DATA 348,3
DATA 522,6
DATA 329,3
DATA 348,6
DATA 586,6
DATA 329,3
DATA 348,3
DATA 658,6
DATA 329,3
DATA 348,3
DATA 738,6
DATA 329,3
DATA 348,3
DATA 829,6
DATA 329,3
DATA 348,3
DATA 878,6
DATA 329,3
DATA 348,3
DATA 586,6
DATA 329,3
DATA 348,3
DATA 1044,6
DATA 329,3
DATA 348,3
DATA 985,6
DATA 329,3
DATA 348,3
DATA 878,6
DATA 329,3
DATA 348,3
DATA 829,6
DATA 329,3
DATA 348,3
DATA 738,6
DATA 329,3
DATA 348,3
DATA 658,6
DATA 329,3
DATA 348,3
DATA 738,6
DATA 329,3
DATA 348,3
DATA 829,6
DATA 329,3
DATA 348,3
DATA 878,6
DATA 329,3
DATA 348,3
DATA 985,6
DATA 329,3
DATA 348,3
DATA 1044,6
DATA 329,3
DATA 348,3
DATA 738,6
DATA 329,3
DATA 348,3
DATA 1315,6
DATA 329,3
DATA 348,3
DATA 1172,6
DATA 329,3
DATA 348,3
DATA 1044,6
DATA 329,3
DATA 348,3
DATA 985,6
DATA 329,3
DATA 348,3
DATA 878,6
DATA 829,6
DATA 329,6
DATA 878,6
DATA 0,6
DATA 985,6
DATA 658,6
DATA 1044,6
DATA 0,6
DATA 1172,6
DATA 586,6
DATA 1315,6
DATA 0,6
DATA 878,6
DATA 522,6
DATA 1394,6
DATA 0,6
DATA 1315,6
DATA 493,6
DATA 1172,6
DATA 0,6
DATA 1044,6
DATA 439,6
DATA 985,6
DATA 0,6
DATA 1756,6
DATA 586,6
DATA 1657,6
DATA 0,6
DATA 1476,6
DATA 658,6
DATA 1315,6
DATA 0,6
DATA 1756,6
DATA 697,6
DATA 1756,6
DATA 0,6
DATA 1756,6
DATA 586,6
DATA 1172,6
DATA 0,6
DATA 985,3
DATA 1044,3
DATA 658,6
DATA 985,3
DATA 1044,3
DATA 0,6
DATA 985,3
DATA 1044,3
DATA 329,6
DATA 878,6
DATA 0,6
DATA 878,6
DATA 439,6
DATA 878,6
DATA 219,6
DATA 878,6
DATA 233,6
DATA 878,6
DATA 261,6
DATA 930,6
DATA 293,6
DATA 1044,6
DATA 310,6
DATA 586,6
DATA 185,6
DATA 0,6
DATA 310,6
DATA 738,6
DATA 293,6
DATA 0,6
DATA 261,6
DATA 878,6
DATA 233,6
DATA 0,6
DATA 219,6
DATA 930,6
DATA 196,6
DATA 782,6
DATA 196,6
DATA 878,6
DATA 196,6
DATA 930,6
DATA 196,6
DATA 1044,6
DATA 219,6
DATA 1172,6
DATA 233,6
DATA 658,6
DATA 131,6
DATA 1172,6
DATA 0,6
DATA 1044,6
DATA 196,6
DATA 930,6
DATA 0,6
DATA 878,6
DATA 261,6
DATA 782,6
DATA 0,6
DATA 878,6
DATA 348,6
DATA 0,6
DATA 391,6
DATA 1394,6
DATA 439,6
DATA 1315,6
DATA 493,6
DATA 1394,6
DATA 553,6
DATA 0,6
DATA 586,6
DATA 782,6
DATA 329,6
DATA 0,6
DATA 586,6
DATA 1315,6
DATA 553,6
DATA 0,6
DATA 493,6
DATA 0,6
DATA 439,6
DATA 0,6
DATA 391,6
DATA 1172,6
DATA 348,6
DATA 1315,6
DATA 0,6
DATA 1394,6
DATA 439,6
DATA 1564,6
DATA 0,6
DATA 1756,6
DATA 586,6
DATA 1860,6
DATA 0,6
DATA 1106,6
DATA 329,6
DATA 1860,6
DATA 0,6
DATA 1756,6
DATA 391,6
DATA 1564,6
DATA 0,6
DATA 1394,6
DATA 553,6
DATA 1315,6
DATA 0,6
DATA 1394,6
DATA 293,6
DATA 0,6
DATA 329,6
DATA 1172,6
DATA 348,6
DATA 0,6
DATA 391,6
DATA 782,6
DATA 439,6
DATA 782,6
DATA 465,6
DATA 782,6
DATA 277,6
DATA 1172,6
DATA 465,6
DATA 1106,6
DATA 439,6
DATA 1315,6
DATA 391,6
DATA 878,6
DATA 348,6
DATA 1106,6
DATA 329,6
DATA 1172,6
DATA 348,6
DATA 985,6
DATA 391,6
DATA 1106,3
DATA 1172,3
DATA 439,6
DATA 1106,3
DATA 1172,3
DATA 0,6
DATA 1106,3
DATA 1172,3
DATA 219,6
DATA 1172,6
DATA 0,6
DATA 1172,6
DATA 233,6
DATA 1044,6
DATA 233,6
DATA 930,6
DATA 233,6
DATA 878,6
DATA 261,6
DATA 782,6
DATA 233,6
DATA 697,6
DATA 219,6
DATA 930,8
DATA 196,8
DATA 553,8
DATA 465,8
DATA 586,8
DATA 439,8
DATA 658,8
DATA 391,8
DATA 697,8
DATA 348,8
DATA 782,8
DATA 329,8
DATA 878,9
DATA 348,9
DATA 1172,9
DATA 391,9
DATA 697,9
DATA 439,9
DATA 697,9
DATA 439,9
DATA 658,9
DATA 219,9
DATA 586,9
DATA 219,9
DATA 586,6
DATA 146,6
DATA 586,6
DATA 146,6
DATA 586,6
DATA 146,6
DATA 586,6
DATA 146,6
DATA 586,6
DATA 146,6
DATA 586,6
DATA 146,6
DATA 586,6
DATA 146,6
DATA 586,6
DATA 146,6
DATA 586,6
DATA 146,6
DATA -1,-1
'
'  end of data
'
