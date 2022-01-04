10 print ("Регрессия для различных парных зависимостей y=f(x)")
20 m=255: dim x(m), y(m)
30 print ("Введите x,y,c (c=1 при вводе, c=0 по окончании ввода)")
40 j=j+1: input x(j), y(j), c: if c<>0 then 30
50 print ("Задайте код К нужного вида регрессии: К=0, если нужно")
60 print ("вызвать таблицу кодов для y=f(x).  K="): input k
65 x1=0: x2=0: y1=0: y2=0: p=0: if k=0 then 900
70 if k=16 then input "Введите N=",n
75 for i=1 to j: x=x(i): y=y(i): on k goto 210,220,230,240,250,260,270,280,290,300,310,320,330,340,350,360
80 a=w: b=v: on k goto 510,520,530,540,550,560,570,580,590,600,610,620,630,640,650,660
90 print using "& ##.##### & ##.#####"; "Параметры А=" a "B=" b
95 print using "& ##.#####"; "Коэффициент корреляции R =" r
100 input "Введите x, c (c=1 или 0 при окончании): ",x,c
110 if c=0 then 50
120 on k goto 710,720,730,740,750,760,770,780,790,800,810,820,830,840,850,860
130 print using "& ##.#####";  "Параметры y(x)=" y: goto 100
200 rem 'Линеаризующие преобразования'
210 goto 400
220 y = 1/y: goto 400
230 x = 1/x: goto 400
240 y = x/y: goto 400
250 y = lgt(y): goto 400
260 y = log(y): goto 400
270 y = lgt(y): goto 400
280 x = exp(-x): y=1/y: goto 400
290 x = lgt(x): y=lgt(y): goto 400
300 x = lgt(x): goto 400
310 x = log(x): goto 400
320 y = 1/y: goto 400                  
330 x = 1/x: y = 1/y: goto 400
340 x = 1/x: y = log(y): goto 400
350 x = 1/x: y = lgt(y): goto 400
360 x=x^n: goto 400
390 rem 'Линейная регрессия'
400 x1=x1+x: y1=y1+y: x2=x2+x*x
410 y2=y2+y*y: p=p+x*y: next i
420 v=(x1*y1-j*p)/(x1*x1-j*x2)
430 w=(y1-v*x1)/j
440 r=(p-x1*y1/j)/sqr((x2-x1*x1/j)*(y2-y1*y1/j))
450 goto 80
500 rem 'Сведение линейной регрессии к нелинейной'
510 goto 90
520 goto 90
530 goto 90
540 goto 90
550 a=10^w: b=10^v: goto 90
560 a=exp(w): goto 90
570 a=10^w: goto 90
580 goto 90
590 goto 570
600 goto 90
610 goto 90
620 a=1/v: b=w/v: goto 90
630 a=1/w: b=v/w: goto 90
640 goto 560
650 goto 570
660 goto 90
700 rem 'Вычисление y(x) по заданному x'
710 y=a+b*x: goto 130
720 y=1/(a+b*x): goto 130
730 y=a+b/x: goto 130
740 y=x/(a+b*x)
750 y=a*b^x: goto 130
760 y=a*exp(b*x): goto 130
770 y=a*10^(v*x): goto 130
780 y=1/(a+b*exp(-x)): goto 130
790 y=a*x^b: goto 130
800 y=a+b*lgt(x): goto 130
810 y=a+b*log(x): goto 130
820 y=a/(b+x): goto 130
830 y=a*x/(b+x): goto 130
840 y=a*exp(b/x): goto 130
850 y=a*10^(b/x): goto 130
860 y=a+b*x^n: goto 130
900 print ("Таблица кодов и эмпирических функций y(x)")
910 print (" 1. y=a+b*x       2. y=1/(a+b*x)")
920 print (" 3. y=a+b/x       4. y=x/(a+b*x)")
930 print (" 5. y=a*b^x       6. y=a*exp(b*x)")
940 print (" 7. y=a*10^(b*x)  8. y=1/(a+b*exp(-x))")
950 print (" 9. y=a*x^b       10. y=a+b*lgt(x)")
960 print ("11. y=a+b*log(x)  12. y=a/(b+x)")
970 print ("13. y=a*x/(b+x)   14. y=a*exp(b/x)")
980 print ("15. y=a*10^(b/x)  16. y=a+b*(x^n)")
990 input "Задайте код регрессии К=", k
1000 goto 65
1010 end





















