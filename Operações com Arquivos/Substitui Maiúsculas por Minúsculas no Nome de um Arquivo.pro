* Muda as letras de nome de arquivos de um diret�rio de mai�sculas para
* min�sculas
* Autor: Tiago Melo Casal
* Em: 10/05/2004



Busca o Dir "*.*"
Escreve "Digite o caminho do diret�rio, cujo os arquivos passarei seus"
Escreve "nomes de mai�sculas para min�sculas:"
L� d
Se d="" Seja d o
Dir Troca d
Busca a "*.*"
@ProcuraArquivos
Se a="" Desvia @Termino
Seja t a
Chama @TrocaDeMai�scPr�Min�sc
Busca a Proximo
Desvia @ProcuraArquivos

@Termino
Escreve "Feito!"
Dir Troca o
Termina Mudo

@TrocaDeMai�scPr�Min�sc
Substitui t "A" "a"
Substitui t "�" "�"
Substitui t "�" "�"
Substitui t "�" "�"
Substitui t "�" "�"
Substitui t "�" "�"
Substitui t "B" "b"
Substitui t "C" "c"
Substitui t "�" "�"
Substitui t "D" "d"
Substitui t "E" "e"
Substitui t "�" "�"
Substitui t "�" "�"
Substitui t "�" "�"
Substitui t "�" "�"
Substitui t "F" "f"
Substitui t "G" "g"
Substitui t "H" "h"
Substitui t "�" "�"
Substitui t "I" "i"
Substitui t "�" "�"
Substitui t "�" "�"
Substitui t "�" "�"
Substitui t "J" "j"
Substitui t "K" "k"
Substitui t "L" "l"
Substitui t "M" "m"
Substitui t "�" "�"
Substitui t "N" "n"
Substitui t "�" "�"
Substitui t "O" "o"
Substitui t "�" "�"
Substitui t "�" "�"
Substitui t "�" "�"
Substitui t "�" "�"
Substitui t "P" "p"
Substitui t "Q" "q"
Substitui t "R" "r"
Substitui t "S" "s"
Substitui t "T" "t"
Substitui t "�" "�"
Substitui t "�" "�"
Substitui t "�" "�"
Substitui t "U" "u"
Substitui t "�" "�"
Substitui t "V" "v"
Substitui t "W" "w"
Substitui t "X" "x"
Substitui t "Y" "y"
Substitui t "�" "�"
Substitui t "Z" "z"
Substitui t "�" "�"
Substitui t "�" "�"
Substitui t "�" "�"
Substitui t "�" "�"
Substitui t "�" "�"
Renomeia a t
Retorna
