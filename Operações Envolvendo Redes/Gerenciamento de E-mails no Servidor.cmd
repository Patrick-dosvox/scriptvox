* Cartas eletr�nicas
* Autor: Tiago Melo Casal
* Em: 14/05/2004



Escreve "Cartas eletr�nicas"
@QualASuaOp��o
Escreve
Escreve "Qual a sua op��o? " &
L� o &
Se o="#27" Escreve "Tchau!"
Se o="#27" Termina Mudo
Se o="c" Desvia @Configura��o
Se o="i" Desvia @DeletaCartasIndesej�veis
Se o="r" Desvia @Tr�sResumo
Se o="t" Desvia @DeletaTodasAsCartas
Escreve "Op��o inv�lida. As op��es s�o:"
Escreve "C - Configura��o"
Escreve "I - Deleta cartas indesej�veis"
Escreve "R - Tr�s resumo"
Escreve "T - Deleta todas as cartas"
Escreve "Escape - Termina"
Desvia @QualASuaOp��o
