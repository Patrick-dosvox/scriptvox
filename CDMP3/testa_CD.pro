*Informa��es de um CD
*A listagem completa MCI � encontrada no HELP do Turbo Pascal ou Delphi

@inicia

t := ""
MCI t "Status CDAUDIO length"

se t <> ""
    ESCREVE "Dura��o total do CD"
    Escreve t
    MCI n "Status CDAUDIO number of tracks"
    escreve ""
    ESCREVE "N�mero de trilhas gravadas neste CD"
    ESCREVE n
sen�o
    escreve "O CD � virgem ou a unidade de CD est� vazia"
fim se
termina mudo
