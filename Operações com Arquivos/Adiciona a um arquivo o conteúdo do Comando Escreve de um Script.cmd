* Adiciona em um arquivo o conte�do do comando escreve de um Script
* Autor: Tiago Melo Casal
* Em: 07/09 /2002



escreve "Digite o nome do arquivo de entrada"
l� e
abre #1 e
escreve "Digite o nome do arquivo de sa�da"
l� s
abre #2 s &

@L�
l� #1 l
checa c
se c <> 0
fecha #1
fecha #2
escreve "Fim"
termina mudo
fim se
se l =* "escreve" desvia @RetiraEscreve
desvia @L�

@RetiraEscreve
seja k pos "escreve" l
soma k 1
substitui l "escreve mudo " "
substitui l "escreve " "
substitui l "escreve" "
substitui l " &" "
substitui l "&" "
seja m tamanho l
se m <= "1" desvia @L�
subtrai m 1
copia n l k m
escreve #2 n
desvia @L�
