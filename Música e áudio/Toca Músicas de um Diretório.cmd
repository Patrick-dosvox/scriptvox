escreve "Qual o diret�rio das m�sicas a tocar?"
L� d
dir troca d
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
