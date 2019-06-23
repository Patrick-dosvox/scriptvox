* Apagador de Espa�os em branco
* Autor: Tiago Melo Casal
* Em: 11/10/2002 (fechado as aspas da linha 37 em 20/08/2014, erro informado pelo Scripvox 5.5)
*Convers�o para scripvox 6.4 por Patrick Barboza
*Em 21/11/2018
************************************************************************
* Vari�veis usadas:
* a
* c
* d
* e
* l
* n
* s
* u
* w
* v
* y
* z
************************************************************************



y := "C:\$$$.$$$"
z := "           Apagador de Espa�os em branco"
Tela Limpa
Tela Normal
Escreve z
Escreve

@Novamente
d := 0
Seja e ""
Seja s 0
Seja u 0

@Op��es
Escreve "Op��es: I - apaga espa�os do in�cio das linhas; F - Apaga"
Escreve "espa�os do fim das linhas; E - Apaga os espa�os das linhas"
Escreve "que s� contiverem espa�os."
L� a &
Se a="e" Desvia @DelEspLinha
Se a="f" Desvia @DelEspFim
Se a="i" Desvia @DelEspIn�cio
Se a="#27" Escreve "Tchau"
Se a="#27" Termina Mudo
desvia @Op��es

@DelEspIn�cio
Chama @NomeDoArquivo
Escreve "Digite o n�mero de espa�os que apagarei, se existirem nos"
Escreve "in�cios das linhas"
L� n
Se n="" Escreve "Desistiu"
Se n="" Termina Mudo

Chama @AbreArquivos

Enquanto w < n
Concatena e " "
Seja w Tamanho e
Fim Enquanto

@ApagaEspa�oNoIn�cio
Observa Teclado r
Se r <> 0
L� &
Escreve s &
Escreve " de " &
Escreve u &
Escreve " Linhas"
Fim Se
L� #1 l
Checa v
Se v <> 0 Desvia @Acabou
*Se d>="500" Bipa 1
*Se d>="500" Seja d 0
Soma s 1
Seja t Tamanho l
Copia c l 1 n
Se c=e
Soma n 1
Copia x l n t
Subtrai n 1
Escreve #2 x
SeN�o
Escreve #2 l
Fim Se
*Soma d 1
Desvia @ApagaEspa�oNoIn�cio

@DelEspFim
Chama @NomeDoArquivo

Chama @AbreArquivos

@ApagaEspa�oNoFim
Observa Teclado r
Se r <> 0
L� &
Escreve s &
Escreve " de " &
Escreve u &
Escreve " Linhas"
Fim Se
L� #1 l
Checa v
Se v <> 0 Desvia @Acabou
*Se d>="100" Bipa 1
*Se d>="100" Seja d 0
Soma s 1
Seja t Tamanho l
Se t=0 Escreve #2 l
Se t=0 Soma d 1
Se t=0 Desvia @ApagaEspa�oNoFim
Repete w t
Concatena e " "
Fim Repete
Se l=e Escreve #2 l
*Se l=e Soma d 1
Se l=e Desvia @ApagaEspa�oNoFim
Copia e l t t
Enquanto e=" "
Subtrai t 1
Seja e ""
Copia e l t t
Fim Enquanto
Seja e ""
Copia e l 1 t
Se l <> e
Escreve #2 e
Sen�o
Escreve #2 l
Fim Se
*Soma d 1
Seja e ""
Desvia @ApagaEspa�oNoFim

@DelEspLinha
Chama @NomeDoArquivo

Chama @AbreArquivos

@ApagaEspa�oNaLinha
Observa Teclado r
Se r <> 0
L� &
Escreve s &
Escreve " de " &
Escreve u &
Escreve " Linhas"
Fim Se
L� #1 l
Checa v
Se v <> 0 Desvia @Acabou
*Se d>="100" Bipa 1
*Se d>="100" Seja d 0
Soma s 1
Seja t Tamanho l
Repete w t
Concatena e " "
Fim Repete
Se l=e
Substitui l " " ""
Escreve #2 l
Sen�o
Escreve #2 l
Fim Se
*Soma d 1
Seja e ""
Seja w 0
Desvia @ApagaEspa�oNaLinha

@Acabou
Fecha #1
Fecha #2
Remove a
Renomeia y a
Escreve "Opera��o Conclu�da"
Escreve
Escreve "Deseja apagar espa�os de outro arquivo?"
L� p &
Se p="s"
Tela Limpa
Tela Normal
Escreve Mudo z
Escreve
Desvia @Novamente
Fim Se
Escreve "Tchau"
Termina Mudo

@NomeDoArquivo
Escreve "Digite o nome do arquivo"
L� a
Se a="" Escreve "Desistiu"
Se a="" Termina Mudo
Retorna

@AbreArquivos
Abre #1 a
@QuantasLinhas
    L� #1 l
    Checa v
    Se v <> 0 Fecha #1
    Se v <> 0 Desvia @ContinuaAbreArquivos
Soma u 1
Desvia @QuantasLinhas
@ContinuaAbreArquivos
Remove y &
Abre #1 a
Abre #2 y &
Retorna
