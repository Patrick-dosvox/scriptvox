* Programa que junta palavras partidas por hifem
* Autor: Tiago Melo Casal
* Em: 22/08/2003



*** In�cio ***

escreve "Junta palavras"
@novaTentativa
escreve "Informe o nome do arquivo"
l� a
se a="" escreve "Desistiu"
se a="" termina mudo
seja c 0
Seja x 0
Seja y 0

abre #1 a
@QuantasLinhas
    l� #1 l
    checa s
    se s <> 0 Fecha #1
    se s <> 0 desvia @TrataArquivos
Soma x 1
Desvia @QuantasLinhas

*** Trata os arquivos ***

@TrataArquivos
abre #1 a
remove "c:\$$$.$$$" &
abre #2 "c:\$$$.$$$" &

@loop
se y >="100" bipa 1
se y>="100" seja y 0
Observa Teclado o
Se o <> 0
L� &
Escreve c &
Escreve " de " &
Escreve x &
Escreve " Linhas"
Fim Se
    l� #1 l
    checa s
    se s <> 0 desvia @acabou

    Se N�o l *=* "- " Desvia @Continua
Seja t Tamanho l
    Seja p Pos "- " l
    Seja i p
    Subtrai i 1
    Se i=1
    Chama @VerSe�Letra

@Continua
    escreve #2 l
Soma c 1
soma y 1
    desvia @loop

*** Finaliza o tratamento dos arquivos ***

@acabou
fecha #1
fecha #2
replica "C:\$$$.$$$" a
escreve "Arquivo foi atualizado"
remove "C:\$$$.$$$" &
escreve
escreve "Deseja processar outro arquivo?"
@pergunta
l� a &
se a <> "s" desvia @termina
desvia @novaTentativa

*** Fim, fecha o script ***

@termina
escreve "Tchau"
termina mudo

*** Procura peda�os palavra

@VerSe�Letra
Seja x "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ����������"
Seja y "������������������������������������"
Concatena x y
Seja z Tamanho x
Seja y 0
Enquanto N�o v=q
Soma y 1
Se y > z Retorna
Copia q x y y
Fim Enquanto
* A terminar
Retorna
