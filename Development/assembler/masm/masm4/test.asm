; ─ы  ъюЁЁхъЄэюую юЄюсЁрцхэш  Ёєёёъшї сєът шёяюы№чєщЄх
; ъюфшЁютъє 866 (т Notepad++: ьхэ■ ╩юфшЁютъш - ╩юфшЁютъш -
; ╩шЁшыышЎр - OEM 866).
; Если текст, начиная с этой строки, читается нормально,
; то файл в правильной кодировке.

include io.asm ;подключение операций ввода-вывода
.lall

stack segment stack
	dw 128 dup (?)
stack ends

data segment
; место для переменных и констант
  x db 'hello!$'
  
  irp C,<K,LL,M>
  C EQU C&C&CC
  DB 'C&C&CC'
  ENDM
  
data ends

code segment 'code'
	assume ss:stack, ds:data, cs:code
; место для описания процедур

start:
	mov ax,data
	mov ds,ax
	lea dx, x
	outstr
	newline
; команды программы должны располагаться здесь

    finish
code ends
    end start 
