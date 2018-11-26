@inicia

*Apresenta��o
escreve "Script : LAME vers�o 3.92 MMX"
escreve mudo "Consulte: http://www.mp3dev.org"
escreve mudo "Autor: Bernard Condorcet"
escreve ""

*Vari�veis
*Programa a ser utilizado
    seja p "c:\windows\lame.exe"
*Linha de comando / par�metros a serem utilizados
    seja l "command /c c:\windows\lame -h"
*Diret�rio de trabalho
    seja d "c:\winvox\cdmp3\wavmp3"

*Procedimentos
chama @telaLimpa
chama @testaConversor
chama @testaDiretorio
chama @inicioConversao
termina mudo

*--------------------------------------------------------*

@telaLimpa
    cor 14
    fundo 1
    tela limpa
retorna

@testaConversor
    busca x p
    se x = ""
        escreve "O programa conversor MP3 n�o est� instalado em seu sistema"
        escreve "Script cancelado"
        termina mudo
    fim se
retorna

@testaDiretorio
    busca x d
    se d = ""
        escreve "Diret�rio de trabalho n�o existe"
        escreve "Script cancelado"
        termina mudo
    sen�o
        dir troca d
    fim se
retorna

@inicioConversao
    busca a "*.WAV"
    se a = ""
        escreve "O diret�rio n�o contem arquivos tipo WAV"
        retorna
    fim se

    enquanto a <> ""

        escreve "Aguarde, irei converter o arquivo : "&
        escreve a

        CONCATENA l " "
        CONCATENA l a

        seja a MAIUSC a
        SUBSTITUI A ".WAV" ".MP3"

        CONCATENA l " "
        CONCATENA l a
transfere de l
*        executa l
*        chama @esperaComClek

    seja l "command /c c:\windows\lame -h"

        busca a PROXIMO

    fim enquanto

    escreve "Arquivo(s) gerado(s) com sucesso"
    escreve "Script terminado"
retorna

*Procedimento extra
@esperaComClek
espera 1
captura T�TULO t
seja x t
enquanto x = t
bipa 1
espera 1
captura T�TULO x
fim enquanto
retorna
