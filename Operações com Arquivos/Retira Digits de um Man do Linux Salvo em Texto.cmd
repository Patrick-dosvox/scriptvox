* Retira digits de um Man do Linux salvo em texto
* Autor: Tiago Melo Casal
* Em: 15/06/2004



Escreve "Retira Digits de um Man do Linux salvo em texto"
Escreve "Digite o nome do arquivo"
L� a
Se a="" Escreve "Desistiu"
Se a="" Termina Mudo
Abre #1 a
Remove "C:\$$$.$$$" &
Abre #2 "C:\$$$.$$$" &
@L�
L� #1 l
Checa c
Se c <> 0 Desvia @Terminou
Enquanto N�o l *=* "#"
L� #1 l
Checa c
Se c <> 0 Desvia @Terminou
Fim Enquanto
