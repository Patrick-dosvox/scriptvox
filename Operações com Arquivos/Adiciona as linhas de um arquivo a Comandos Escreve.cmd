* Adiciona as linhas de um arquivo entre o comando escreve "" num Script
* Autor: Tiago Melo Casal
* Em: 07/09/2002



escreve "Digite o nome do arquivo de entrada"
l� e
abre #1 e
escreve "Digite o nome do arquivo de sa�da"
l� s
abre #2 s &

@L�
seja a "escreve ""
l� #1 l
checa c
se c <> 0
fecha #1
fecha #2
escreve "Fim"
termina mudo
fim se

concatena a l
concatena a """
escreve #2 a
desvia @L�
