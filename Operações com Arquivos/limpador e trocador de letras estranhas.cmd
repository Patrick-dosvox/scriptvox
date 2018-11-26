* Programas juntos (limpador e trocador
* Remodificado por: Tiago Melo Casal
* Em: 26/02/2002



* Programa trocador de letras estranhas
* Autor: Antonio Borges
* Em 12/8/2001


escreve "Trocador de letras estranhas e juntador de linhas"
escreve
@novaTentativa
escreve "Informe o nome do arquivo a trocar"
l� a
se a="" escreve "Desistiu"
se a="" termina mudo
escreve "Informe o nome do arquivo que saira limpo (diferente do anterior)"
l� b
se b="" escreve "Desistiu"
se b="" termina mudo

abre #1 a
remove "c:\$$$.$$$" &
abre #2 "C:\$$$.$$$" &

@loop1
    l� #1 l
    checa s
   se s <> 0 desvia @acabou1

    chama @trocaTudo
    escreve #2 l

    desvia @loop1

@acabou1
fecha #1
fecha #2
remove b &
replica "C:\$$$.$$$" b


*** Rotinas do Programa Juntador
* Programa regenerador de linhas grandes do Edivox para o Word
* Autor: Antonio Borges
* Em 13/8/2001


abre #1 b
remove "C:\$$$.$$$" &
abre #2 "C:\$$$.$$$" &

seja z ""
seja n 0
@loop2
    l� #1 l
    checa s
    se s <> 0 desvia @acabou2

    se n <> 0 chama @juntaLinhas
    se l <> "" escreve #2 l &

    seja z l
    soma n 1
    desvia @loop2

@acabou2
    escreve #2
    fecha #1
    fecha #2

* Rotina geral de fim de programa

replica "C:\$$$.$$$" b

escreve "Opera��o conclu�da"
escreve
escreve "Deseja continuar a trocar caracteres estranhos e juntar linhas"
escreve "de outro arquivo?"
@pergunta
l� a &
se a="#0#66" chama @f8
se a="#0#66" desvia @pergunta
se a="#0#101" chama @Controlf8
se a="#0#101" desvia @pergunta
se a="s" desvia @novaTentativa


@termina
escreve "Fim"
termina mudo


***** Rotina para troca de sinais especiais e  brancos entre os textos

@trocaTudo
substitui l "  " " "
substitui l " )" ")"
substitui l " ," ","
substitui l " ." "."
substitui l " :" ":"
substitui l " ;" ";"
substitui l "&#8216" "("
substitui l "&#8217" ")"
substitui l "&Aacute;" "�"
substitui l "&aacute;" "�"
substitui l "&acirc;" "�"
substitui l "&Acirc;" "�"
substitui l "&agrave;" "�"
substitui l "&Agrave;" "�"
substitui l "&atilde;" "�"
substitui l "&Atilde;" "�"
substitui l "&Ccedil;" "�"
substitui l "&ccedil;" "�"
substitui l "&eacute;" "�"
substitui l "&Eacute;" "�"
substitui l "&ecirc;" "�"
substitui l "&Ecirc;" "�"
substitui l "&iacute;" "�"
substitui l "&Iacute;" "�"
substitui l "&nbsp" "-"
substitui l "&oacute;" "�"
substitui l "&Oacute;" "�"
substitui l "&ocirc;" "�"
substitui l "&Ocirc;" "�"
substitui l "&otilde;" "�"
substitui l "&Otilde;" "�"
substitui l "&uacute;" "�"
substitui l "&Uacute;" "�"
substitui l "&utrema;" "�"
substitui l "&Utrema;" "�"
substitui l "( " "("
substitui l "=20" "
substitui l "=21" "!"
substitui l "=23" "#"
substitui l "=24" "$"
substitui l "=25" "%"
substitui l "=26" "&"
substitui l "=27" "'"
substitui l "=28" "("
substitui l "=29" ")"
substitui l "=2A" "*"
substitui l "=2B" "+"
substitui l "=2C" ","
substitui l "=2D" "-"
substitui l "=2E" "."
substitui l "=2F" "/"
substitui l "=30" "0"
substitui l "=31" "1"
substitui l "=32" "2"
substitui l "=33" "3"
substitui l "=34" "4"
substitui l "=35" "5"
substitui l "=36" "6"
substitui l "=37" "7"
substitui l "=38" "8"
substitui l "=39" "9"
substitui l "=3A" ":"
substitui l "=3B" ";"
substitui l "=3C" "<"
substitui l "=3D" "="
substitui l "=3E" ">"
substitui l "=3F" "?"
substitui l "=40" "@"
substitui l "=41" "A"
substitui l "=42" "B"
substitui l "=43" "C"
substitui l "=44" "D"
substitui l "=45" "E"
substitui l "=46" "F"
substitui l "=47" "G"
substitui l "=48" "H"
substitui l "=49" "I"
substitui l "=4A" "J"
substitui l "=4B" "K"
substitui l "=4C" "L"
substitui l "=4D" "M"
substitui l "=4E" "N"
substitui l "=4F" "O"
substitui l "=50" "P"
substitui l "=51" "Q"
substitui l "=52" "R"
substitui l "=53" "S"
substitui l "=54" "T"
substitui l "=55" "U"
substitui l "=56" "V"
substitui l "=57" "W"
substitui l "=58" "X"
substitui l "=59" "Y"
substitui l "=5A" "Z"
substitui l "=5B" "["
substitui l "=5C" "\"
substitui l "=5D" "]"
substitui l "=5E" "^"
substitui l "=5F" "_"
substitui l "=60" "`"
substitui l "=61" "a"
substitui l "=62" "b"
substitui l "=63" "c"
substitui l "=64" "d"
substitui l "=65" "e"
substitui l "=66" "f"
substitui l "=67" "g"
substitui l "=68" "h"
substitui l "=69" "i"
substitui l "=6A" "j"
substitui l "=6B" "k"
substitui l "=6C" "l"
substitui l "=6D" "m"
substitui l "=6E" "n"
substitui l "=6F" "o"
substitui l "=70" "p"
substitui l "=71" "q"
substitui l "=72" "r"
substitui l "=73" "s"
substitui l "=74" "t"
substitui l "=75" "u"
substitui l "=76" "v"
substitui l "=77" "w"
substitui l "=78" "x"
substitui l "=79" "y"
substitui l "=7A" "z"
substitui l "=7B" "{"
substitui l "=7C" "|"
substitui l "=7D" "}"
substitui l "=7E" "~"
substitui l "=7F" ""
substitui l "=80" "�"
substitui l "=80C7O" "��O"
substitui l "=81" "�"
substitui l "=82" "�"
substitui l "=83" "�"
substitui l "=84" "�"
substitui l "=85" "�"
substitui l "=86" "�"
substitui l "=87" "�"
substitui l "=88" "�"
substitui l "=89" "�"
substitui l "=8A" "�"
substitui l "=8B" "�"
substitui l "=8C" "�"
substitui l "=8D" "�"
substitui l "=8E" "�"
substitui l "=8F" "�"
substitui l "=90" "�"
substitui l "=91" "�"
substitui l "=92" "�"
substitui l "=93" "�"
substitui l "=94" "�"
substitui l "=95" "�"
substitui l "=96" "�"
substitui l "=97" "�"
substitui l "=98" "�"
substitui l "=99" "�"
substitui l "=9A" "�"
substitui l "=9B" "�"
substitui l "=9C" "�"
substitui l "=9D" "�"
substitui l "=9E" "�"
substitui l "=9F" "�"
substitui l "=A0" "�"
substitui l "=A1" "�"
substitui l "=A2" "�"
substitui l "=A3" "�"
substitui l "=A4" "�"
substitui l "=A5" "�"
substitui l "=A6" "�"
substitui l "=A7" "�"
substitui l "=A8" "�"
substitui l "=A9" "�"
substitui l "=AA" "�"
substitui l "=AB" "�"
substitui l "=AC" "�"
substitui l "=AD" "�"
substitui l "=AE" "�"
substitui l "=AF" "�"
substitui l "=B0" "�"
substitui l "=B1" "�"
substitui l "=B2" "�"
substitui l "=B3" "�"
substitui l "=B4" "�"
substitui l "=B5" "�"
substitui l "=B6" "�"
substitui l "=B7" "�"
substitui l "=B8" "�"
substitui l "=B9" "�"
substitui l "=BA" "�"
substitui l "=BB" "�"
substitui l "=BC" "�"
substitui l "=BD" "�"
substitui l "=BE" "�"
substitui l "=BF" "�"
substitui l "=C0" "�"
substitui l "=C1" "�"
substitui l "=C2" "�"
substitui l "=C3" "�"
substitui l "=C4" "�"
substitui l "=C5" "�"
substitui l "=C6" "�"
substitui l "=C7" "�"
substitui l "=C8" "�"
substitui l "=C9" "�"
substitui l "=CA" "�"
substitui l "=CB" "�"
substitui l "=CC" "�"
substitui l "=CD" "�"
substitui l "=CE" "�"
substitui l "=CF" "�"
substitui l "=D0" "�"
substitui l "=D1" "�"
substitui l "=D2" "�"
substitui l "=D3" "�"
substitui l "=D4" "�"
substitui l "=D5" "�"
substitui l "=D6" "�"
substitui l "=D7" "�"
substitui l "=D8" "�"
substitui l "=D9" "�"
substitui l "=DA" "�"
substitui l "=DB" "�"
substitui l "=DC" "�"
substitui l "=DD" "�"
substitui l "=DE" "�"
substitui l "=DF" "�"
substitui l "=E0" "�"
substitui l "=E1" "�"
substitui l "=E2" "�"
substitui l "=E3" "�"
substitui l "=E4" "�"
substitui l "=E5" "�"
substitui l "=E6" "�"
substitui l "=E7" "�"
substitui l "=E8" "�"
substitui l "=E9" "�"
substitui l "=EA" "�"
substitui l "=EB" "�"
substitui l "=EC" "�"
substitui l "=ED" "�"
substitui l "=EE" "�"
substitui l "=EF" "�"
substitui l "=F0" "�"
substitui l "=F1" "�"
substitui l "=F2" "�"
substitui l "=F3" "�"
substitui l "=F4" "�"
substitui l "=F5" "�"
substitui l "=F6" "�"
substitui l "=F7" "�"
substitui l "=F8" "�"
substitui l "=F9" "�"
substitui l "=FA" "�"
substitui l "=FB" "�"
substitui l "=FC" "�"
substitui l "=FD" "�"
substitui l "=FE" "�"
substitui l "=FF" "�"
substitui l "�" "�"
substitui l "��" "��"
substitui l "aao" "a�o"
substitui l "bao" "b�o"
substitui l "cao" "c�o"
substitui l "�ao" "��o"
substitui l "��o" "��o"
substitui l "�do" "��o"
substitui l "�oes" "��es"
substitui l "�s" "�s"
substitui l "dao" "d�o"
substitui l "dc" "de"
substitui l "does" "d�es"
substitui l "�" "�"
substitui l "eao" "e�o"
substitui l "eoes" "e�es"
substitui l "fao" "f�o"
substitui l "foes" "f�es"
substitui l "gao " "g�o "
substitui l "gao," "g�o,"
substitui l "goes" "g�es"
substitui l "hao " "h�o "
substitui l "hao," "h�o,"
substitui l "hoes" "h�es"
substitui l "�" "�"
substitui l "�" "�"
substitui l "�" "�"
substitui l "iao" "i�o"
substitui l "ioes" "i�es"
substitui l "jao" "j�o"
substitui l "joao" "jo�o"
substitui l "Joao" "Jo�o"
substitui l "joes" "j�es"
substitui l "lao " "l�o "
substitui l "lao," "l�o,"
substitui l "loes" "l�es"
substitui l "mao " "m�o "
substitui l "mao," "m�o,"
substitui l "maos" "m�os"
substitui l "moes" "m�es"
substitui l "nao" "n�o"
substitui l "�" """
substitui l "pao " "p�o "
substitui l "pao," "p�o,"
substitui l "rao " "r�o "
substitui l "rao," "r�o,"
substitui l "roes" "r�es"
substitui l "sao" "s�o"
substitui l "tao" "t�o"
substitui l "toes" "t�es"
substitui l "�" "-"
substitui l "�" "�"
substitui l "�" "�"
substitui l "uao" "��o"
substitui l "vao" "v�o"
substitui l "voes" "v�es"
substitui l "�" "�"
substitui l "zao" "z�o"
substitui l "zoes" "z�es"
substitui l "~" "
substitui l "�" "�"
substitui l "�" "�"
substitui l "�" "�"
substitui l "�" "a"
substitui l "�" "�"
substitui l "�" "�"
substitui l "�." "."
retorna


*** rotina de jun��o de linhas ***

@juntaLinhas
    se n = 1 retorna

    se z="" desvia @pulaLinha
    se l="" desvia @pulaLinha

    copia x l 1 1
    se x=" " desvia @pulaLinha

    escreve #2 " " &
    retorna

@pulaLinha
    escreve #2
    retorna


*** Rotinas Hora e Data ***


@f8
seja s hora
copia h s 1 2
concatena h " horas e "
copia m s 4 5
concatena m "minutos"
concatena h m
escreve h
retorna

@Controlf8
seja d dia
seja t data
concatena d "  "
copia r t 1 2
concatena r " de "
concatena d r
copia m t 4 5
substitui m "01" "janeiro de "
substitui m "02" "fevereiro de "
substitui m "03" "mar�o de "
substitui m "04" "abril de "
substitui m "05" "maio de "
substitui m "06" "junho de "
substitui m "07" "julho de "
substitui m "08" "agosto de "
substitui m "09" "setembro de "
substitui m "10" "outubro de "
substitui m "11" "novembro de "
substitui m "12" "dezembro de "
concatena d m
copia n t 7 10
concatena d n
escreve d
retorna
