*Apresenta��o
escreve "Script : LAME vers�o 3.92 MMX"
escreve mudo "Consulte: http://www.mp3dev.org"
escreve mudo "Autor: Bernard Condorcet"
escreve ""

*Vari�veis
*Programa a ser utilizado
    p := "c:\windows\lame.exe"
*Linha de comando / par�metros a serem utilizados
    l := "command /c c:\windows\lame -h"
*Diret�rio de trabalho
    d := "c:\winvox\cdmp3\wavmp3"

*Procedimentos
telaLimpa()
testaConversor()
testaDiretorio()
inicioConversao()
termina "Script terminado"

*--------------------------------------------------------*

fun��o telaLimpa ()
    cor 14
    fundo 1
    tela limpa
fim fun��o

fun��o testaConversor ()
    busca x p
    se x = ""
        escreve "O programa conversor MP3 n�o est� instalado em seu sistema"
        termina "Script cancelado"
    fim se
fim fun��o

fun��o testaDiretorio ()
    busca x d
    se d = ""
        escreve "Diret�rio de trabalho n�o existe"
        escreve "Script cancelado"
        termina mudo
    sen�o
        dir troca d
    fim se
fim fun��o

fun��o inicioConversao ()
    busca a "*.WAV"
    se a = ""
        termina "O diret�rio n�o contem arquivos tipo WAV"
    fim se
    enquanto a <> ""
        escreve "Aguarde, irei converter o arquivo : "&
        escreve a
        auxiliar := l + " "
        auxiliar := auxiliar + a
        a := maiusc (a)
        SUBSTITUI a ".WAV" ".MP3"
        auxiliar := auxiliar + " "
        auxiliar := auxiliar + a
        executa auxiliar
        bipa 1
        busca a PROXIMO
    fim enquanto
    escreve "Arquivo(s) gerado(s) com sucesso"
    termina "Script terminado"
fim fun��o
