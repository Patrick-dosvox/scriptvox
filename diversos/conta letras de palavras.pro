* Conta letras de diversas palavras
* Autor: Antonio e Junior
* Em 27/7/2001
* Reescrito para o scripvox 6.4 por Patrick Barboza
* Em 12/11/2018

apresenta ()
pegainforma��es ()

fun��o apresenta ()
    escreve "Tecle palavras, a �ltima ser� fim"
fim fun��o

fun��o pegainforma��es ()
    le t
    contaletras (t)
fim fun��o

fun��o contaletras (texto)
    l := tamanho texto
    escreve "possui " &
    escreve l &
    escreve " letras"
    se texto = "fim" termina mudo
    pegainforma��es ()
fim fun��o
