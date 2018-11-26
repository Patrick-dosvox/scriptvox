* Script para acertar a hora do computador via Internet e informar a
*hora certa em diversas cidades do mundo
*Autores: Antonio Borges, Glauco F�rius e Edson Junior
*Em 12 de julho de 2003

escreve "Bem vindo ao Programa da Hora Certa!"

@inicio
escreve "Tecle A, para acertar o rel�gio do seu computador pela hora oficial brasileira,"
escreve "ou h, para saber a hora certa em outras cidades do mundo:"
le e &
se e = "#27"
desvia @fim
sen�o
se e = "a"
escreve "Tecle N para hor�rio normal e V para hor�rio de ver�o"
le f &
se f = "V"
desvia @acertahora
sen�o
se f = "N"
desvia @acertahoranormal
sen�o
se e = "h"
desvia @opcaocidades
sen�o
escreve "Op��o inv�lida."
desvia @inicio
fim se

@acertahora
escreve "OK"
toca "c:\winvox\som\clockvox\ckbip.wav"
toca "c:\winvox\som\clockvox\ckbip.wav"
seja b ""
transfere de b
escreve "Obtendo a hora certa de ver�o. Aguarde 15 segundos!"
executa "iexplore HTTP://www.horacerta.com.br/cgi-bin/horacerta.cgi?cidade=Sao_Paulo" &

@procedure
repete i 15
toca "c:\winvox\som\forcavox\foplim.wav"
espera 1
fim repete
toca "c:\winvox\som\somtags\blimblom.wav"
    aciona "TAB"
    aciona "TAB"
aciona "CTRL+C"
aciona "ALT+A"
espera 1
aciona "F"

transfere para h

copia d h 1 2
copia m h 4 6
se m = "jan" seja m "01"
se m = "fev" seja m "02"
se m = "mar" seja m "03"
se m = "abr" seja m "04"
se m = "mai" seja m "05"
se m = "jun" seja m "06"
se m = "jul" seja m "07"
se m = "ago" seja m "08"
se m = "set" seja m "09"
se m = "out" seja m "10"
se m = "nov" seja m "11"
se m = "dez" seja m "12"
copia a h 8 11
concatena d "/"
concatena d m
concatena d "/"
concatena d a

copia x h 15 16
copia y h 17 22
copia p h 24 25
se h = "12" subtrai x 12
se p = "PM" soma x 12
concatena x y
se e = "h" retorna

escreve "Acertando a data e hora de ver�o do sistema"
seja c "command /c DATE "
concatena c d
executa c &

seja c "command /c TIME "
concatena c x
executa c &

escreve "Data atual no Sul do Brasil: " &
escreve d
escreve "Hora de ver�o certa de Bras�lia: " &
escreve x
desvia @horacidades

@acertahoranormal
escreve "OK"
toca "c:\winvox\som\clockvox\ckbip.wav"
toca "c:\winvox\som\clockvox\ckbip.wav"
seja b ""
transfere de b
escreve "Obtendo a hora certa do Nordeste do Brasil. Aguarde 15 segundos!"
executa "iexplore HTTP://www.horacerta.com.br/cgi-bin/horacerta.cgi?cidade=Sao_Paulo" &

@procedure
repete i 15
toca "c:\winvox\som\forcavox\foplim.wav"
espera 1
fim repete
toca "c:\winvox\som\somtags\blimblom.wav"
    aciona "TAB"
    aciona "TAB"
aciona "CTRL+C"
aciona "ALT+A"
espera 1
aciona "F"

transfere para h

copia d h 1 2
copia x h 15 16
se x = "12" subtrai d 1
copia m h 4 6
se m = "jan" seja m "01"
se m = "fev" seja m "02"
se m = "mar" seja m "03"
se m = "abr" seja m "04"
se m = "mai" seja m "05"
se m = "jun" seja m "06"
se m = "jul" seja m "07"
se m = "ago" seja m "08"
se m = "set" seja m "09"
se m = "out" seja m "10"
se m = "nov" seja m "11"
se m = "dez" seja m "12"
copia a h 8 11
concatena d "/"
concatena d m
concatena d "/"
concatena d a

copia x h 15 16
copia y h 17 22
copia p h 24 25
se p = "AM" subtrai x 1
se p = "PM" soma x 11
concatena x y
se e = "h" retorna

escreve "Acertando a data e hora Nordestina do sistema"
seja c "command /c DATE "
concatena c d
executa c &

seja c "command /c TIME "
concatena c x
executa c &

escreve "Data atual no Nordeste do Brasil: " &
escreve d
escreve "Hora certa no Nordeste do Brasil: " &
escreve x
desvia @horacidades

@horacidades
escreve "Deseja saber a hora certa em outras cidades do mundo?"
le g &
se g = "n"
desvia @fim
fim se

@opcaocidades
escreve "Tecle a letra para a cidade desejada (F1 ajuda, Esc cancela):"
le o &
se o = "#27"
desvia @fim
sen�o
     se o = "#0#59"
     desvia @ajudacidades
sen�o
se o = "f"
seja n "Fortaleza"
seja t "Fortaleza"
sen�o
se o = "b"
seja n "Buenos Aires"
seja t "Buenos_Aires"
sen�o
se o = "n"
seja n "Nova York"
seja t "Nova_York"
sen�o
se n = "a"
seja n "Los Angeles"
seja t "Los_Angeles"
sen�o
se o = "c"
seja n "Chicago"
seja t "Chicago"
sen�o
se o = "m"
seja n "Montreal"
seja t "Montreal"
sen�o
se o = "l"
seja n "Londres"
seja t "Londres"
sen�o
se o = "p"
seja n "Paris"
seja t "Paris"
sen�o
se o = "r"
seja n "Roma"
seja t "Roma"
sen�o
se o = "o"
seja n "Moscou"
seja t "Moscou"
sen�o
se o = "j"
seja n "Jerusal�m"
seja t "Jerusalem"
sen�o
se o = "k"
seja n "Calcut�"
seja t "Calcuta"
sen�o
se o = "h"
seja n "Hong Kong"
seja t "Hong_Kong"
sen�o
se o = "t"
seja n "T�quio"
seja t "Toquio"
sen�o
se o = "s"
seja n "Sydney"
seja t "Sydney"
sen�o
escreve "Op��o inv�lida."
desvia @opcaocidades
fim se

escreve "OK"
toca "c:\winvox\som\clockvox\ckbip.wav"
toca "c:\winvox\som\clockvox\ckbip.wav"
seja b ""
transfere de b
seja k n
escreve "Obtendo a hora certa em " &
concatena n ". "
escreve n &
escreve "Aguarde 15 segundos!"
seja i "iexplore HTTP://www.horacerta.com.br/cgi-bin/horacerta.cgi?cidade="
concatena i t
executa i &
seja i ""
seja e "h"
chama @procedure
seja n k
escreve "Data atual em " &
concatena n ": "
escreve n &
escreve d
escreve "Hora certa em " &
escreve n &
escreve x
desvia @horacidades

@ajudacidades
escreve "Tecle:"
escreve "a - para Los Angeles;"
escreve "b - para Buenos Aires;"
escreve "c - para Chicago;"
escreve "f - para Fortaleza;"
escreve "h - para Hong Kong;"
escreve "j - para Jerusal�m;"
escreve "k - para Calcut�;"
escreve "l - para Londres;"
escreve "m - para Montreal;"
escreve "n - para Nova York;"
escreve "o - para Moscou;"
escreve "p - para Paris;"
escreve "r - para Roma;"
escreve "s - para Sidney."
escreve "t - para T�quio;"
desvia @opcaocidades

@fim
escreve "OK. At� a pr�xima!"
toca "c:\winvox\som\somtags\filedone.wav"
termina mudo
