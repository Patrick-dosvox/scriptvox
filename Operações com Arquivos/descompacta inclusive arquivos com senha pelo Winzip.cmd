**************
*script que descompacta um arquivo zip atrav�s do winzip
*Autor: Paulo Donizete GArdinalli Filho
*em: 7/12/2001
***********************************
* Modificado por: Tiago Melo Casal
* Id�ia de: Caldeira (Odin) (Aamon)
* Em: 03/01/2002
escreve "descompactador de arquivos"
@main
escreve "informe o nome do arquivo a descompactar:"
le a

se a=""
    escreve "Desistiu"
    desvia @fim
fim se

escreve "informe o diret�rio onde deseja descompactar:"
le b

se b=""
    escreve "Desistiu"
    desvia @fim
fim se

escreve "o arquivo a descompactar tem senha?"
le s &
se s="s" desvia @comsenha
se s="n" desvia @semsenha
desvia @erro
@semsenha
seja p "c:\arquiv~1\winzip\winzip32.exe "
concatena p a
executa p&
espera 2
aciona "shift+e"
espera 2
digita b
espera 2
aciona "enter"
espera 5
aciona "alt+f4"
desvia @fim
@erro
escreve "voc� deve digitar algo v�lido para o programa prosseguir!"
desvia @main
@comsenha
escreve "qual a senha?"
le senha x
se x="" desvia @erro
seja p "c:\arquiv~1\winzip\winzip32.exe "
concatena p a
executa p&
espera 2
aciona "shift+e"
espera 2
digita b
espera 2
aciona "enter"
espera 2
digita x
espera 5
aciona "alt+f4"
desvia @fim
@fim
escreve "fim!"

termina mudo
