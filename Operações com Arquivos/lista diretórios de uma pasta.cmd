* mostra os subdiret�rios de uma pasta
* Autor: Antonio e Junior
* Em 13/11/2000
*Modificado por: Cleverson Casarin Uliana; em 10 de Mar�o de 2005

busca d DIR
escreve "Estou no diret�rio "
escreve d

escreve "informe o diret�rio"
l� n
dir troca n

escreve "Listagem dos subdiret�rios"
busca a DIR "*.*"
@loop
    se a = "" desvia @fimDosArquivos
    escreve a
    busca a PROXIMO
    desvia @loop

@fimDosArquivos
