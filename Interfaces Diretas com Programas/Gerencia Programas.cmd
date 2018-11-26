    *Script para gerenciar programas
* Autor: Gilmar de Freitas Mariano
* Em 2002

tela limpa
cor 15
fundo 2
seja h hora
copia h h 1 2
se h < 6
    escreve mudo "Boa noite"
toca "c:\dosvox\som\dosvox\dvboanoi.wav"
sen�o
se h < 12
    escreve mudo "Bom dia"
toca "c:\dosvox\som\dosvox\dvbomdia.wav"
sen�o
se h < 18
    escreve mudo "Boa tarde"
toca "c:\dosvox\som\dosvox\dvboatar.wav"
sen�o
    escreve mudo "Boa noite"
toca "c:\dosvox\som\dosvox\dvboanoi.wav"
fim se
seja n hora
copia m n 1 2
copia o n 4 5
seja y m
seja w o

@inicio
toca "c:\dosvox\som\dosvox\dvoque.wav" &
escreve mudo "O que voc� deseja? "
le o &
se o ="e"
chama @edit
sen�o
se o="t"
chama @contador
sen�o
se o="s"
chama @scandisk
sen�o
se o="f"
chama @defrag
sen�o
se o = "D"
    chama @Dosvox
sen�o
se o = "J"
chama @jaws
sen�o
se o = "V"
   chama @Virtual
sen�o
se o = "M"
   chama @WINAMP
sen�o
se o = "R"
chama @REINICIA
sen�o
se o = "W"
chama @DESLIGA
sen�o
se o="#0#66"
chama @f8
sen�o
se o="#0#101"
chama @Controlf8
sen�o
   se o ="#27"
aciona "alt+f4"
sen�o
se o ="#0#59"
chama @ajuda
sen�o
escreve mudo "Opi��o invalida, Tecle f1 para ajuda! "
toca "c:\dosvox\som\dosvox\dvopinv.wav"
toca "c:\dosvox\som\dosvox\dvsef1.wav"
desvia @inicio
fim se

@ajuda
tela limpa
escreve "D Dosvox E Edivox F desfragmentador de disco J Jaws"
escreve "M musicas S Scandisk T tempo"
escreve "R para reiniciar o computador W para desligar o computador"
desvia @inicio

@Dosvox
executa "c:\winvox\dosvox.exe"
executa "c:\gilmar\fechawin.exe" &
aciona "w"
aciona "n"
desvia @inicio

@jaws
executa "c:\jaws37u\jaws87.exe" &
desvia @inicio

@Virtual
executa "c:\arquiv~1\microp~1\virtua~1\vision.exe"
desvia @inicio

@winamp
tela limpa
cor 1
fundo 10
escreve "Qual o tipo de reprodu��o (N) normal ou (T) determina o tempo de cada m�sica"
le t &
se t="#27"
desvia @inicio
sen�o
se t="n"
desvia @toca
sen�o
se t= "t"
desvia @tempo
sen�o
escreve "Op��o invalida"
fim se
desvia @winamp

@toca
escreve "Informe o arquivo ou diret�rio a tocar: "
l� d
se d =""
desvia @inicio
sen�o
seja p "c:\arquiv~1\winamp\winamp.exe "
concatena p d
executa p
janela fecha p
desvia @toca

@tempo
Escreve "Qual o tempo em segundo de cada m�sica"
le t
se t=""
desvia @inicio
sen�o
escreve "Informe o arquivo ou diret�rio a tocar: "
l� d
se d =""
desvia @inicio
sen�o
seja p "c:\arquiv~1\winamp\winamp.exe "
concatena p d
executa p &
seja x = t
desvia @muda

@muda
espera x
aciona "b"
desvia @muda
desvia @tempo

@REINICIA
executa "c:\winvox\fechawin.exe" &
aciona "r"
termina

@DESLIGA
executa "c:\winvox\fechawin.exe" &
aciona "d"
termina

@f8
seja n hora
copia m n 1 2
concatena m " horas e "
copia o n 4 5
concatena o "minutos"
concatena m o
escreve m
desvia @inicio

@Controlf8
seja m dia
seja n data
concatena m "  "
copia o n 1 2
concatena o " de "
concatena m o
copia o n 4 5
substitui o "01" "janeiro de "
substitui o "02" "fevereiro de "
substitui o "03" "mar�o de "
substitui o "04" "abril de "
substitui o "05" "oaio de "
substitui o "06" "junho de "
substitui o "07" "julho de "
substitui o "08" "agosto de "
substitui o "09" "seteobro de "
substitui o "10" "outubro de "
substitui o "11" "noveobro de "
substitui o "12" "dezeobro de "
concatena m o
copia o n 7 10
concatena m o
escreve m
desvia @inicio

@defrag
escreve "Qual a unidade de disco a desfragmentar (A) ou (C)? "
le u&
se u="a"
executa "c:\windows\defrag a:"
sen�o
se u="c"
executa "c:\windows\defrag c:"
sen�o
   se u ="#27"
desvia @inicio
sen�o
escreve "A unidade especificada n�o � valida"&
desvia @defrag

@scandisk
escreve "Qual unidade voc� deseja corrigir (A) ou (C)"
le u&
se u="a"
escreve "Digite (P) para tipo de teste padr�o ou (C) para tipo de teste completo"
le t&
se t="p"
executa "c:\windows\scandskw a:" &
espera 2
aciona "p"
aciona "i"
sen�o
se t="c"
executa "c:\windows\scandskw a:" &
espera 2
aciona "c"
aciona "i"
sen�o
se u="c"
escreve "Digite (P) para tipo de teste padr�o ou (C) para tipo de teste completo"
le t&
se t="p"
executa "c:\windows\scandskw c:" &
espera 2
aciona "p"
aciona "i"
aciona "n"
sen�o
se t="c"
executa "c:\windows\scandskw c:" &
espera 2
aciona "c"
aciona "i"
aciona "n"
sen�o
   se u ="#27"
desvia @inicio
sen�o
desvia @erro
fim se

@erro
escreve "Opi��o invalida"&
desvia @scandisk

@contador
seja n hora
copia m n 1 2
copia o n 4 5
seja r m
seja z o
subtrai z w
subtrai r y
escreve "Tempo de execu��o deste programa: "
escreve r
escreve "horas "
escreve z
escreve "minutos"
desvia @inicio

@edit
escreve "Digite o nome do arquivo"
le a
executa "c:\winvox\edivox.exe" &
espera 1
digita a
aciona "enter"
espera 1
bipa
desvia @inicio
