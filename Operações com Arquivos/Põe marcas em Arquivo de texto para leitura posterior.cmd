* Marcador de linha de arquivos, para serem aberto no EDIVOX
* Autor: Tiago Melo Casal
* Em: 16/02/2002



seja a "C:\Winvox\Treino\236.txt"
seja b 1166
seja c "E:\Livros\563.txt"
seja d 277
seja e "$$$.$$$"
seja f 1


     escreve "MARCADOR DE LINHA"
bipa
@a
escreve
   escreve "Qual a op��o?"
@b
le g &
se g="m"
chama @f
desvia @a
sen�o
se g="l"
desvia @d
sen�o
se g="#0#59"
desvia @c
sen�o
se g="#27"
desvia @h
sen�o
se g="#0#66"
chama @i
desvia @b
sen�o
se g="#0#101"
chama @j
desvia @b
sen�o
escreve "Op��o inv�lida."
@c
escreve
escreve "Precione:"
escreve "m - Para marcar;"
escreve "l - Para ler apartir da marca, usando o edivox;"
escreve "esc - Para sair."
desvia @a
fim se


@d
escreve "Quer l� o registro 1, 2, ou 3?"
le h &
se h="1"
seja i a
seja j b
desvia @e
sen�o
se h="2"
seja i c
seja j d
desvia @e
sen�o
se h="3"
seja i e
seja j f
desvia @e
sen�o
se h="#27"
desvia @a
sen�o
desvia @d
fim se
@e
seja k "C:\WINVOX\edivox.exe "
concatena k i
executa k &
espera 2
aciona "ctrl+g"
digita j
aciona "F9"
digita "FT" &
bipa
tela limpa
     escreve mudo "MARCADOR DE LINHA"
Enquanto N�o g *=* "SCRIPTVOX"
espera 1
captura ativa g
Fim Enquanto
bipa
desvia @a
@h
repete r 2
bipa
fim repete
  escreve "Fim"
termina mudo


@f
escreve "Em qual registro guardo? 1, 2 ou 3"
le k &
se k="1" seja l " a "
se k="2" seja l " c "
se k="3" seja l " e "
seja m trim l
se k="1" seja n " b "
se k="2" seja n " d "
se k="3" seja n " f "
seja o trim n
se k="1"
desvia @g
sen�o
se k="2"
desvia @g
sen�o
se k="3"
desvia @g
sen�o
se k="#27"
desvia @a
sen�o
desvia @f
fim se

@g
escreve "Digite o caminho e nome do arquivo. Precione Enter, para manter o valor atual:"
seja p "escreve "
concatena p m
cmd p
le q
se q=""
seja r "seja"
concatena r l
concatena r """
seja s "concatena r "
concatena s m
cmd s
concatena r """
sen�o
seja r "seja"
concatena r l
concatena r """
concatena r q
concatena r """
fim se
escreve "Digite o n�mero da linha. Precione Enter, para manter o valor atual:"
seja p "escreve "
concatena p o
cmd p
le s
se s=""
seja t "seja"
concatena t n
seja u "concatena t "
concatena u o
cmd u
sen�o
seja t "seja"
concatena t n
concatena t s
fim se


* programa de teste de remo��o de uma linha de um arquivo
* Autor: Antonio Borges
* Em 22/1/2002
* Modificado por Tiago Melo Casal, para funcionar com esse script

seja v "C:\WINVOX\TREINO\marcador.cmd"
seja w 5

remove "c:\windows\temp\tmp.tmp" &
abre #1 v
abre #2 "c:\windows\temp\tmp.tmp" &

se k="1" seja x "1"
se k="2" seja x "3"
se k="3" seja x "5"
soma w x
repete x w
   le #1 y
   checa z
   se z <> 0 desvia @erro
   escreve #2 y
fim repete
repete x 2
   le #1 y
   checa z
   se z <> 0 desvia @erro
fim repete
escreve #2 r
escreve #2 t
repete x 50000
   le #1 y
   checa z
   se z <> 0 desvia @final
   escreve #2 y
fim repete
@final
fecha #1
fecha #2
replica "c:\windows\temp\tmp.tmp" v
remove "c:\windows\temp\tmp.tmp"
 escreve "Registro conclu�do!"
cmd r
cmd t
bipa
retorna
@erro
fecha #1
fecha #2
remove "c:\windows\temp\tmp.tmp"
 escreve "Erro!"
 escreve "Tarefa n�o pode ser conclu�da."
bipa
retorna
*** Fim do script de remo��o de linha modificado ***


@i
seja p hora
copia q p 1 2
concatena q " horas e "
copia s p 4 5
concatena s "minutos"
concatena q s
escreve q
retorna

@j
seja p dia
seja q data
concatena p "  "
copia s q 1 2
concatena s " de "
copia y q 4 5
substitui y "01" "janeiro de "
substitui y "02" "fevereiro de "
substitui y "03" "mar�o de "
substitui y "04" "abril de "
substitui y "05" "maio de "
substitui y "06" "junho de "
substitui y "07" "julho de "
substitui y "08" "agosto de "
substitui y "09" "setembro de "
substitui y "10" "outubro de "
substitui y "11" "novembro de "
substitui y "12" "dezembro de "
copia z q 7 10
concatena p s
concatena p y
concatena p z
escreve p
retorna
