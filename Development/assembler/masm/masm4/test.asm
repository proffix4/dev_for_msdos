; ��� ����������� ����������� ������� ���� �����������
; ��������� 866 (� Notepad++: ���� ��������� - ��������� -
; ��������� - OEM 866).
; �᫨ ⥪��, ��稭�� � �⮩ ��ப�, �⠥��� ��ଠ�쭮,
; � 䠩� � �ࠢ��쭮� ����஢��.

include io.asm ;������祭�� ����権 �����-�뢮��
.lall

stack segment stack
	dw 128 dup (?)
stack ends

data segment
; ���� ��� ��६����� � ����⠭�
  x db 'hello!$'
  
  irp C,<K,LL,M>
  C EQU C&C&CC
  DB 'C&C&CC'
  ENDM
  
data ends

code segment 'code'
	assume ss:stack, ds:data, cs:code
; ���� ��� ���ᠭ�� ��楤��

start:
	mov ax,data
	mov ds,ax
	lea dx, x
	outstr
	newline
; ������� �ணࠬ�� ������ �ᯮ�������� �����

    finish
code ends
    end start 
