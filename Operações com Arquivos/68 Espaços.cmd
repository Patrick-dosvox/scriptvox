* Script que verifica se h� linhas em um arquivo com 68 espa�os
* Autor: Tiago Melo Casal
* Em: 22/02/2004
* Atualizado em: 13/03/2004



Escreve "Digite o nome do arquivo a verificar se h� linhas com 68 espa�os:"
L� a
Se a="" Escreve "Desistiu! Fim."
Se a="" Termina Mudo

Abre #1 a
Seja e "                                                                    "
Seja n 0
Seja s "Linhas com 68 espa�os: "

L� #1 l
Checa c
Se c <> 0 Fecha #1
Se c <> 0 Escreve "Arquivo em branco."
Se c <> 0 Termina Mudo
Enquanto N�o c <> 0
Soma n 1
Se l =* e Concatena s n
Se l =* e Concatena s ", "
L� #1 l
Checa c
Se c <> 0 Fecha #1
Fim Enquanto

Seja t Tamanho s
Se t="23" Escreve "N�o h� linhas com 68 espa�os. Tchau!"
Se t="23" Termina Mudo

Subtrai t 2
Copia i s 1 t
Concatena i "."
Escreve i
Escreve "Deseja copiar para �rea de transfer�ncia? " &
L� p &
Se p="s" Transfere de i
Escreve "Deseja encerrar? " &
L� p &
Se p="s" Escreve "Tchau!"
Termina Mudo
