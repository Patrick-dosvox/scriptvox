* Jogo - Assalto ao mestre Arsenal
* Revista Drag�o Brasil - n�mero 11 ano 1 - Trama Editora Ltda.
* O texto do jogo, est� em outro arquivo, que � recomendado estar no
* diret�rio onde encontra-se esse arquivo
* Texto digitalizado por Lu�s Ant�nio Campos
* Autor: Tiago Melo Casal
* Em: 26/05/2002


t := "              ASSALTO AO MESTRE ARSENAL"

*** In�cio ***

tela limpa
escreve t
escreve
escreve
escreve "      Bem Vindo!"
bipa
@Op��oAouC
escreve
escreve "   Tecle A, para que lhe seja apresentado os fatos e personagens"
escreve "   ou tecle C, para pular a apresenta��o."
l� o &
se o="a" desvia @Apresenta��o
se o="c" desvia @SuaAventuraCome�ou
desvia @Op��oAouC

*** Apresenta��o ***

@Apresenta��o
tela limpa
escreve mudo t
escreve
L�Texto ("@apresenta��o")

*** Come�o da Aventura ***

@SuaAventuraCome�ou
tela limpa
escreve "    Sua aventura come�ou!"
bipa

@novatentativa
tela limpa
escreve mudo t
escreve
L�Texto ("@SuaAventuraCome�ou")
@Op��es1
escreve
escreve "    Se deseja convidar Parx para participar do roubo, tecle 1"
escreve "    Se n�o confia no cl�rigo e prefere agir sozinho, tecle 2"
@EsperaTeclarOp��o1
l� o &
se o="1" desvia @24
se o="2" desvia @37
se o="#0#59" chama @Ajuda
se o="#0#59" desvia @EsperaTeclarOp��o1
se o="#0#60" desvia @NovaTentativa
se o="#0#61" desvia @Op��es1
escreve "   Op��o inv�lida. F1 ajuda"
desvia @EsperaTeclarOp��o1

@2
tela limpa
escreve mudo t
escreve
L�Texto ("@2")
@Op��es2
escreve
escreve "    Se quiser seguir o conselho de Parx, tecle 1. Prefere usar sua"
escreve "    estrat�gia costumeira, protegido pela escurid�o? Tecle 2"
@EsperaTeclarOp��o2
l� o &
se o="1" desvia @32
se o="2" desvia @26
se o="#0#59" chama @Ajuda
se o="#0#59" desvia @EsperaTeclarOp��o2
se o="#0#60" desvia @2
se o="#0#61" desvia @Op��es2
escreve "   Op��o inv�lida. F1 ajuda"
desvia @EsperaTeclarOp��o2

@3
tela limpa
escreve mudo t
escreve
L�Texto ("@3")
@Op��es3
escreve
escreve "    Se ainda n�o investigou o cetro e quer faz�-lo agora, tecle 1"
escreve "    Se prefere abandonar a sala, tecle 2"
@EsperaTeclarOp��o3
l� o &
se o="1" desvia @8
se o="2" desvia @20
se o="#0#59" chama @Ajuda
se o="#0#59" desvia @EsperaTeclarOp��o3
se o="#0#60" desvia @3
se o="#0#61" desvia @Op��es3
escreve "   Op��o inv�lida. F1 ajuda"
desvia @EsperaTeclarOp��o3

@4
tela limpa
escreve mudo t
escreve
L�Texto ("@4")
desvia @2

@5
tela limpa
escreve mudo t
escreve
L�Texto ("@5")
@Op��es5
escreve
escreve "    Se quer procurar armadilhas, tecle 1"
escreve "    Se quiser ignorar armadilhas e apenas abrir a porta, tecle 2"
@EsperaTeclarOp��o5
l� o &
se o="1" desvia @39
se o="2" desvia @30
se o="#0#59" chama @Ajuda
se o="#0#59" desvia @EsperaTeclarOp��o5
se o="#0#60" desvia @5
se o="#0#61" desvia @Op��es5
escreve "   Op��o inv�lida. F1 ajuda"
desvia @EsperaTeclarOp��o5

@6
tela limpa
escreve mudo t
escreve
L�Texto ("@6")
@Op��es6
escreve
escreve "    Se quiser dar uma escutadela na porta antes de tentar arromb�-la,"
escreve "    tecle 1. Se quiser voltar e pegar o caminho da esquerda, tecle 2"
escreve "    Se quiser poupar tempo e meter o p� na porta, tecle 3"
@EsperaTeclarOp��o6
l� o &
se o="1" desvia @25
se o="2" desvia @34
se o="3" desvia @31
se o="#0#59" chama @Ajuda
se o="#0#59" desvia @EsperaTeclarOp��o6
se o="#0#60" desvia @6
se o="#0#61" desvia @Op��es6
escreve "   Op��o inv�lida. F1 ajuda"
desvia @EsperaTeclarOp��o6

@7
tela limpa
escreve mudo t
escreve
L�Texto ("@7")
desvia @26

@8
tela limpa
escreve mudo t
escreve
L�Texto ("@8")
@Op��es8
escreve
escreve "    Se quer correr o risco e tocar o cajado, tecle 1"
escreve "    Ainda n�o investigou a estatueta e quer fazer agora? Tecle 2"
escreve "    Se quer sair da sala sem tocar em mais nada, tecle 3"
@EsperaTeclarOp��o8
l� o &
se o="1" desvia @11
se o="2" desvia @3
se o="3" desvia @20
se o="#0#59" chama @Ajuda
se o="#0#59" desvia @EsperaTeclarOp��o8
se o="#0#60" desvia @8
se o="#0#61" desvia @Op��es8
escreve "   Op��o inv�lida. F1 ajuda"
desvia @EsperaTeclarOp��o8

@9
tela limpa
escreve mudo t
escreve
L�Texto ("@9")
desvia @6

@10
tela limpa
escreve mudo t
escreve
L�Texto ("@10")
@Op��es10
escreve
escreve "    Se voc� aceita o convite de Parx para um assalto, tecle 1"
escreve "    se prefere deixar o homem seguir em paz, tecle 2"
@EsperaTeclarOp��o10
l� o &
se o="1" desvia @21
se o="2" desvia @4
se o="#0#59" chama @Ajuda
se o="#0#59" desvia @EsperaTeclarOp��o10
se o="#0#60" desvia @10
se o="#0#61" desvia @Op��es10
escreve "   Op��o inv�lida. F1 ajuda"
desvia @EsperaTeclarOp��o10

@11
tela limpa
escreve mudo t
escreve
////seja p "@11"
L�Texto ("@11")
escreve "     Fim de jogo."
Finaliza ()
escreve "     Se quiser comece novamente, mas fa�a outro caminho."
termina mudo

@12
tela limpa
escreve mudo t
escreve
////seja p "@12"
L�Texto ("@12")
desvia @26

@13
tela limpa
escreve mudo t
escreve
////seja p "@13"
L�Texto ("@13")
@Op��es13
escreve
escreve "    uma espada recurvada dos salteadores do deserto. Se quiser peg�-la,"
escreve "    tecle 1; uma lan�a prateada, com drag�es esculpidos no cabo. Se
escreve "    quiser agarr�-la, tecle 2; um elmo dourado com a forma de uma concha."
escreve "    Se quiser coloc�-lo, tecle 3; um colar de contas vermelhas. Para"
escreve "    peg�-lo, tecle 4"
@EsperaTeclarOp��o13
l� o &
se o="1" desvia @15
se o="2" desvia @19
se o="3" desvia @27
se o="4" desvia @33
se o="#0#59" chama @Ajuda
se o="#0#59" desvia @EsperaTeclarOp��o13
se o="#0#60" desvia @13
se o="#0#61" desvia @Op��es13
escreve "   Op��o inv�lida. F1 ajuda"
desvia @EsperaTeclarOp��o13

@14
tela limpa
escreve mudo t
escreve
////seja p "@14"
L�Texto ("@14")
@Op��es14
escreve
escreve "    Se quiser tentar abri-la, tecle 1"
escreve "    Se quiser tentar o outro corredor, tecle 2"
@EsperaTeclarOp��o14
l� o &
se o="1" desvia @28
se o="2" desvia @6
se o="#0#59" chama @Ajuda
se o="#0#59" desvia @EsperaTeclarOp��o14
se o="#0#60" desvia @14
se o="#0#61" desvia @Op��es14
escreve "   Op��o inv�lida. F1 ajuda"
desvia @EsperaTeclarOp��o14

@15
tela limpa
escreve mudo t
escreve
////seja p "@15"
L�Texto ("@15")
escreve "     Fim de jogo para voc�!"
Finaliza ()
termina "     Se quiser recomece!"

@16
tela limpa
escreve mudo t
escreve
////seja p "@16"
L�Texto ("@16")
@Op��es16
escreve
escreve "    Se quiser deixar a tarefa para Parx, tecle 1"
escreve "    Se quiser usar seu pr�prio poder, tecle 2"
@EsperaTeclarOp��o16
l� o &
se o="1" desvia @38
se o="2" desvia @5
se o="#0#59" chama @Ajuda
se o="#0#59" desvia @EsperaTeclarOp��o16
se o="#0#60" desvia @16
se o="#0#61" desvia @Op��es16
escreve "   Op��o inv�lida. F1 ajuda"
desvia @EsperaTeclarOp��o16

@17
tela limpa
escreve mudo t
escreve
////seja p "@17"
L�Texto ("@17")
escreve "     Fim de jogo!"
Finaliza ()
termina "     N�o desista.  Reinicie o jogo."

@18
tela limpa
escreve mudo t
escreve
////seja p "@18"
L�Texto ("@18")
desvia @2

@19
tela limpa
escreve mudo t
escreve
//seja p "@19"
L�Texto ("@19")
escreve "     Fim de jogo para voc�!"
Finaliza ()
termina "     Se quiser volte para recome�ar!"

@20
tela limpa
escreve mudo t
escreve
//seja p "@20"
L�Texto ("@20")
@Op��es20
escreve
escreve "    Se voc� quiser colar o ouvido � porta e escutar, tecle 1"
escreve "    Se acha que pode haver uma armadilha na porta, tecle 2"
@EsperaTeclarOp��o20
l� o &
se o="1" desvia @16
se o="2" desvia @29
se o="#0#59" chama @Ajuda
se o="#0#59" desvia @EsperaTeclarOp��o20
se o="#0#60" desvia @20
se o="#0#61" desvia @Op��es20
escreve "   Op��o inv�lida. F1 ajuda"
desvia @EsperaTeclarOp��o20

@21
tela limpa
escreve mudo t
escreve
//seja p "@21"
L�Texto ("@21")
@Op��es21
escreve
escreve "    Se quiser roubar a adaga, tecle 1"
escreve "    Se est� satisfeito com a bolsa de moedas, tecle 2"
@EsperaTeclarOp��o21
l� o &
se o="1" desvia @17
se o="2" desvia @18
se o="#0#59" chama @Ajuda
se o="#0#59" desvia @EsperaTeclarOp��o21
se o="#0#60" desvia @21
se o="#0#61" desvia @Op��es21
escreve "   Op��o inv�lida. F1 ajuda"
desvia @EsperaTeclarOp��o21

@22
tela limpa
escreve mudo t
escreve
escreve "  Convencido de que n�o h� ningu�m no aposento, voc� come�a a trabalhar"
escreve "com suas ferramentas. Mas n�o consegue dedicar-se � fechadura por muito"
escreve "tempo: a porta abre-se de repente pelo lado de dentro ! Infelizmente, seus"
escreve "ouvidos o tra�ram. Havia algu�m no aposento, um zumbi descarnado que"
escreve "aguardava ordens de seu mestre. O sil�ncio dos mortos-vivos o enganou e"
escreve "voc� paga com a vida, quando as garras do monstro enterram-se em sua"
escreve "garganta, antes que Parx consiga esconjur�-lo..."
escreve "     Fim de jogo para voc�!
Finaliza ()
termina "     Volte e fa�a novas op��es!"

@23
tela limpa
escreve mudo t
escreve
escreve "  Abrindo a porta, voc�s entram em uma pequena sala vazia, com outra"
escreve "porta na parede oposta, exatamente igual a anterior, mas desta vez"
escreve "destrancada. A nova porta conduz a um corredor que segue em frente at�"
escreve "terminar em uma parede, com uma tocha sobre um suporte. Aparentemente n�o"
escreve "h� sa�da deste pequeno labirinto. Ou h�? Tochas costumam servir de"
escreve "alavancas para salas secretas, mas tamb�m podem ativar armadilhas para"
escreve "espertinhos que pensarem nisso."
@Op��es23
escreve
escreve "    Se quiser mexer na tocha, tecle 1"
escreve "    Se acha melhor procurar armadilhas antes de mexer na tocha, tecle 2"
@EsperaTeclarOp��o23
l� o &
se o="1" desvia @13
se o="2" desvia @36
se o="#0#59" chama @Ajuda
se o="#0#59" desvia @EsperaTeclarOp��o23
se o="#0#60" desvia @23
se o="#0#61" desvia @Op��es23
escreve "   Op��o inv�lida. F1 ajuda"
desvia @EsperaTeclarOp��o23

@24
tela limpa
escreve mudo t
escreve
escreve "  Voc� ruma para o templo escondido onde Parx realiza seus cultos aos"
escreve "Deuses da Trapa�a, certo de que vai encontr�-lo tentando convencer seus"
escreve "seguidores a livrarem-se dos (bens materiais), doando-os � igreja."
escreve "Chegando l�, contudo, n�o encontra ningu�m."
escreve "  - Procurando por mim, Andrus?-diz uma voz sobre seu ombro. Voc� vira-se"
escreve "veloz e descobre o cl�rigo bem atr�s de voc�. Como o maldito era matreiro!"
escreve "Apenas um ladr�o muito experiente podia aproximar-se daquele jeito, pelas"
escreve "costas, de um outro ladr�o. Voc� olha para seu cajado, de apar�ncia"
escreve "inofensiva, mas sabe que � s� apar�ncia mesmo: tamb�m foi roubado da"
escreve "cole��o de Arsenal, e � uma arma m�gica poderosa, podendo transformar-se"
escreve "em uma destruidora ma�a de duas m�os. Voc� j� a viu em a��o,"
escreve "transformando cr�nios de ogres em pur�. Voc� explica seus planos a Parx."
escreve "Ele sorri e afaga o s�mbolo sagrado, dizendo:"
escreve "  - Certamente os deuses v�o nos ajudar nessa empreitada, amigo Andrus."
escreve "Mas tenho plena certeza de que a ajuda seria maior se o futuro chefe da"
escreve "Guilda fizesse certos votos de devo��o � causa da Trapa�a..."
escreve "  Entendendo o que ele tenta dizer, voc� garante que o culto de Parx"
escreve "ganhar� um novo templo e maiores contribui��es da Guilda quando a chefia"
escreve "mudar de m�os. Ele aceita o trato e voc�s partem em viagem. Ent�o voc�"
escreve "percebe que seu mico fugiu. Que diabos! Sob os efeitos da cerveja, o"
escreve "maldito adestrador  escolheu um animal ainda sem treinamento. Voc� saber�"
escreve "o que fazer com ele quando tornar-se o chefe. Mas, pensando bem, talvez o"
escreve "macaco n�o tenha fugido. Uma possibilidade atravessa sua mente, mas � t�o"
escreve "assustadora que voc� acha melhor nem pensar nela."
desvia @10

@25
tela limpa
escreve mudo t
escreve
escreve "  No estilo dos padr�es, voc� aproxima o ouvido da porta e concentra-se."
escreve "N�o consegue ouvir absolutamente nada. Voc� n�o tem d�vidas de que o"
escreve "aposento est� vazio."
@Op��es25
escreve
escreve "    Se quer for�ar a fechadura com suas ferramentas, tecle 1"
escreve "    Se quiser voltar e pegar o caminho da esquerda, tecle 2"
@EsperaTeclarOp��o25
l� o &
se o="1" desvia @22
se o="2" desvia @34
se o="#0#59" chama @Ajuda
se o="#0#59" desvia @EsperaTeclarOp��o25
se o="#0#60" desvia @25
se o="#0#61" desvia @Op��es25
escreve "   Op��o inv�lida. F1 ajuda"
desvia @EsperaTeclarOp��o25

@26
tela limpa
escreve mudo t
escreve
escreve "  Ocultos entre as rochas, voc�s esperam a chegada da noite."
escreve "  Com a per�cia dos ladr�es, ocultos pela escurid�o, voc�s se aproximam"
escreve "da torre Arsenal. Decidem que a melhor maneira de entrar � por uma das"
escreve "janelas do segundo pavimento. Voc� vai primeiro. A capa m�gica"
escreve "permite que suas m�os e p�s grudem � pedra, e voc� escala como se fosse"
escreve "uma aranha. Parx faz uso de seu pr�prio e incomum m�todo de escalada,"
escreve "transformando-se em macaco e subindo facilmente pela parede. Chegando �"
escreve "janela, voc�s desanimam ao descobrir que � protegida por grossas barras"
escreve "de ferro. Seria necess�ria a for�a de um poderoso guerreiro para"
escreve "dobr�-las. Ou magia."
escreve "  - E ent�o, Parx? Tem a� algum feiti�o que possa ajudar?"
escreve "- N�o sou um mago, amigo Andrus - retruca o macaquinho."
escreve "Meus poderes s�o um presente dos deuses por minha devo��o. Mas sim, creio"
escreve "que posso ajudar... � engra�ado ver o mico unindo as m�os e rezando, at�"
escreve "que o resultado de suas preces comece a surgir: as barras brilham com uma"
escreve "luz fantasmag�rica, e voc� assiste o metal se desmanchar diante de seus"
escreve "olhos!"
escreve "- Como fez isso? - voc� pergunta."
escreve "- N�o fiz nada amigo. Foram os deuses que, a meu pedido, envelheceram as"
escreve "grades mil anos."
escreve "  Contente por ter aquele cl�rigo do seu lado, voc� entra no aposento."
escreve "Tira da mochila sua pequena pedra m�gica luminosa, que lhe serve de"
escreve "lanterna, e dirige seu facho � volta: parece que parte da cole��o de"
escreve "Arsenal est� guardada aqui. As paredes est�o forradas com lan�as,"
escreve "alabardas, tridentes e outras armas de grande porte. Devem ser"
escreve "destruidoras em m�os de um guerreiro, mas n�o interessam a voc� ou a Parx."
escreve "  Procurando algo que valha a pena levar, sua aten��o se volta para dois"
escreve "objetos :"
@Op��es26
escreve
escreve "    Uma estatueta met�lica sobre uma mesa, no canto do quarto. Se quiser"
escreve "    peg�-la, tecle 1; Um cetro, suspenso na parede, tendo em sua ponta um"
escreve "    cristal transparente. Se quiser peg�-lo, tecle 2; Se prefere deixar"
escreve "    tudo onde est�, tecle 3"
@EsperaTeclarOp��o26
l� o &
se o="1" desvia @3
se o="2" desvia @8
se o="3" desvia @20
se o="#0#59" chama @Ajuda
se o="#0#59" desvia @EsperaTeclarOp��o26
se o="#0#60" desvia @26
se o="#0#61" desvia @Op��es26
escreve "   Op��o inv�lida. F1 ajuda"
desvia @EsperaTeclarOp��o26

@27
tela limpa
escreve mudo t
escreve
escreve "  Voc� coloca o elmo, e nada acontece. Esse elmo seria bem �til debaixo"
escreve "d'�gua, pois sua magia permite ao usu�rio respirar como se fosse um peixe,"
escreve "mas de nada adianta agora. Serve apenas para que Arsenal esmague suas"
escreve "pernas com o martelo, esperando poupar o precioso elmo..."
escreve "     Fim de jogo!"
Finaliza ()
termina "     Tente outra vez."

@28
tela limpa
escreve mudo t
escreve
escreve "  A porta est� bem trancada."
@Op��es28
escreve
escreve "    Se quiser usar suas ferramentas para destranc�-la, v� ao 9."
escreve "    Se quiser tentar o outro corredor, v� ao 6."
@EsperaTeclarOp��o28
l� o &
se o="1" desvia @9
se o="2" desvia @6
se o="#0#59" chama @Ajuda
se o="#0#59" desvia @EsperaTeclarOp��o28
se o="#0#60" desvia @28
se o="#0#61" desvia @Op��es28
escreve "   Op��o inv�lida. F1 ajuda"
desvia @EsperaTeclarOp��o28

@29
tela limpa
escreve mudo t
escreve
escreve "  Voc� examina a fechadura e come�a a cutuc�-la com seu estojo de"
escreve "ferramentas. Ao seu lado, Parx retoma a forma humana com um desabafo:"
escreve " - N�o acredito em meus olhos! Por onde anda sua antiga ast�cia, amigo"
escreve "Andrus? Por que est� procurando armadilhas no lado de dentro de uma porta?"
escreve "Francamente..."
escreve " Irritado com sua moment�nea incompet�ncia para o ramo, Parx avan�a e mete"
escreve "o p� na porta, escancarando-a, sem se preocupar com o que h� no outro"
escreve "lado. E logo se arrepende. A porta leva para um corredor, que a princ�pio"
escreve "parece vazio."
escreve "Apenas a princ�pio, porque da escurid�o surge um enorme c�o, um mastim"
escreve "realmente assustador, com presas demon�acas curvando-se para fora da boca."
escreve "Um c�o estranhamente silencioso."
escreve "Voc� saca o punhal e prepara-se para a luta, mas... seria sua imagina��o"
escreve "ou as costelas da criatura estavam expostas?"
escreve "Infelizmente n�o era imagina��o. Aquilo n�o era um c�o de guarda comum,"
escreve "mas sim um cad�ver animado, certamente invocado por Arsenal para proteger"
escreve "sua torre nesta noite t�o suspeita."
escreve "Despreparados para uma batalha contra um morto-vivo, voc�s n�o conseguem"
escreve "sobreviver ao toque pestilento das garras da fera..."
escreve
escreve "     Fim de jogo para voc�!"
Finaliza ()
termina "     Quer tentar de novo?"

@30
tela limpa
escreve mudo t
escreve
escreve "  Decidindo que as ferramentas para procurar armadilhas fariam barulho"
escreve "demais, voc� resolve arriscar."
escreve "Segura a ma�aneta, prende a respira��o e come�a a puxar a porta."
escreve "Um calafrio percorre suas costas quando voc� v� um arame se esticando da"
escreve "porta ao batente, e ouve um (clique). Voc� e Parx nem t�m tempo de gritar"
escreve "quando d�zias de lan�as mergulham do teto, perfurando seus corpos..."
escreve
escreve "     Fim de jogo."
Finaliza ()
termina "     Vai topar jogar de novo?"

@31
tela limpa
escreve mudo t
escreve
escreve "  Cansado de sutilezas, voc� se arma com a espada que pegou dos guardas e"
escreve "derruba a porta com um chute. A vis�o do enterior � aterradora: um cadaver"
escreve "ossudo que parece jogado em um canto olha para voc� e levanta-se, avan�ando"
escreve "para lutar."
escreve "  Parx segura seu medalh�o e prepara-se para esconjurar a criatura, mas"
escreve "voc� o det�m: est� farto desses monstros, e quer destroir pelo menos um"
escreve "deles com as pr�prias m�os. Veloz, em suas m�os, a espada decepa a cabe�a"
escreve "do morto-vivo, e depois o bra�o e o outro... At� que restem apenas peda�os."
escreve "  Voc� examina a sala em busca de algo importante, e encontra: uma chave"
escreve "pendurada na parede oposta. Com certeza o zumbi estava ali para guard�-la."
escreve "Pegando a chave, voc� e Parx decidem que n�o h� mais nada a fazer aqui e"
escreve "retomam � bifurca��o, pegando o corredor da esquerda."
escreve "  O corredor leva a uma porta trancada. Voc� experimenta a chave, e ela"
escreve "funciona: aporta se abre."
desvia @23

@32
tela limpa
escreve mudo t
escreve
escreve "  As id�ias de Parx s�o divertidas, e ele � bom com disfarces. Caber� a"
escreve "voc� inventar uma hist�ria convincente antes de bater � porta de Arsenal."
@Op��es32
escreve
escreve "    Se quiser apresentar-se como negociante de artefatos m�gicos, tecle 1"
escreve "    Se prefere agir sob o disfarce de emiss�rio da Guilda, tecle 2"
@EsperaTeclarOp��o32
l� o &
se o="1" desvia @7
se o="2" desvia @12
se o="#0#59" chama @Ajuda
se o="#0#59" desvia @EsperaTeclarOp��o32
se o="#0#60" desvia @32
se o="#0#61" desvia @Op��es32
escreve "   Op��o inv�lida. F1 ajuda"
desvia @EsperaTeclarOp��o32

@33
tela limpa
escreve mudo t
escreve
escreve "  Voc� agarra o colar de contas, reconhecendo-o como sendo parecido com"
escreve "aquele usado por um ranger amigo seu. As contas do colar s�o explosivas."
escreve "  Voc� arranca a maior delas e arremessa contra Arsenal, cobrindo os olhos"
escreve "para proteger-se da explos�o."
escreve "  Quando olha novamente, descobre Arsenal ainda de p�, com o peito"
escreve "fumegando."
escreve " - Pobre tolo! - diz ele. � preciso muito mais do que isso para acabar"
escreve "comigo."
escreve " - Ser� mesmo? - voc� pergunta, sorrindo, quando uma id�ia trai�oeira"
escreve "atravessa sua mente."
escreve "  Voc� toma outra conta do colar e arremessa... mas n�o contra Arsenal."
escreve "  Desta vez voc� faz pontaria no ch�o, entre seus p�s. Como voc� planejou,"
escreve "o ch�o n�o resiste e desaba levando Arsenal consigo."
escreve " - Muito engenhoso, amigo Andrus, diz Parx, aproximando-se da beirada do"
escreve "buraco e olhando l� embaixo. - Isso provavelmente n�o vai matar Arsenal,"
escreve "mas ir� det�-lo at� que estejamos longe."
escreve "  � melhor irmos logo, contudo."
escreve "  Ele est� certo."
desvia @35

@34
tela limpa
escreve mudo t
escreve
escreve "  O caminho da esquerda conduz voc�s por um corredor que, mais adiante,"
escreve "termina em uma pesada porta met�lica. Parece grossa demais, e n�o adiantaria"
escreve "tentar ouvir algo atr�s dela."
@Op��es34
escreve
escreve "    Se quiser procurar armadilhas na porta, tecle 1"
escreve "    Se quiser tentar abrir a porta, tecle 2"
escreve "    Se quiser tentar outro corredor, tecle 3"
@EsperaTeclarOp��o34
l� o &
se o="1" desvia @14
se o="2" desvia @28
se o="3" desvia @6
se o="#0#59" chama @Ajuda
se o="#0#59" desvia @EsperaTeclarOp��o34
se o="#0#60" desvia @34
se o="#0#61" desvia @Op��es34
escreve "   Op��o inv�lida. F1 ajuda"
desvia @EsperaTeclarOp��o34

@35
tela limpa
escreve mudo t
escreve
escreve "  Tendo vencido Arsenal, voc� Pode examinar sua cole��o"
escreve "com mais calma. Dentre uma infinidade de itens, voc�"
escreve "encontra o que parece ser um chap�u vulgar, mas � exatamente o"
escreve "que procurava."
desvia @40

@36
tela limpa
escreve mudo t
escreve
escreve "  A torre de Arsenal est� mesmo deixando voc� paran�ico,"
escreve "mas cuidado nunca � demais neste lugar. Com suas ferramentas,"
escreve "voc� fu�a a base da tocha. Descobre de fato um mecanismo,"
escreve "mas n�o sabe dizer se vai ativar uma armadilha ou uma porta"
escreve "secreta. Voc� ter� que arriscar."
desvia @13

@37
tela limpa
escreve mudo t
escreve
escreve "  Talvez n�o seja uma boa id�ia confiar em Methralian. Ele"
escreve "tem uma posi��o de prest�gio dentro da Guilda, e uma mudan�a de"
escreve "diretoria pode n�o ser de seu agrado. Achando mais prudente agir"
escreve "sem o cl�rigo, voc� parte na dire��o do castelo de Arsenal."
escreve "  Quando voc� come�a sua viagem, uma vozinha soa perto de seu"
escreve "ouvido:"
escreve " - Partindo para uma aventura sem seu colega, Aranha?"
escreve "� men��o de seu apelido no submundo, voc� se vira com a adaga"
escreve "em punho, pronto para atacar quem quer que seja. Mas n�o"
escreve "encontra ningu�m. Olha � volta, confuso, e descobre que est�"
escreve "mesmo sozinho. Sozinho, exceto por..."
escreve "  Voc� olha para o mico em seu ombro. Ele traz um sorriso"
escreve "em seu pequenino rosto."
escreve " - Parx ! - voc� grita, tentando acertar um tabefe no bicho. Ele"
escreve "se esquiva e pula para o ch�o, sendo logo envolvido por uma luz"
escreve "m�gica e distorcida; aos poucos, a forma de macaco desaparece"
escreve "para dar lugar ao sacerdote Parx Methralian. Agora voc� se"
escreve "lembra: seus deuses concedem a ele o poder de transformar-se em"
escreve "macaco."
escreve " - Seu trapaceiro dos infernos! Quantas vezes tive voc�"
escreve "sobre meu ombro?"
escreve " - Muitas, garanto. Um meio bem eficiente de acompanhar suas"
escreve "atividades. Mas n�o se enfure�a tanto, velho amigo. Se eu"
escreve "realmente quisesse atrai�o�-lo, j� teria denunciado � diretoria"
escreve "suas atividades. Acalmando-se, voc� percebe que aquilo deve ser"
escreve "verdade. Parx era assim mesmo: trapaceava por simples devo��o"
escreve "aos deuses, sem grandes ambi��es materiais ou sociais. Se"
escreve "quisesse trair voc� para conquistar mais prest�gio dentro da"
escreve "Guilda, j� o teria feito."
escreve "  Voc� resolve que pode confiar nele, afinal."
escreve "Revela seu plano e assiste-o acariciar o cajado m�gico"
escreve "que conseguiu no castelo de Arsenal."
escreve " - Um convite tentador, amigo Andrus. Este sacerdote, confesso,"
escreve "anda um pouco saudoso dos bons tempos de batalha. E ser� bom"
escreve "ter um velho amigo como chefe da Guilda. Vamos, pois, � procura"
escreve "do bom Mestre Arsenal."
desvia @10

@38
tela limpa
escreve mudo t
escreve
escreve "  Escutando com aten��o, voc� abre a porta no instante em"
escreve "que o c�o est� trotando no sentido oposto ao de voc�s. Ele"
escreve "� imenso e silencioso demais para uma criatura do seu tamanho."
escreve "Parx faz suas preces silenciosas. Voc� j� viu seu feiti�o de"
escreve "paralisia em a��o: a v�tima fica espremida contra o solo, como"
escreve "se prensada por uma m�o gigante e invis�vel, incapaz de"
escreve "mover-se ou falar. Contra aquele mastim, devia ser mais que"
escreve "suficiente."
escreve "  O feiti�o, entretanto, n�o surtiu efeito. Seria sua"
escreve "imagina��o, ou as costelas da criatura estavam expostas?"
escreve "  Infelizmente, n�o era imagina��o, Aquilo n�o era um c�o de"
escreve "guarda comum, mas sim um cad�ver animado- certamente invocado"
escreve "por Arsenal para proteger sua torre nesta noite t�o suspeita."
escreve "  Despreparados para uma batalha contra um morto-vivo, voc�s n�o"
escreve "conseguem sobreviver ao toque pestilento das garras da fera..."
escreve "     Fim de jogo."
Finaliza ()
termina "V� em busca de outros caminhos."

@39
tela limpa
escreve mudo t
escreve
escreve "  Com o m�ximo cuidado para n�o fazer ru�do, voc� usa suas"
escreve "costumeiras agulhas envenenadas que costumam saltar das"
escreve "ma�anetas, mas n�o encontra nenhuma. Depois de longos minutos,"
escreve "quando voc� est� quase acreditando que a porta � inofensiva,"
escreve "percebe a exist�ncia de um mecanismo que seria ativado pelo"
escreve "abrir da porta. N�o h� como saber exatamente o que ele faria,"
escreve "mas � claramente uma armadilha. Com uma tesoura apropriada, vc"
escreve "corta o arame que serviria de gatilho e agora a porta � segura."
escreve "  A porta leva a um grande aposento, que voc� e Parx reconhecem"
escreve "de imediato: � a sala onde Arsenal guarda as pe�as principais"
escreve "de sua cole�ao e ela cresceu desde quando estiveram aqui."
escreve "  Espadas magn�ficas adornam as paredes, armaduras reluzentes"
escreve "descansam em seus pedestais, escudos, orgulhosos, exibem seus"
escreve "bras�es. Mas nada disso interessa a voc�. Precisa de alguma"
escreve "coisa especial, alguma coisa diferente..."
escreve " - Tudo nessa sala � m�gico - comenta Parx, maravilhado. At�"
escreve "mesmo aquele tapete. Voc�s voltam a aten��o para um grande"
escreve "tapete, finamente trabalhado, bem no centro da sala. Seria um"
escreve "dos tais tapetes voadores? Vale a pena investigar. Voc� e Parx"
escreve "se aproximam para sentar no tapete... e caem.
escreve "  A consci�ncia retorna dolorosa. Voc� acorda em uma cela no"
escreve "calabou�o da torre de Arsenal. Parx est� ajoelhado ao seu lado,"
escreve "entoando c�nticos para curar os ferimentos causados pela queda."
escreve " - O que foi desta vez? - voc� pergunta."
escreve " - Uma armadilha. O tapete nunca existiu. Era uma ilus�o que"
escreve "escondia um al�ap�o."
escreve "Voc� olha para o teto e v� o al�ap�o por onde devem ter ca�do,"
escreve "agora fechado. Malditas armadilhas m�gicas!"
escreve "  Passos denunciam a aproxima��o de algu�m. A porta da cela se"
escreve "abre, e por ela entram o que parecem ser dois guardas com"
escreve "armaduras completas."
escreve "  Mas basta um olhar mais cuidadoso para notar que n�o h�"
escreve "seres humanos ali: s�o armaduras m�gicas. Elas se posicionam"
escreve "nos lados da porta, de espadas em punho e abrem passagem para..."
escreve "Arsenal. Sim, Mestre Arsenal em pessoa. O habilidoso guerreiro,"
escreve "cujo nome verdadeiro foi esquecido h� muito tempo e que passou"
escreve "grande parte da sua vida percorrendo o mundo em busca de armas"
escreve "e armaduras encantadas. O dono da torre invadida por voc� e"
escreve "seus companheiros, para recuperar um artefato roubado,"
escreve "aproveitando para levar consigo muitas pe�as de sua cole��o."
escreve "  Ser� que ele ainda estava zangado?"
escreve "  Arsenal usava suas pe�as favoritas: a coura�a completa, a"
escreve "capa orgulhosa e o rosto oculto pelo elmo de aspecto amea�ador."
escreve "Desta vez n�o trazia consigo o escudo imenso, grande como uma"
escreve "porta e o descumunal martelo de guerra, capaz de derrubar"
escreve "paredes, pelo que voc� se lembra. Trazia nas m�os sua capa"
escreve "m�gica e o cajado de Parx."
escreve " - Surpreendem-me com sua aud�cia, seus ratos ladr�es, diz a voz"
escreve "abafada pelo elmo. - Invadir minha torre no passado foi, por si"
escreve "s�, um atrevimento desmedido. Retornar aqui, ent�o, � algo que"
escreve "s� posso classificar como pura loucura."
escreve "  Ele agita a capa e o cajado diante de voc�s, talvez"
escreve "esperando que tentem recuper�-los. Nem voc� e nem Parx s�o tolos"
escreve "o bastante para tentar: Arsenal usa objetos m�gicos que ampliam"
escreve "sua for�a e mesmo sem armas poderia mat�-los sem esfor�o."
escreve " - A recompensa por sua tolice ser� a morte - anuncia ele. - Mas"
escreve "n�o agora. Voc�s interromperam meu sono e desejo estar"
escreve "descansado para saborear seu sofrimento. Aproveitem seu �ltimo"
escreve "alvorecer. Arsenal deixa a cela, instruindo as armaduras para"
escreve "montar guarda do lado de fora. Voc� e Parx entreolham-se:"
escreve "- Reparou como os vil�es sempre d�o uma chance para a gente"
escreve "escapar?"
escreve " - N�o alimente falsas esperan�as, Andrus. Como a maioria"
escreve "dos usu�rios de feiti�os, Arsenal precisa estar plenamente"
escreve "descansado para renovar seus poderes pela manh�. Por certo ele"
escreve "planeja matar-nos com magia, de maneiras t�o horr�veis que eu"
escreve "mal poderia descrever."
escreve "Diante dessa perspectiva nada agrad�vel, voc� saca o estojo de"
escreve "ferramentas que, felizmente, escapou � revista de Arsenal."
escreve " - Como vamos sair daqui? Posso cuidar da fechadura, mas e os"
escreve "guardas?"
escreve " - Apenas abra a porta, e deixe o resto comigo."
escreve "  Voc� lida com a fechadura da cela, ofendido com sua simplicidade."
escreve "Destranca-a em poucos segundos. Ent�o, de posse de seu s�mbolo"
escreve "sagrado, Parx salta para o corredor e enfrenta os guardas."
escreve " - Voltem para o reino dos mortos, criaturas das trevas! Parece"
escreve "que Parx perdeu o ju�zo. Ele pode esconjurar mortos-vivos, mas"
escreve "como espera fazer o mesmo com armaduras m�gicas? Para sua"
escreve "surpresa, entretanto, voc� assiste a uma cena imposs�vel: as"
escreve "armaduras estremecem e caem em peda�os."
escreve " - N�o eram armaduras encantadas, explica Parx . -Eram fantasmas"
escreve "invis�veis, invocados por Arsenal."
escreve " - � bom ver voc� mostrar um pouco de esperteza, para variar!"
escreve "  Rindo baixo, voc� agarra uma das espadas ca�das no ch�o e"
escreve "oferece outra a Parx. Ele recusa, afirmando que seus deuses n�o"
escreve "aprovam o uso de armas daquele tipo. Voc�s seguem por um"
escreve "corredor mal iluminado e chegam a uma bifurca��o."
@Op��es39
escreve
escreve "    Se quiser pegar o caminho da direita, tecle 1"
escreve "    Se prefere o da esquerda, tecle 2"
@EsperaTeclarOp��o39
l� o &
se o="1" desvia @6
se o="2" desvia @34
se o="#0#59" chama @Ajuda
se o="#0#59" desvia @EsperaTeclarOp��o39
se o="#0#60" desvia @39
se o="#0#61" desvia @Op��es39
escreve "   Op��o inv�lida. F1 ajuda"
desvia @EsperaTeclarOp��o39

@40
tela limpa
escreve mudo t
escreve
escreve "  Dias depois, os grandes chefes de quadrilha de Kristophania"
escreve "foram convocados para uma reuni�o extraordin�ria pelo chef�o da"
escreve "Guilda. Na cabeceira da mesa, tendo seus guardas assassinos a"
escreve "seu lado, ele tem um an�ncio surpreendente a fazer:"
escreve " - Estou cansado da diretoria, declara ele. - Convoquei esta"
escreve "reuni�o para declarar quem ser� o novo chefe geral da Guilda de"
escreve "Kristophania. Andrus, o Aranha, ser� o novo diretor."
escreve "  Os chefes se agitam, indignados, com a entrada de Andrus no"
escreve "recinto. Cada um esperava ser indicado para o cargo supremo..."
escreve "mas n�o estavam preparados para aquilo! Andrus?"
escreve " - Muito obrigado, chefe - voc� diz. - Vou cuidar bem das"
escreve "coisas por aqui."
escreve " - Conto com voc�, Andrus. Estarei me retirando para meu"
escreve "esconderijo, onde vou gozar de uma aposentadoria merecida,"
escreve "longe das autoridades. Adeus."
escreve "  E a reuni�o termina com a sa�da dos chefes, furiosos. Voc� ter�"
escreve "alguns problemas para impor sua autoridade a eles, mas nada"
escreve "dif�cil demais. Com a autoriza��o pessoal do chef�o, e os"
escreve "assassinos da Guilda ao seu lado, ningu�m ir� se opor � sua"
escreve "lideran�a."
escreve "  Voc� dispensa os guardas, satisfeito em ver que eles"
escreve "cumprem suas ordens. Est�o sozinhos agora, voc� e o ex chefe."
escreve "Ou n�o?"
escreve " - Muito bom este chap�u de disfarce , revela Parx, disfar�ado"
escreve "por seu poder m�gico, em chefe da Guilda."
escreve " - Suas ilus�es poderiam enganar qualquer um."
escreve " - N�o precisam enganar mais ningu�m. Voc� explica:"
escreve " - Se o corpo do chefe for encontrado, n�o far� mais diferen�a."
escreve "Agora (ele) j� passou o cargo para mim, certo?"
escreve "Sim, foi um bom plano: matar o chefe, e usar o chap�u m�gico"
escreve "de Arsenal para criar a ilus�o de que Parx era ele, transferindo"
escreve "toda a autoridade para voc�. Parab�ns, voc� conseguiu."
escreve "� o novo chef�o da Guilda dos Ladr�es... Pelo menos at� que"
escreve "algu�m apare�a com um plano mais matreiro que o seu!"
termina "      Parab�ns, voc� venceu... Fim de jogo! Volte sempre!"

*** Fim da aventura ***

*** Op��es de repeti��o ***

@Ajuda
escreve "        As Op��es s�o:"
escreve "      F2 - Repete sua situa��o"
escreve "      F3 - Repete as alternativas"
retorna

*** Procura e l� um texto do arquivo que acompanha o script ***

fun��o L�Texto (texto)
abre #1 "C:\Winvox\Scripts\Jogos\Assalto.ct0"
l� #1 l
checa c
se c <> 0
fecha #1
escreve "Erro! O arquivo que acompanha o script, est� vazio."
escreve "O script n�o pode prosseguir."
termina "Fim."
fim se
enquanto l <> texto
l� #1 l
checa c
se c <> 0 fecha #1
se c <> 0 escreve "Erro! R�tulo n�o foi achado no arquivo que acompanha o script."
se c <> 0 escreve "O script n�o pode prosseguir."
se c <> 0 escreve "Fim."
se c <> 0 termina mudo
fim enquanto
enquanto l <> ""
l� #1 l
escreve l
fim enquanto
fecha #1
fim fun��o

*** Finaliza ou reinicia a aventura ***

fun��o Finaliza ()
escreve "   Para jogar novamente, tecle Enter"
escreve "   Para finalisar, tecle Escape"
l� o &
se o="#27" termina mudo
se o="#13" desvia @novatentativa
Escreve "Op��o inv�lida."
finaliza ()
fim fun��o
