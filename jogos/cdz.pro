*jogo de combate CDZ1
*criado por L�O AUGUSTO TARILONTE JUNIOR
*iniciado em 22/04/2004
*finalizado em 22/05/2004
randomiza
seja d 0
seja $vlutador 500
seja $voponente 500
seja y 5
seja $lutador "Seia"
escreve "voc� est� na arena da guerra gal�tica. escolha seu lutador."
@escolhaoponente
seja $escolheoponente rand 5
se $escolheoponente = 0 seja $oponente "Seia"
se $escolheoponente = 1 seja $oponente "Shiri�"
se $escolheoponente = 2 seja $oponente "Shwn"
se $escolheoponente = 3 seja $oponente "Hyoga"
se $escolheoponente = 4 seja $oponente "Hycke"
se d = 1 desvia @batalha
seja d 0
@escolha
escreve $lutador
le mudo $escolhelutador&
se $escolhelutador = "#27" aciona "alt+f4"
se $escolhelutador = "#0#72" desvia @cima1
se $escolhelutador = "#0#80" desvia @baixo1
se $escolhelutador = "#13" desvia @batalha
escreve "op��o inv�lida"
desvia @escolha
@cima1
soma y 1
se y = 6 seja y 5
desvia @lista
@baixo1
subtrai y 1
se y = 0 seja y 1
@lista
se y = 5 seja $lutador "Seia"
se y = 4 seja $lutador "Shiri�"
se y = 3 seja $lutador "Shwn"
se y = 2 seja $lutador "Hyoga"
se y = 1 seja $lutador "Hycke"
desvia @escolha
@batalha
se $lutador = $oponente
seja d 1
desvia @escolhaoponente
fim se
escreve "come�a a batalha!"
escreve $lutador
escreve "versos"
escreve $oponente
@op��esdooponente
se $vlutador < 1
escreve $lutador
escreve "foi derrotado"
termina
fim se
se $voponente < 1
escreve $oponente
escreve "foi derrotado"
termina
fim se
seja $opcaodooponente rand 15
se $opcaodooponente = 0 desvia @bloqoponente
se $opcaodooponente = 1 desvia @socooponente
se $opcaodooponente = 2 desvia @chuteoponente
se $opcaodooponente = 3 desvia @socosoponente
se $opcaodooponente = 4 desvia @chutesoponente
se $opcaodooponente = 5 desvia @sococomsaltooponente
se $opcaodooponente = 6 desvia @chutecomsaltooponente
se $opcaodooponente = 7 desvia @socoabaixadooponente
se $opcaodooponente = 8 desvia @chuterasteirooponente
se $opcaodooponente = 9 desvia @poder1oponente
se $opcaodooponente = 10 desvia @poder2oponente
se $opcaodooponente = 11 desvia @saltooponente
se $opcaodooponente = 12 desvia @agaixamentooponente
se $opcaodooponente = 13 desvia @esquerdaoponente
se $opcaodooponente = 14 desvia @direitaoponente
@op��es
escreve $oponente
escreve $golpeoponente
escreve "qual � sua op��o?"
le $opcao&
se $opcao = "#27" aciona "alt+f4"
se $opcao = "#0#72" desvia @salto
se $opcao = "#0#75" desvia @esquerda
se $opcao = "#0#80" desvia @agaixamento
se $opcao = "#0#77" desvia @direita
se $opcao = "#0#59" desvia @ajuda
se $opcao = "1" desvia @soco
se $opcao = "2" desvia @chute
se $opcao = "3" desvia @socos
se $opcao = "4" desvia @chutes
se $opcao = "5" desvia @sococomsalto
se $opcao = "6" desvia @chutecomsalto
se $opcao = "7" desvia @socoagaixado
se $opcao = "8" desvia @chuterasteiro
se $opcao = "9" desvia @poder1
se $opcao = "0" desvia @poder2
se $opcao = "v" desvia @vida
se $opcao = "r" desvia @op��es
se $opcao = "b" desvia @bloqueio
se $opcao = "!" desvia @vgolpe
escreve "op��o inv�lida"
desvia @op��es
@bloqoponente
seja $anula2 0
seja $golpeoponente "armou um bloqueio"
desvia @op��es
@socooponente
seja $anula2 2
seja $golpeoponente "desferiu um soco "
seja $adjetivo2 rand 8
se $adjetivo2 = 0 seja $complemento2 "arrasador"
se $adjetivo2 = 1 seja $complemento2 "fort�ssimo"
se $adjetivo2 = 2 seja $complemento2 "incr�vel"
se $adjetivo2 = 3 seja $complemento2 "detonante"
se $adjetivo2 = 4 seja $complemento2 "poderoso"
se $adjetivo2 = 5 seja $complemento2 "potente"
se $adjetivo2 = 6 seja $complemento2 "fabuloso"
se $adjetivo2 = 7 seja $complemento2 "fant�stico"
concatena $golpeoponente $complemento2
seja $vgo rand 250
seja $potenciaoponente 25
desvia @op��es
@chuteoponente
seja $anula2 2
seja $golpeoponente "aplicou um chute "
seja $adjetivo2 rand 8
se $adjetivo2 = 0 seja $complemento2 "arrasador"
se $adjetivo2 = 1 seja $complemento2 "fort�ssimo"
se $adjetivo2 = 2 seja $complemento2 "incr�vel"
se $adjetivo2 = 3 seja $complemento2 "detonante"
se $adjetivo2 = 4 seja $complemento2 "poderoso"
se $adjetivo2 = 5 seja $complemento2 "potente"
se $adjetivo2 = 6 seja $complemento2 "fabuloso"
se $adjetivo2 = 7 seja $complemento2 "fant�stico"
concatena $golpeoponente $complemento2
seja $vgo rand 225
seja $potenciaoponente 50
desvia @op��es
@socosoponente
seja $anula2 2
seja $golpeoponente "desfechou uma sequ�ncia de socos "
seja $adjetivo2 rand 8
se $adjetivo2 = 0 seja $complemento2 "arrasadores"
se $adjetivo2 = 1 seja $complemento2 "fort�ssimos"
se $adjetivo2 = 2 seja $complemento2 "incr�veis"
se $adjetivo2 = 3 seja $complemento2 "detonantes"
se $adjetivo2 = 4 seja $complemento2 "poderosos"
se $adjetivo2 = 5 seja $complemento2 "potentes"
se $adjetivo2 = 6 seja $complemento2 "fabulosos"
se $adjetivo2 = 7 seja $complemento2 "fant�sticos"
concatena $golpeoponente $complemento2
seja $vgo rand 100
seja $potenciaoponente 175
desvia @op��es
@chutesoponente
seja $anula2 2
seja $golpeoponente "mandou uma sequ�ncia de chutes "
seja $adjetivo2 rand 8
se $adjetivo2 = 0 seja $complemento2 "arrasadores"
se $adjetivo2 = 1 seja $complemento2 "fort�ssimos"
se $adjetivo2 = 2 seja $complemento2 "incr�veis"
se $adjetivo2 = 3 seja $complemento2 "detonantes"
se $adjetivo2 = 4 seja $complemento2 "poderosos"
se $adjetivo2 = 5 seja $complemento2 "potentes"
se $adjetivo2 = 6 seja $complemento2 "fabulosos"
se $adjetivo2 = 7 seja $complemento2 "fant�sticos"
concatena $golpeoponente $complemento2
seja $vgo rand 75
seja $potenciaoponente 200
desvia @op��es
@sococomsaltooponente
seja $anula2 2
seja $golpeoponente "deu um salto desferindo um soco "
seja $adjetivo2 rand 8
se $adjetivo2 = 0 seja $complemento2 "arrasador"
se $adjetivo2 = 1 seja $complemento2 "fort�ssimo"
se $adjetivo2 = 2 seja $complemento2 "incr�vel"
se $adjetivo2 = 3 seja $complemento2 "detonante"
se $adjetivo2 = 4 seja $complemento2 "poderoso"
se $adjetivo2 = 5 seja $complemento2 "potente"
se $adjetivo2 = 6 seja $complemento2 "fabuloso"
se $adjetivo2 = 7 seja $complemento2 "fant�stico"
concatena $golpeoponente $complemento2
seja $vgo rand 150
seja $potenciaoponente 125
desvia @op��es
@chutecomsaltooponente
seja $anula2 2
seja $golpeoponente "saltou aplicando um chute "
seja $adjetivo2 rand 8
se $adjetivo2 = 0 seja $complemento2 "arrasador"
se $adjetivo2 = 1 seja $complemento2 "fort�ssimo"
se $adjetivo2 = 2 seja $complemento2 "incr�vel"
se $adjetivo2 = 3 seja $complemento2 "detonante"
se $adjetivo2 = 4 seja $complemento2 "poderoso"
se $adjetivo2 = 5 seja $complemento2 "potente"
se $adjetivo2 = 6 seja $complemento2 "fabuloso"
se $adjetivo2 = 7 seja $complemento2 "fant�stico"
concatena $golpeoponente $complemento2
seja $vgo rand 125
seja $potenciaoponente 150
desvia @op��es
@socoabaixadooponente
seja $anula2 2
seja $golpeoponente "se abaixou e desferiu um soco de baixo para cima "
seja $adjetivo2 rand 8
se $adjetivo2 = 0 seja $complemento2 "arrasador"
se $adjetivo2 = 1 seja $complemento2 "fort�ssimo"
se $adjetivo2 = 2 seja $complemento2 "incr�vel"
se $adjetivo2 = 3 seja $complemento2 "detonante"
se $adjetivo2 = 4 seja $complemento2 "poderoso"
se $adjetivo2 = 5 seja $complemento2 "potente"
se $adjetivo2 = 6 seja $complemento2 "fabuloso"
se $adjetivo2 = 7 seja $complemento2 "fant�stico"
concatena $golpeoponente $complemento2
seja $vgo rand 200
seja $potenciaoponente 75
desvia @op��es
@chuterasteirooponente
seja $anula2 2
seja $golpeoponente "aplicou uma rasteira "
seja $adjetivo2 rand 8
se $adjetivo2 = 0 seja $complemento2 "arrasadora"
se $adjetivo2 = 1 seja $complemento2 "fort�ssima"
se $adjetivo2 = 2 seja $complemento2 "incr�vel"
se $adjetivo2 = 3 seja $complemento2 "detonante"
se $adjetivo2 = 4 seja $complemento2 "poderosa"
se $adjetivo2 = 5 seja $complemento2 "potente"
se $adjetivo2 = 6 seja $complemento2 "fabulosa"
se $adjetivo2 = 7 seja $complemento2 "fant�stica"
concatena $golpeoponente $complemento2
seja $vgo rand 175
seja $potenciaoponente 100
desvia @op��es
@poder1oponente
seja $anula2 2
se $oponente = "Seia"
seja $golpeoponente "me d� sua for�a pegazus"
desvia @vp1
fim se
se $oponente = "Shiri�"
seja $golpeoponente "c�lera do drag�o"
desvia @vp1
fim se
se $oponente = "Shwn"
seja $golpeoponente "corrente nebulosa"
desvia @vp1
fim se
se $oponente = "Hyoga"
seja $golpeoponente "p� de diamante"
desvia @vp1
fim se
se $oponente = "Hycke"
seja $golpeoponente "ave f�nix"
fim se
@vp1
seja $vgo rand 50
seja $potenciaoponente 225
desvia @op��es
@poder2oponente
seja $anula2 2
se $oponente = "Seia"
seja $golpeoponente "meteoro de pegazus"
desvia @vp2
fim se
se $oponente = "Shiri�"
seja $golpeoponente "drag�o nascente"
desvia @vp2
fim se
se $oponente = "Shwn"
seja $golpeoponente "tempestade nebulosa"
desvia @vp2
fim se
se $oponente = "Hyoga"
seja $golpeoponente "trov�o aurora"
desvia @vp2
fim se
se $oponente = "Hycke"
seja $golpeoponente "golpe fantasma de f�nix"
fim se
@vp2
seja $vgo rand 25
seja $potenciaoponente 250
desvia @op��es
@saltooponente
seja $anula2 0
seja $golpeoponente "saltou"
seja $vgo rand 137
seja $potenciaoponente 0
desvia @op��es
@agaixamentooponente
seja $anula2 0
seja $golpeoponente "se abaixa"
seja $vgo rand 137
seja $potenciaoponente 0
desvia @op��es
@esquerdaoponente
seja $anula2 0
seja $golpeoponente "se desvia para a esquerda"
seja $vgo rand 137
seja $potenciaoponente 0
desvia @op��es
@direitaoponente
seja $anula2 0
seja $golpeoponente "se desvia para a direita"
seja $vgo rand 137
seja $potenciaoponente 0
desvia @op��es
@bloqueio
seja $anula1 0
seja $golpelutador "armou um bloqueio"
desvia @c�lculo
@soco
seja $anula1 1
seja $golpelutador "desferiu um soco "
seja $adjetivo2 rand 8
se $adjetivo2 = 0 seja $complemento2 "arrasador"
se $adjetivo2 = 1 seja $complemento2 "fort�ssimo"
se $adjetivo2 = 2 seja $complemento2 "incr�vel"
se $adjetivo2 = 3 seja $complemento2 "detonante"
se $adjetivo2 = 4 seja $complemento2 "poderoso"
se $adjetivo2 = 5 seja $complemento2 "potente"
se $adjetivo2 = 6 seja $complemento2 "fabuloso"
se $adjetivo2 = 7 seja $complemento2 "fant�stico"
concatena $golpelutador $complemento2
seja $vgl rand 250
seja $potencialutador 25
desvia @c�lculo
@chute
seja $anula1 1
seja $golpelutador "aplicou um chute "
seja $adjetivo2 rand 8
se $adjetivo2 = 0 seja $complemento2 "arrasador"
se $adjetivo2 = 1 seja $complemento2 "fort�ssimo"
se $adjetivo2 = 2 seja $complemento2 "incr�vel"
se $adjetivo2 = 3 seja $complemento2 "detonante"
se $adjetivo2 = 4 seja $complemento2 "poderoso"
se $adjetivo2 = 5 seja $complemento2 "potente"
se $adjetivo2 = 6 seja $complemento2 "fabuloso"
se $adjetivo2 = 7 seja $complemento2 "fant�stico"
concatena $golpelutador $complemento2
seja $vgl rand 225
seja $potencialutador 50
desvia @c�lculo
@socos
seja $anula1 1
seja $golpelutador "desfechou uma sequ�ncia de socos "
seja $adjetivo2 rand 8
se $adjetivo2 = 0 seja $complemento2 "arrasadores"
se $adjetivo2 = 1 seja $complemento2 "fort�ssimos"
se $adjetivo2 = 2 seja $complemento2 "incr�veis"
se $adjetivo2 = 3 seja $complemento2 "detonantes"
se $adjetivo2 = 4 seja $complemento2 "poderosos"
se $adjetivo2 = 5 seja $complemento2 "potentes"
se $adjetivo2 = 6 seja $complemento2 "fabulosos"
se $adjetivo2 = 7 seja $complemento2 "fant�sticos"
concatena $golpelutador $complemento2
seja $vgl rand 100
seja $potencialutador 175
desvia @c�lculo
@chutes
seja $anula1 1
seja $golpelutador "mandou uma sequ�ncia de chutes "
seja $adjetivo2 rand 8
se $adjetivo2 = 0 seja $complemento2 "arrasadores"
se $adjetivo2 = 1 seja $complemento2 "fort�ssimos"
se $adjetivo2 = 2 seja $complemento2 "incr�veis"
se $adjetivo2 = 3 seja $complemento2 "detonantes"
se $adjetivo2 = 4 seja $complemento2 "poderosos"
se $adjetivo2 = 5 seja $complemento2 "potentes"
se $adjetivo2 = 6 seja $complemento2 "fabulosos"
se $adjetivo2 = 7 seja $complemento2 "fant�sticos"
concatena $golpelutador $complemento2
seja $vgl rand 75
seja $potencialutador 200
desvia @c�lculo
@sococomsalto
seja $anula1 1
seja $golpelutador "deu um salto desferindo um soco "
seja $adjetivo2 rand 8
se $adjetivo2 = 0 seja $complemento2 "arrasador"
se $adjetivo2 = 1 seja $complemento2 "fort�ssimo"
se $adjetivo2 = 2 seja $complemento2 "incr�vel"
se $adjetivo2 = 3 seja $complemento2 "detonante"
se $adjetivo2 = 4 seja $complemento2 "poderoso"
se $adjetivo2 = 5 seja $complemento2 "potente"
se $adjetivo2 = 6 seja $complemento2 "fabuloso"
se $adjetivo2 = 7 seja $complemento2 "fant�stico"
concatena $golpelutador $complemento2
seja $vgl rand 150
seja $potencialutador 125
desvia @c�lculo
@chutecomsalto
seja $anula1 1
seja $golpelutador "saltou aplicando um chute "
seja $adjetivo2 rand 8
se $adjetivo2 = 0 seja $complemento2 "arrasador"
se $adjetivo2 = 1 seja $complemento2 "fort�ssimo"
se $adjetivo2 = 2 seja $complemento2 "incr�vel"
se $adjetivo2 = 3 seja $complemento2 "detonante"
se $adjetivo2 = 4 seja $complemento2 "poderoso"
se $adjetivo2 = 5 seja $complemento2 "potente"
se $adjetivo2 = 6 seja $complemento2 "fabuloso"
se $adjetivo2 = 7 seja $complemento2 "fant�stico"
concatena $golpelutador$complemento2
seja $vgl rand 125
seja $potencialutador 150
desvia @c�lculo
@socoagaixado
seja $anula1 1
seja $golpelutador "se abaixou e desferiu um soco de baixo para cima "
seja $adjetivo2 rand 8
se $adjetivo2 = 0 seja $complemento2 "arrasador"
se $adjetivo2 = 1 seja $complemento2 "fort�ssimo"
se $adjetivo2 = 2 seja $complemento2 "incr�vel"
se $adjetivo2 = 3 seja $complemento2 "detonante"
se $adjetivo2 = 4 seja $complemento2 "poderoso"
se $adjetivo2 = 5 seja $complemento2 "potente"
se $adjetivo2 = 6 seja $complemento2 "fabuloso"
se $adjetivo2 = 7 seja $complemento2 "fant�stico"
concatena $golpelutador $complemento2
seja $vgl rand 200
seja $potencialutador 75
desvia @c�lculo
@chuterasteiro
seja $anula1 1
seja $golpelutador "aplicou uma rasteira "
seja $adjetivo2 rand 8
se $adjetivo2 = 0 seja $complemento2 "arrasadora"
se $adjetivo2 = 1 seja $complemento2 "fort�ssima"
se $adjetivo2 = 2 seja $complemento2 "incr�vel"
se $adjetivo2 = 3 seja $complemento2 "detonante"
se $adjetivo2 = 4 seja $complemento2 "poderosa"
se $adjetivo2 = 5 seja $complemento2 "potente"
se $adjetivo2 = 6 seja $complemento2 "fabulosa"
se $adjetivo2 = 7 seja $complemento2 "fant�stica"
concatena $golpelutador $complemento2
seja $vgl rand 175
seja $potencialutador 100
desvia @c�lculo
@poder1
seja $anula1 1
se $lutador = "Seia"
seja $golpelutador "me d� sua for�a pegazus"
desvia @vp3
fim se
se $lutador = "Shiri�"
seja $golpelutador "c�lera do drag�o"
desvia @vp3
fim se
se $lutador = "Shwn"
seja $golpelutador "corrente nebulosa"
desvia @vp3
fim se
se $lutador = "Hyoga"
seja $golpelutador "p� de diamante"
desvia @vp3
fim se
se $lutador = "Hycke"
seja $golpelutador "ave f�nix"
fim se
@vp3
seja $vgl rand 50
seja $potencialutador 225
desvia @c�lculo
@poder2
seja $anula1 1
se $lutador = "Seia"
seja $golpelutador "meteoro de pegazus"
desvia @vp4
fim se
se $lutador = "Shiri�"
seja $golpelutador "drag�o nascente"
desvia @vp4
fim se
se $lutador = "Shwn"
seja $golpelutador "tempestade nebulosa"
desvia @vp4
fim se
se $lutador = "Hyoga"
seja $golpelutador "trov�o aurora"
desvia @vp4
fim se
se $lutador = "Hycke"
seja $golpelutador "golpe fantasma de f�nix"
fim se
@vp4
seja $vgl rand 25
seja $potencialutador 250
desvia @c�lculo
@salto
seja $anula1 0
seja $golpelutador "saltou"
seja $vgl rand 137
seja $potencialutador 0
desvia @c�lculo
@agaixamento
seja $anula1 0
seja $golpelutador "se abaixa"
seja $vgl rand 137
seja $potencialutador 0
desvia @c�lculo
@esquerda
seja $anula1 0
seja $golpelutador "se desvia para a esquerda"
seja $vgl rand 137
seja $potencialutador 0
desvia @c�lculo
@direita
seja $anula1 0
seja $golpelutador "se desvia para a direita"
seja $vgl rand 137
seja $potencialutador 0
@c�lculo
se $anula1 = $anula2
escreve "os 2 executam movimentos defenssivos"
desvia @op��esdooponente
fim se
escreve $lutador
se $golpelutador = "armou um bloqueio"
escreve $golpelutador
divide $potenciaoponente 4
escreve $lutador
escreve "perde"
escreve $potenciaoponente
escreve "pontos de vida"
subtrai $vlutador $potenciaoponente
desvia @op��esdooponente
fim se
se $golpeoponente = "armou um bloqueio"
escreve $golpelutador
divide $potencialutador 4
escreve $oponente
escreve "perde"
escreve $potencialutador
escreve "pontos de vida"
subtrai $voponente $potencialutador
desvia @op��esdooponente
fim se
escreve $golpelutador
se $vgl > $vgo
subtrai $voponente $potencialutador
escreve $oponente
escreve "foi atingido por"
escreve $lutador
escreve "perdendo"
escreve $potencialutador
escreve "pontos de vida"
desvia @op��esdooponente
fim se
se $vgl < $vgo
subtrai $vlutador $potenciaoponente
escreve $oponente
escreve "atinge"
escreve $lutador
escreve "que perde"
escreve $potenciaoponente
escreve "pontos de vida"
desvia @op��esdooponente
fim se
@vida
escreve $lutador
escreve $vlutador
escreve $oponente
escreve $voponente
desvia @op��es
//fim se
@ajuda
escreve "comandos:"
escreve "1=soco;2=chute;3=sequ�ncia de socos;4=sequ�ncia"
escreve "de chutes;5=salto com soco;6salto com chute;7soco de"
escreve "baixo para cima;8chute rasteiro;9poder1;0poder2;"
escreve "cima=salto;baixo=agaixamento;esquerda desvio para"
escreve "a esquerda;direita=desvio parqa a direita;b="
escreve "bloqueio;r=repete fala;v=pontos de vida;f1=ajuda;"
escreve "esc=fim"
desvia @op��es
@vgolpe
escreve $vgo
desvia @op��es
