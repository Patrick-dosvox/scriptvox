* PROGRAMA DE ADIVINHAR O NUMERO PROPOSTO PELO COMPUTADOR
* Programador em Clipper: AIRTON SIMILLE MARQUES
* CRIADO EM: MAR�O DE 1996
* READAPITADO EM: JUNHO DE 1996
* Programador em scripvox: Cleverson Casarin Uliana
* Criado em: 16 de Agosto de 2002

escreve ""
toca "c:\dosvox\som\sortevox\so_abre.wav"
escreve mudo "SORTEVOX - O JOGO DA SORTE"
escreve mudo "Digite um n�mero de 00 a 99. Tecle ESC para sair."
toca "c:\dosvox\som\sortevox\so_sorte.wav"
@partida
seja v 0
randomiza
seja n rand 100
@qualnum
escreve ""
toca "c:\dosvox\som\sortevox\so_plim.wav"
escreve mudo "Qual � o n�mero?"
toca "c:\dosvox\som\sortevox\so_senha.wav"
l� t
se t = "#27"
desvia @fim
sen�o
se t = ""
desvia @fim
sen�o
se t < n
escreve mudo "hahahahahahahahahaha!!!"
toca "c:\dosvox\som\sortevox\so_ria.wav"
escreve mudo "O n�mero � maior!"
toca "c:\dosvox\som\sortevox\so_maior.wav"
soma v 1
desvia @qualnum
sen�o
se t > n
escreve mudo "hahahahahahahahahaha!!!"
toca "c:\dosvox\som\sortevox\so_ria.wav"
escreve mudo "O n�mero � menor!"
toca "c:\dosvox\som\sortevox\so_menor.wav"
soma v 1
desvia @qualnum
sen�o
se t = n
soma v 1
se v = "1" desvia @primeiratentativa
escreve mudo "plafplafplafplafplafplafplaf!!!"
toca "c:\dosvox\som\sortevox\so_aplau.wav"
escreve mudo "Parab�ns cara! Voc� acertou! Fez "&
toca "c:\dosvox\som\sortevox\so_certo.wav"
escreve v &
escreve mudo " tentativas!"
toca "c:\dosvox\som\sortevox\so_tenta.wav"
desvia @partida
fim se

@primeiratentativa
escreve mudo "plafplafplafplaf plafplafplaf plafplaf plaf!!!!!!!"
toca "c:\dosvox\som\sortevox\so_aplau.wav"
escreve mudo "parab�ns cara! voc� acertou! Na primeira tentativa!!!"
toca "c:\dosvox\som\sortevox\so_1vez.wav"
desvia @partida

@fim
escreve ""
toca "c:\dosvox\som\sortevox\so_bomba.wav"
escreve mudo "Desistiu? O n�mero era "&
toca "c:\dosvox\som\sortevox\so_fimjo.wav"
escreve n
escreve mudo "Tente sempre sua sorte. To aqui te esperando. Tchau"
toca "c:\dosvox\som\sortevox\so_fim.wav"
termina mudo
