* Lista os nomes dos arquivos de um certo diret�rio
* Autor: Antonio e Junior
* Em 13/11/2000

escreve "informe o diret�rio"
l� d
dir troca d
busca a "*.*"
@loop
    se a = "" desvia @fimDosArquivos
    escreve a
    busca a PROXIMO
    desvia @loop

@fimDosArquivos
