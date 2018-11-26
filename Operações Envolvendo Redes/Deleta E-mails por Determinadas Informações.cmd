* Remove de um servidor remoto as cartas com determinadas informa��es
* Autor: Antonio e Junior
* Em 26/11/2000
* Modificado por: Tiago Melo Casal
* Em: 13/04/2003

**************************************************
*
* Principais variaveis:
*  a - arquivo que contem o nome dos indesejados
*  m - m�ximo tamanho da carta
*  x - usada para envio de informa��es para a internet
*  i - linha lida da internet
*  p - palavra extraida desta linha
*  n - n�mero de cartas do servidor
*  r - n�mero da carta atualmente recebida
*  d - quando valer 1 pode deletar esta carta
*  q - quantas cartas foram removidas
*
**************************************************



Escreve "DelMail, deleta E-Mail de um servidor remoto"
@SuaOp��o
Escreve
Escreve "Qual � sua op��o?"
L� o &
Se o="#27" Escreve "Tchau"
Se o="#27" Termina Mudo
Se o="i" Desvia @Op��oIR
Se o="r" Desvia @Op��oIR
Se o="t" Desvia @ChamaRotinas
Escreve "As op��es s�o:"
Escreve "R - Apaga carta pelo endere�o do remetente"
Escreve "I - Apaga cartas pelo n�mero IP"
Escreve "t - Apaga todas as cartas"
Escreve "ESC - Fim."
Desvia @SuaOp��o

@Op��oIR

Escreve "Informe o nome do arquivo que cont�m os e-mails indesejados"
L� a

Escreve "Informe o tamanho m�ximo das cartas que n�o ser�o apagadas"
L� m
Se m = "" Seja m "999999999"

@ChamaRotinas

chama @login
chama @descobreNumCartas
Escreve "Marcando cartas a serem apagadas..."

Seja q 0
Seja r 1
@trataUmaCarta
Observa Teclado t
Se t <> 0
L� u &
Escreve q &
Escreve " de " &
Escreve n &
Escreve " Cartas marcadas"
Fim Se
Se u="#27" Desvia @fim
Se o="t" Chama @deletaCarta
Se o="t" Desvia @Pulo1
     Seja d 0
     Chama @analisaTamanhoDaCarta
     Se d = 0 Chama @analisaTopoDaCarta
     Se d = 1 Chama @deletaCarta
@Pulo1
     Soma r 1
     Se r <= n Desvia @trataUmaCarta

@fim
Escreve "Apagando cartas marcadas... Finalizando..."
Chama @logout

Escreve "N�mero de cartas apagadas   " &
Escreve q
Escreve "fim de processamento"
L� &
Termina

**************************************************
*  rotina que executa o login no servidor remoto
**************************************************
@login

Escreve "Informe o nome do servidor POP3 a acessar"
L� j

internet Inicia
conecta #1 j ssl 995
Escreve "Conex�o realizada"
L� #1 i
Escreve Mudo i

Escreve "Informe sua conta"
L� c

Seja x "user "
Concatena x c
Escreve #1 x
L� #1 i
Escreve Mudo i

Se i =* "+" Desvia @ok1
Escreve "Conta errada"
Desvia @fim

@ok1
Escreve "Informe sua senha"
L� Senha s

Seja x "pass "
Concatena x s
Escreve #1 x
L� #1 i
Escreve Mudo i

Se i =* "+" Desvia @ok2
Escreve "Senha errada"
Desvia @fim

@ok2
Retorna

****************************************************
*   rotina que descobre o n�mero de cartas
****************************************************
@descobreNumCartas

Escreve #1 "stat"
L� #1 i
Escreve Mudo i

Seja x i
Chama @extraiPalavra
Chama @extraiPalavra
Seja n p
Escreve "N�mero de cartas no servidor   " &
Escreve n
retorna

****************************************************
*   rotina que analisa o tamanho de uma carta
****************************************************
@analisaTamanhoDaCarta

Seja x "list "
Concatena x r
Escreve #1 x
L� #1 i
Escreve Mudo i

Seja x i
Chama @extraiPalavra
Chama @extraiPalavra
Chama @extraiPalavra

Se p > m Seja d 1
Retorna

****************************************************
*   rotina que executa a finaliza��o
****************************************************
@logout

Escreve #1 "quit"
L� #1 i
Escreve Mudo i

Fecha #1
Internet Termina
Retorna

**************************************************
*  rotina que verifica se a pessoa e' indesejada
*  Para isso busca a linha que cont�m From:
**************************************************
@analisaTopoDaCarta

Seja x "top "
Concatena x r
Concatena x " 0"
Escreve #1 x
Bipa 1

@leTopo
     L� #1 i
     Se i = "." Retorna
     Seja i Maiusc i
     Se i =* "FROM:" Chama @testaIndesejavel
     Desvia @leTopo

***

@testaIndesejavel
    Escreve Mudo i
    Abre #2 a

@leArq
    L� #2 l
    Checa s
    Se s <> 0 Desvia @arqFim
    Seja l Maiusc l
    Se N�o i *=* l Desvia @leArq

    * se achou, marca para deletar e sai
    Seja d 1

@arqFim
    Fecha #2
    Retorna


*******************************
*  rotina que deleta uma carta
*******************************
@deletaCarta

Seja x "dele "
Concatena x r
Escreve #1 x
Bipa 1

L� #1 i
Escreve Mudo i

Soma q 1
Retorna

*********************************************************
* rotina que tira a primeira palavra de x jogando-a em p
*********************************************************
@extraiPalavra

Seja x Trim x
Seja p x
Seja k Pos " " x
Se k <= 0 Retorna
Soma k -1
Copia p x 1 k
Soma k 2
Copia x x k 999
Retorna
