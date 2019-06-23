*Apresenta��o
escreve "Script : TESTAR ARQUIVOS CONVERTIDOS"
escreve mudo "Autor: Bernard Condorcet"
escreve ""

*Vari�veis
*Programa a ser utilizado
    p := "c:\winvox\midiavox.exe "
*Diret�rio de trabalho
    d := "c:\winvox\cdmp3\wavmp3"

*Procedimentos
telaLimpa()
testaAplicativo()
testaDiretorio()
inicioTeste()
termina "Script terminado"

*--------------------------------------------------------*

fun��o telaLimpa ()
    cor 14
    fundo 1
    tela limpa
fim fun��o

fun��o testaAplicativo ()
    busca x p
    se x = ""
        escreve "O programa MIDIAVOX n�o foi encontrado em seu sistema"
        termina "Script cancelado"
    fim se
fim fun��o

fun��o testaDiretorio()
    busca x d
    se d = ""
        escreve "Diret�rio de trabalho n�o existe"
        termina "Script cancelado"
    sen�o
        dir troca d
    fim se
fim fun��o

fun��o inicioTeste()
    busca a "*.MP3"
    se a = ""
        termina "O diret�rio n�o contem arquivos tipo MP3"
    fim se
    enquanto a <> ""
        seja a TRIM a
        escreve "Irei abrir o arquivo : "&
        escreve a
        auxiliar := p + a
        executa auxiliar
        bipa
        bipa
        busca a PROXIMO
    fim enquanto
    escreve "�ltimo arquivo"
    termina "Script terminado"
fim fun��o
