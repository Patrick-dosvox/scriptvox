*Script para desligamento autom�tico do sistema"
*Criado por:
*Eduardo J�lio



Escreve "Este script permite a voc� definir um tempo para o desligamento"&
Escreve "do sistema."
Escreve "observa��o:"

Escreve "Este script foi desenvolvido para Windows XP."



@inicio
seja p "Minutos."
Escreve "qual sua op��o?"
Escreve "Tecle F1 para ajuda"


le o&
Se o = "#0#059" desvia @Op��es
se o = "d" desvia @desligar
Se o = "r" desvia @reiniciar
se o = "#27" desvia @fim
Se o = "a" desvia @anular
@desvia @inicio

@Op��es
Escreve "A: anular uma programa��o anterior;"
Escreve "D: desligar o sistema;"
escreve "R: reiniciar o sistema;"
Escreve "Esc: Terminar."
se o = "" desvia @inicio
se o <> "" desvia @inicio
desvia @inicio


@anular
seja s "shutdown -a"
executa s&
escreve "Sua programa��o anterior foi cancelada."
desvia @fim

@reiniciar
escreve "escreva o n�mero em minutos a� o desligamento."
Escreve "exemplo: 60"
le t
multiplica t 60
seja s "shutdown -r -f -t "
concatena s t
Executa s&
divide t 60
concatena t p
Escreve "O Sistema ser� desligado em:"
escreve t
Desvia @fim

@desligar
Escreve "Digite o n�mero de minutos at� o desligamento."
escreve "Exemplo: "&
escreve "60"
le t
multiplica t 60
seja s "shutdown -s -f -t "
concatena s t
executa s&
divide t 60
Escreve "Ok. O sistema ser� desligado em: "&
concatena t p
Escreve t
Desvia @fim



@fim
Escreve "At� apr�xima."
executa "c:\winvox\dosvox.exe"&
Termina mudo
