* Ver se um arquivo possui as mesmas linhas que o outro
* Autor: Tiago Melo Casal
* Em: 30/04/2003



Escreve "Verifica se dois arquivos possui as mesmas linhas"
Escreve

@In�cio
Seja c 25
Seja l 0
Seja r "C:\$ResuVrf.$$$"
Seja y 0
Escreve "Digite o nome do arquivo matriz"
L� m
Se m="" Desvia @Desistiu
Escreve "Digite o nome do arquivo que ser� posto em prova:"
L� p
Se p <> "" Desvia @ContaAsLinhas
@Desistiu
Escreve "Desistiu. Tchau."
Termina Mudo

@ContaAsLinhas
abre #1 p
@QuantasLinhas
    l� #1 w
    checa h
    se h <> 0 Fecha #1
    se h <> 0 desvia @AbreArquivos
Soma y 1
Desvia @QuantasLinhas

@AbreArquivos
Remove r &
Abre #1 p
Abre #2 m
Abre #3 r &
Escreve #3 "Arquivos verificados:"
Escreve #3 p
Escreve #3 m

@Verifica
Soma l 1
Se l >= c
Bipa 1
Soma c 25
Fim Se
Observa Teclado z
Se z <> 0
L� &
Escreve l &
Escreve " de " &
Escreve y &
Escreve " Linhas"
Fim Se
L� #1 e
Checa h
Se h <> 0 Desvia @Fim
Repete j l
L� #2 s
Checa h
Se h <> 0 Desvia @N�oEncontrada
Fim Repete
Se N�o s = e Desvia @ContinuaVerifica��o
Fecha #2
Abre #2 m
Desvia @Verifica
@ContinuaVerifica��o
L� #2 s
Checa h
Se h <> 0 Desvia @N�oEncontrada
Se N�o s = e Desvia @ContinuaVerifica��o
@N�oEncontrada
Escreve #3 "Linha " &
Escreve #3 l &
Escreve #3 " n�o encontrada"
Fecha #2
Abre #2 m
Desvia @Verifica
@Fim
Fecha #1
Fecha #2
Fecha #3
Escreve "Conclu�do."
Escreve
Escreve "Deseja comparar mais arquivos?"
L� b &
Se b <> "s" Escreve "Tchau"
Se b <> "s" Termina Mudo
Desvia @In�cio
