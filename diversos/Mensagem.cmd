* Script que sintetiza aleatoriamente uma mensagem
* Autor: Tiago Melo Casal
* Em: 16/03 | 24/07 / de 2004

* Vari�veis:
* a - Endere�o do arquivo
* c - Checagem se o comando anterior foi executado
* l - Linha lida do arquivo
* m - Mensagem
* n - N�mero de mensagens
* r - Contagem de repeti��es
* s - Mensagem sorteada
* v  x  z - Uso variado



* Nome do arquivo de mensagens
Seja a "C:\Winvox\Scripts\Mensagem.msg"
* A organiza��o do arquivo de mensagem:
* Um campo "*(N�merodemensagens: N)", onde "N" deve ter obrigatoriamente
* o n�mero de quantas mensagens tem no arquivo. As mensagens tem que
* estarem ap�s a linha com o n�mero de mensagens.
* As mensagens s�o indentificadas com um n�mero, "*#N", ("N" � o n�mero
* da mensagem), e a mensagem logo ap�s, separada por um espa�o, ou
* abaixo.

* Abre o arquivo de mensagens
Abre #1 a

* Coloca na vari�vel N o n�mero de mensagens
Enquanto N�o l *=* "*(N�merodemensagens: "
L� #1 l
Checa c
Se c <> 0 Escreve "Arquivo de mensagens " a &
Se c <> 0 Escreve " com erro, n�o encontrei o n�mero das mensagens."
Se c <> 0 Fecha #1
Se c <> 0 Termina Mudo
Fim Enquanto
Seja v Pos ": " l
Soma v 2
Seja x pos ")" l
Se x=0 Escreve "Falta ) na linha indicadora da quantidade de mensagens"
Se x=0 Fecha #1
Se x=0 Termina Mudo
Subtrai x 1
Copia n l v x
Se n < 1 "N�o h� mensagens no arquivo " a &
Se n < 1 Escreve " ou a indica��o do n�mero de mensagens, est� " &
Se n < 1 Escreve "inv�lida."
Se n < 1 Fecha #1
Se n < 1 Termina Mudo

* Sorteia uma mensagem
Randomiza
Seja s Rand n
Soma s 1

* Procura a mensagem sorteada e joga na vari�vel M
Seja x "*#"
Concatena x n
Enquanto N�o l *=* x
L� #1 l
Checa c
Se c <> 0 Escreve " Mensagem " n &
Se c <> 0 Escreve " n�o encontrada. Ou n�o existe, ou existe mais est�"&
Se c <> 0 Escreve " sem refer�ncia, ou n�mero de mensagens n�o confere."
Se c <> 0 Fecha #1
Se c <> 0 Termina Mudo
Fim Enquanto
Seja y Tamanho l
Seja z Tamanho x
Se y > z Desvia @YMaiorQueZ
L� #1 l
Checa c
Se c <> 0 Escreve "Erro. Fim do arquivo, mensagem " n &
Se c <> 0 Escreve " sem texto."
Se c <> 0 Fecha #1
Se c <> 0 Termina Mudo
Seja x "*#"
Se l =* x Escreve "N�o encontrei o texto da mensagem " n &
Se l =* x Fecha #1
Se l =* x Termina Mudo
Seja m l
Desvia @Continua
@YMaiorQueZ
Seja y Pos x l
Soma y z
Concatena x " "
Seja z Pos x l
Se z > 0 Soma y 1
Seja z Tamanho l
Copia m l y z

* Se a mensagem tiver continua��o, coloca a continua��o, em M
@Continua
L� #1 l
Checa c
Se c <> 0 Desvia @Sintetiza
Seja x "*#"
Enquanto N�o l *=* x
Concatena m " "
Concatena m l
L� #1 l
Checa c
Se c <> 0 Desvia @Sintetiza
Fim Enquanto
Seja y Pos x l
Se y < 1 Desvia @Sintetiza
Subtrai y 1
Copia x l 1 y
Seja y Tamanho x
Seja z ""
Repete r y
Concatena z " "
Fim Repete
Se x=z Desvia @Sintetiza
Copia z x y y
Enquanto z=" "
Subtrai y 1
Copia z x y y
Fim Enquanto
Copia z x 1 y
Concatena m " "
Se x <> z
Concatena m z
Sen�o
Concatena m x
Fim Se

* Imprime a mensagem na tela e sintetiza
@Sintetiza
Escreve m
Fecha #1
Termina Mudo
