escreve "Qual o diret�rio das m�sicas a tocar?"
L� d
busca x dir d
se x = "" Termina "Diret�rio n�o achado. Saindo."
dir TROCA d

escreve "Qual a m�scara das m�sicas a tocar?"
L� m
busca b m
@loop
    se b = "" desvia @fimDosArquivos
    escreve Mudo b
    Toca b
    busca b PROXIMO
    desvia @loop

@fimDosArquivos
Termina
