*JOGO PEDRA, PAPEL OU TESOURA
randomiza
seja y 0
seja z 0
escreve "Este � o jogo PEDRA, PAPEL OU TESOURA."
escreve "Digite seu nome:"
le n
escreve "Muito bem,"&
escreve n&
@pergunta
escreve "voc� sabe jogar?"
le p&
se p == "s" desvia @jogar
se p == "n" desvia @ajuda
se p = "#27" aciona "alt+f4""
desvia @pergunta
@jogar
seja r rand 3
@op��es
tela limpa
escreve "Qual � a sua op��o,"
escreve n&
escreve "?"
le o&
se o = "#0#59"
@ajuda
escreve "O jogo usa 3 objetos: 1 pedra 2 papel 3 tesoura. A pedra"
escreve "quebra a tesoura e � embrulhada pelo papel; o papel embrulha"
escreve "a pedra e � cortado pela tesoura; a tesoura corta o papel"
escreve "e � quebrada pela pedra. Voc� escolhe um objeto e o computador"
escreve "escolhe um tamb�m. Se os objetos forem iguais h� um empate;"
escreve "se forem diferentes um perde e o outro ganha de acordo com"
escreve "a explica��o inicial. COMANDOS: 1- pedra, 2- papel, 3- tesoura;"
escreve "p- pontua��o; f1- ajuda; �sk- fim."
desvia @op��es
fim se
se o == "p"
escreve n&
escreve y
escreve "COMPUTADOR"
escreve z
desvia @op��es
fim se
se o = "#27" aciona "alt+f4"
se o = 1 desvia @conferir
se o = 2 desvia @conferir
se o = 3 desvia @conferir
escreve "op��o inv�lida"
desvia @op��es
@conferir
se r = 0 seja b "pedra"
se r = 1 seja b "papel"
se r = 2 seja b "tesoura"
se o = 1 seja a "pedra"
se o = 2 seja a "papel"
se o = 3 seja a "tesoura"
seja v rand 2
se v = 0
escreve "eu joguei"&
escreve b
escreve "voc� jogou"&
escreve a
fim se
se v = 1
escreve "voc� jogou"&
escreve a
escreve "eu joguei"&
escreve b
fim se
se a = b
seja w rand 5
se w = 0 escreve "nem voc� nem eu"
se w = 1 escreve "nem eu nem voc�"
se w = 2 escreve "empatamos"
se w = 3 escreve "n�s empatamos"
se w = 4 escreve "tudo igual nessa"
desvia @jogar
fim se
se a = "pedra"
se b = "papel" desvia @computador
se b = "tesoura" desvia @humano
fim se
se a = "papel"
se b = "tesoura" desvia @computador
se b = "pedra" desvia @humano
fim se
se a = "tesoura"
se b = "pedra" desvia @computador
se b = "papel" desvia @humano
fim se
@computador
soma z 1
subtrai y 1
seja c rand 13
se c = 0 escreve "eu ganhei"
se c = 1 escreve "voc� perdeu"
se c = 2 escreve "voc� n�o est� com nada"
se c = 3 escreve "que jogada de mestre!"
se c = 4 escreve "jogou muito mal"
se c = 5 escreve "acho que voc� n�o sabe jogar!"
se c = 6 escreve "melhor sorte na pr�xima"
se c = 7 escreve "acho que voc� est� com azar hoje"
se c = 8 escreve "aprendeu como � que se joga?"
se c = 9 escreve "eu sou um g�nio!"
se c = 10 escreve "eu sou de mais!"
se c = 11 escreve "eu sou o m�ximo!"
se c = 12 escreve "eu jogo muito!"
desvia @jogar
fim se
@humano
soma y 1
subtrai z 1
seja h rand 13
se h = 0 escreve "eu perdi"
se h = 1 escreve "voc� ganhou"
se h = 2 escreve "voc� venceu"
se h = 3 escreve "parab�ns, voc� ganhou!"
se h = 4 escreve "parab�ns, voc� venceu!"
se h = 5 escreve "voc� fez uma �tima jogada!"
se h = 6 escreve "por essa eu n�o esperava"
se h = 7 escreve "eu estava distra�do"
se h = 8 escreve "joguei mal"
se h = 9 escreve "jogada de sorte"
se h = 10 escreve "sorte de principiante"
se h = 11 escreve "acho que voc� est� aprendendo a jogar"
se h = 12 escreve "voc� s� pode estar roubando"
desvia @jogar
fim se
