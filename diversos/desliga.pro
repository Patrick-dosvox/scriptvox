*Script para desligamento autom�tico do sistema"
*Criado por:
*Eduardo J�lio



Escreve "Este script permite a voc� definir um tempo para o desligamento"&
Escreve "do sistema."
@inicio
p := "Minutos."
Escreve "qual sua op��o?"
Escreve "Tecle F1 para ajuda"


le o &
Se o = "#0#59" desvia @Op��es
se o = "d" desvia @desligar
Se o = "r" desvia @reiniciar
se o = "#27" desvia @fim
Se o = "a" desvia @anular
desvia @inicio

@Op��es
Escreve "A: anular uma programa��o anterior;"
Escreve "D: desligar o sistema;"
escreve "R: reiniciar o sistema;"
Escreve "Esc: Terminar."
desvia @inicio


@anular
executa "shutdown -a" &
escreve "Sua programa��o anterior foi cancelada."
desvia @inicio

@reiniciar
escreve "escreva o n�mero em minutos a� o desligamento."
Escreve "exemplo: 60"
le t
se t = "" desvia @inicio
t := t * 60
s := "shutdown -r -f -t "
s := s + t
Executa s&
t := t / 60
t := t + p
Escreve "O Sistema ser� desligado em:"
escreve t
Desvia @fim

@desligar
Escreve "Digite o n�mero de minutos at� o desligamento."
escreve "Exemplo: "&
escreve "60"
le t
t := t * 60
s := "shutdown -s -f -t "
s := s + t
executa s&
t := t / 60
Escreve "Ok. O sistema ser� desligado em: "&
t := t + p
Escreve t
Desvia @fim



@fim
termina  "At� a pr�xima."
Termina mudo
