*descri��o das vari�veis
* h data
* e f vari�veis de composi��o de cabessalho
* n nome do consulente
* g nome do arquivo para grava��o da consulta
* p entrada de perguntas
* t tecla de escolha de pedras
* m escolha de opi��o no menu
* a passado
* b presente
* c futuro
* r vari�vel rand�mica
* z vari�vel de contagem e controle de a b c
* v vari�vel de verifica��o ou checagem
* i vari�vel de leitura de dados
* l contador de linhas do arquivo de dados
* d nome do arquivo de dados
*or�culo domin�
*criado por L�O AUGUSTO TARILONTE JUNIOR
@in�cio
randomiza
seja f "consulta realizada em "
seja e "por "
seja h data
seja z 0
seja y ""
seja x ""
escreve "OR�CULO DOMIN�"
escreve "digite seu nome"
le n
escreve "fa�a sua pergunta e tecle �nter"
escreve n
le p
escreve "aperte 3 teclas para pegar suas pedras"
@tres
le t&
@outra
seja r rand 49
se z == 0 seja a r
se z == 1
seja b r
se b == a desvia @outra
fim se
se z == 2
seja c r
se c == a desvia @outra
se c == b desvia @outra
fim se
bipa
soma z 1
se z == 3 desvia @menu
desvia @tres
@menu
escreve "escolha sua opi��o"
escreve n
escreve "f1 ajuda"
le m&
se m == "#0#59"
escreve "tecle a para saber sobre seu passado"
escreve "tecle b para saber sobre seu presente"
escreve "tecle c para saber sobre seu futuro"
escreve "tecle g para gravar sua consulta"
escreve "tecle n para ter uma nova consulta"
escreve "�sque termina sua consulta"
escreve "f1 ajuda"
desvia @menu
fim se
se m == "#27" termina mudo
se m == "a"
seja d a
desvia @leitura
fim se
se m == "b"
seja d b
desvia @leitura
fim se
se m == "c"
seja d c
desvia @leitura
fim se
se m == "g" desvia @gravar
se m == "n" desvia @in�cio
escreve "voc� est� brincando com os esp�ritos"
desvia @menu
@leitura
abre #1 d
seja l 0
@ler
le #1 i
checa v
se v <> 0 desvia @fecha
soma l 1
escreve i
desvia @ler
@fecha
fecha #1
desvia @menu
@gravar
escreve "digite o nome do arquivo onde ser� gravada sua consulta"
escreve n
le g
concatena f h
concatena e n
abre #2 g&
escreve #2 f
escreve #2 e
escreve #2 p
fecha #2
@controle
se z == 3 seja d a
se z == 4 seja d b
se z == 5 seja d c
se z == 6 desvia @menu
abre #1 d
seja l 0
@ler1
le #1 i
checa v
se v <> 0 desvia @fecha1
soma l 1
desvia @escrita
@fecha1
fecha #1
soma z 1
desvia @controle
@escrita
abre #2 g&
escreve #2 i
fecha #2
desvia @ler1
