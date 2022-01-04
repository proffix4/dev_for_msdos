'���������������������������������������������������������������������������Ŀ
'�   This  program demonstrates the SIEVE algorithm of determining prime     �
'�   numbers. The algorithm is often used in benchmarking the speed of       �
'�   compilers.                                                              �
'�									     �
'�	In order to run this program do the following:			     �
'�	  1. Load Turbo Basic by typing TB at the DOS prompt. 		     �
'�	  2. Load the file SIEVE.BAS from the Load option of the File	     �
'�	     pulldown menu.						     �
'�	  3. Select Run from the Main menu				     �
'�����������������������������������������������������������������������������

' The Classic Sieve of Eratosthenes Benchmark
'
DEFINT A-Z
DIM Flags(8190)

CLS
PRINT "Sieve - 25 iterations"
X# = TIMER

FOR Iter = 1 TO 25
  Count = 0
  FOR I = 0 TO 8190
    Flags(I) = 1
  NEXT I
  FOR I = 0 TO 8190
    IF Flags(I) THEN
      Prime = I + I + 3
      K = I + Prime
      WHILE K <= 8190
        Flags(K) = 0
        K = K + Prime
      WEND
      Count = Count + 1
    END IF
  NEXT I
NEXT Iter

XX# = TIMER
PRINT USING "#### primes in ##.### seconds";count;XX#-X#

END
