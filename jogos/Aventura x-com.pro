*Aventura X-Com
*Uma aventura solo de RPG.
* O texto do jogo, est� em outro arquivo, que � recomendado estar no
* diret�rio onde encontra-se esse arquivo
* Texto adapitado por: Anderson Alves da Fonseca
* Autor: Anderson Alves da Fonseca
* Inicio: 20/09/2004
*termino: 24/09/2004


t := "              Aventura X-Com"


*** In�cio ***

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
se o="c" desvia @Suamiss�oCome�ou
desvia @Op��oAouC

*** Apresenta��o ***

@Apresenta��o
tela limpa
escreve mudo t
escreve
L�Texto ("@apresenta��o")

*** Come�o da miss�o ***

@Suamiss�oCome�ou
tela limpa
escreve "    Sua miss�o come�ou!"
bipa

@NovaTentativa
tela limpa
escreve mudo t
escreve
L�Texto ("@suamiss�ocome�ou")
@op��es1
escreve
escreve " Se quiser comparecer ao chamado, tecle 1."
escreve " Se quiser denunciar a organiza��o, usando a imprensa como arma, tecle 2."
escreve " Por�m, se quiser usar seus contatos na CIA para tentar se livrar da enrascada "
escreve "onde se meteu, tecle 3."
@Esperateclarop��o1
l� o &
se o="1" desvia @21
se o="2" desvia @19
se o = "3" desvia @32
se o="#0#59" chama @Ajuda
se o="#0#59" desvia @EsperaTeclarOp��o1
se o="#0#60" desvia @NovaTentativa
se o="#0#61" desvia @op��es1
se o="#27" desvia @cancelamiss�o
escreve "   Op��o inv�lida. F1 ajuda"
desvia @EsperaTeclarOp��o1

@2
tela limpa
escreve mudo t
escreve
L�Texto ("@2")
desvia @43

@3
tela limpa
escreve mudo t
escreve
L�Texto ("@3")
@op��es2
escreve
escreve " Se estiver com o rifle X-COM, tecle 1."
escreve " Se estiver portando a pistola, tecle 2."
@Esperateclarop��o2
l� o &
se o="1" desvia @26
se o="2" desvia @2
se o="#0#59" chama @Ajuda
se o="#0#59" desvia @EsperaTeclarOp��o2
se o="#0#60" desvia @3
se o="#0#61" desvia @op��es2
se o="#27" desvia @cancelamiss�o
escreve "   Op��o inv�lida. F1 ajuda"
desvia @EsperaTeclarOp��o2

@4
tela limpa
escreve mudo t
escreve
L�Texto ("@4")
desvia @25

@5
tela limpa
escreve mudo t
escreve
L�Texto ("@5")
escreve "     Sua miss�o acaba por aqui."
Finaliza ()

@6
tela limpa
escreve mudo t
escreve
L�Texto ("@6")
desvia @38

@7
tela limpa
escreve mudo t
escreve
L�Texto ("@7")
@op��es3
escreve
escreve " Se quiser ir com Kenner Wayne, tecle 1."
escreve " Se quiser ir com Thiago Highlin, tecle 2."
escreve " Se quiser ir com John McMorus, tecle 3."
escreve " Se preferir que eles decidam entre si, tecle 4."
@Esperateclarop��o3
l� o &
se o="1" desvia @41
se o="2" desvia @6
se o="3" desvia @20
se o="4" desvia @35
se o="#0#59" chama @Ajuda
se o="#0#59" desvia @EsperaTeclarOp��o3
se o="#0#60" desvia @7
se o="#0#61" desvia @op��es3
se o="#27" desvia @cancelamiss�o
escreve "   Op��o inv�lida. F1 ajuda"
desvia @EsperaTeclarOp��o3

@8
tela limpa
escreve mudo t
escreve
L�Texto ("@8")
desvia @13

@9
tela limpa
escreve mudo t
escreve
L�Texto ("@9")
desvia @8

@10
tela limpa
escreve mudo t
escreve
L�Texto ("@10")
@op��es4
escreve
escreve " Se quiser seguir a sugest�o de John McMorus, tecle 1."
escreve " Se n�o confia nele, e quiser sugerir outra solu��o, tecle 2."
@Esperateclarop��o4
l� o &
se o="1" desvia @17
se o="2" desvia @33
se o="#0#59" chama @Ajuda
se o="#0#59" desvia @EsperaTeclarOp��o4
se o="#0#60" desvia @10
se o="#0#61" desvia @op��es4
se o="#27" desvia @cancelamiss�o
escreve "   Op��o inv�lida. F1 ajuda"
desvia @EsperaTeclarOp��o4

@11
tela limpa
escreve mudo t
escreve
L�Texto ("@11")
@op��es5
escreve
escreve " Se estiver com a pistola e quiser partir para cima com uma rajada de tiros, tecle 1."
escreve " Se quiser esperar o ser surgir e ent�o atirar com a pistola, tecle 2."
escreve " Se possuir o rifle e quiser partir com ele para tentar uma rajada, tecle 3."
escreve " se estiver com o rifle e quiser esperar o ser surgir na curva a  sua frente, tecle 4."
@Esperateclarop��o5
l� o &
se o="1" desvia @28
se o="2" desvia @34
se o="3" desvia @42
se o="4" desvia @22
se o="#0#59" chama @Ajuda
se o="#0#59" desvia @EsperaTeclarOp��o5
se o="#0#60" desvia @11
se o="#0#61" desvia @op��es5
se o="#27" desvia @cancelamiss�o
escreve "   Op��o inv�lida. F1 ajuda"
desvia @EsperaTeclarOp��o5

@12
tela limpa
escreve mudo t
escreve
L�Texto ("@12")
desvia @50

@13
tela limpa
escreve mudo t
escreve
L�Texto ("@13")
@op��es6
escreve
escreve " Se desejar ver John McMorus torturar o homem, tecle 1."
escreve " Por�m, se acha que esse n�o � o m�todo ideal para obter as informa��es, e quiser tentar"
escreve " alguma outra coisa, tecle 2."
@Esperateclarop��o6
l� o &
se o="1" desvia @48
se o="2" desvia @23
se o="#0#59" chama @Ajuda
se o="#0#59" desvia @EsperaTeclarOp��o6
se o="#0#60" desvia @13
se o="#0#61" desvia @op��es6
se o="#27" desvia @cancelamiss�o
escreve "   Op��o inv�lida. F1 ajuda"
desvia @EsperaTeclarOp��o6

@14
tela limpa
escreve mudo t
escreve
L�Texto ("@14")
desvia @25

@15
tela limpa
escreve mudo t
escreve
L�Texto ("@15")
desvia @50

@16
tela limpa
escreve mudo t
escreve
L�Texto ("@16")
desvia @8

@17
tela limpa
escreve mudo t
escreve
L�Texto ("@17")
escreve "     Sua miss�o acaba por aqui."
Finaliza ()

@18
tela limpa
escreve mudo t
escreve
L�Texto ("@18")
desvia @11

@19
tela limpa
escreve mudo t
escreve
L�Texto ("@19")
escreve "     Sua miss�o acaba por aqui."
Finaliza ()

@20
tela limpa
escreve mudo t
escreve
L�Texto ("@20")
desvia @18

@21
tela limpa
escreve mudo t
escreve
L�Texto ("@21")
@op��es7
escreve
escreve " Se voc� quiser escolher a pistola, tecle 1."
escreve " Se quiser o rifle, tecle 2."
escreve " Independente de sua escolha, voc� tamb�m recebe uma pequena mas potente lanterna."
@Esperateclarop��o7
l� o &
se o="1" desvia @16
se o="2" desvia @9
se o="#0#59" chama @Ajuda
se o="#0#59" desvia @EsperaTeclarOp��o7
se o="#0#60" desvia @21
se o="#0#61" desvia @op��es7
se o="#27" desvia @cancelamiss�o
escreve "   Op��o inv�lida. F1 ajuda"
desvia @EsperaTeclarOp��o7

@22
tela limpa
escreve mudo t
escreve
L�Texto ("@22")
desvia @10

@23
tela limpa
escreve mudo t
escreve
l�texto ("@23")
desvia @29

@24
tela limpa
escreve mudo t
escreve
l�texto ("@24")
desvia @7

@25
tela limpa
escreve mudo t
escreve
l�texto ("@25")
desvia @3

@26
tela limpa
escreve mudo t
escreve
l�texto ("@26")
@op��es8
escreve
escreve " Se voc� matou Kenner Wayne na sala das luzes, tecle 1."
escreve " Por�m, se n�o fez isso, tecle 2,  op��o que "
escreve " corresponde ao (n�mero da sorte) de Kenner Wayne."
@Esperateclarop��o8
l� o &
se o="1" desvia @5
se o="2" desvia @15
se o="#0#59" chama @Ajuda
se o="#0#59" desvia @EsperaTeclarOp��o8
se o="#0#60" desvia @26
se o="#0#61" desvia @op��es8
se o="#27" desvia @cancelamiss�o
escreve "   Op��o inv�lida. F1 ajuda"
desvia @EsperaTeclarOp��o8

@27
tela limpa
escreve mudo t
escreve
l�texto ("@27")
desvia @49

@28
tela limpa
escreve mudo t
escreve
l�texto ("@28")
desvia @10

@29
tela limpa
escreve mudo t
escreve
l�texto ("@29")
desvia @31

@30
tela limpa
escreve mudo t
escreve
l�texto ("@30")
desvia @36

@31
tela limpa
escreve mudo t
escreve
l�texto ("@31")
@op��es9
escreve
escreve " Se voc� quiser sugerir que devem ir pela esquerda, tecle 1."
escreve " Se quiser sugerir que devem pegar a direita, tecle 2."
@EsperaTeclarOp��o9
l� o &
se o="1" desvia @7
se o="2" desvia @24
se o="#0#59" chama @Ajuda
se o="#0#59" desvia @EsperaTeclarOp��o9
se o="#0#60" desvia @31
se o="#0#61" desvia @op��es9
se o="#27" desvia @cancelamiss�o
escreve "   Op��o inv�lida. F1 ajuda"
desvia @EsperaTeclarOp��o9

@32
tela limpa
escreve mudo t
escreve
l�texto ("@32")
escreve "    Sua miss�o acaba por aqui. "
finaliza ()

@33
tela limpa
escreve mudo t
escreve
l�texto ("@33")
desvia @44

@34
tela limpa
escreve mudo t
escreve
l�texto ("@34")
escreve "    Sua miss�o acaba por aqui. "
finaliza ()

@35
tela limpa
escreve mudo t
escreve
l�texto ("@35")
desvia @18

@36
tela limpa
escreve mudo t
escreve
l�texto ("@36")
@op��es10
escreve
escreve " Se voc� concordar com isso, tecle 1."
escreve " Se achar que existe alguma outra solu��o, tecle 2."
@EsperaTeclarOp��o10
l� o &
se o="1" desvia @45
se o="2" desvia @27
se o="#0#59" chama @Ajuda
se o="#0#59" desvia @EsperaTeclarOp��o10
se o="#0#60" desvia @36
se o="#0#61" desvia @op��es10
se o="#27" desvia @cancelamiss�o
escreve "   Op��o inv�lida. F1 ajuda"
desvia @EsperaTeclarOp��o10

@37
tela limpa
escreve mudo t
escreve
l�texto ("@37")
@op��es11
escreve
escreve "Se quiser tentar sacar sua arma e atirar, tecle 1."
escreve " Se achar que � melhor esperar e ver o que vai acontecer, tecle 2."
@EsperaTeclarOp��o11
l� o &
se o="1" desvia @3945
se o="2" desvia @47
se o="#0#59" chama @Ajuda
se o="#0#59" desvia @EsperaTeclarOp��o11
se o="#0#60" desvia @37
se o="#0#61" desvia @op��es11
se o="#27" desvia @cancelamiss�o
escreve "   Op��o inv�lida. F1 ajuda"
desvia @EsperaTeclarOp��o11

@38
tela limpa
escreve mudo t
escreve
l�texto ("@38")
desvia @11

@39
tela limpa
escreve mudo t
escreve
l�texto ("@39")
desvia @46

@40
tela limpa
escreve mudo t
escreve
l�texto ("@40")
escreve "   Parab�ns, agente X-COM! Voc� completou sua miss�o!"
finaliza ()

@41
escreve
escreve mudo t
escreve
l�texto ("@41")
@op��es12
escreve
escreve " Se quiser ir com Thiago Highlin, tecle 1."
escreve " Se quiser ir com John McMorus, tecle 2."
escreve " Se preferir que eles decidam entre si, tecle 3."
@EsperaTeclarOp��o12
l� o &
se o="1" desvia @6
se o="2" desvia @20
se o="3" desvia @35
se o="#0#59" desvia @ajuda
se o="#0#59" desvia @esperateclaop��o12
se o="#0#60" desvia @41
se o="#0#61" desvia @op��es12
se o="#27" desvia @cancelamiss�o
escreve "   Op��o inv�lida. F1 ajuda"
desvia @EsperaTeclarOp��o12

@42
escreve
escreve mudo t
escreve
l�texto ("@42")
escreve "    Sua miss�o acaba por aqui."
finaliza ()

@43
escreve
escreve mudo t
escreve
l�texto ("@43")
@op��es13
escreve
escreve " Se voc� matou Kenner Wayne na sala das luzes, tecle 1."
escreve " Se n�o, tecle 2."
@EsperaTeclarOp��o13
l� o &
se o="1" desvia @40
se o="2" desvia @37
se o="#0#59" desvia @ajuda
se o="#0#59" desvia @esperateclaop��o13
se o="#0#60" desvia @43
se o="#0#61" desvia @op��es13
se o="#27" desvia @cancelamiss�o
escreve "   Op��o inv�lida. F1 ajuda"
desvia @EsperaTeclarOp��o13

@44
escreve
escreve mudo t
escreve
l�texto ("@44")
desvia @30

@45
escreve
escreve mudo t
escreve
l�texto ("@45")
desvia @4

@46
escreve
escreve mudo t
escreve
l�texto ("@46")
escreve "    Sua miss�o acaba por aqui."
finaliza ()

@47
escreve
escreve mudo t
escreve
l�texto ("@47")
desvia @12

@48
escreve
escreve mudo t
escreve
l�texto ("@48")
desvia @29

@49
escreve
escreve mudo t
escreve
l�texto ("@49")
desvia @14

@50
escreve
escreve mudo t
escreve
l�texto ("@50")
escreve "   Parab�ns, agente X-COM! Voc� completou sua miss�o!"
finaliza ()

*** Fim da aventura ***

*** Op��es de repeti��o ***

@Ajuda
escreve "        As Op��es s�o:"
escreve "      F2 - Repete sua situa��o"
escreve "      F3 - Repete as alternativas"
escreve "      Esc - cancela sua miss�o."
retorna

*** Procura e l� um texto do arquivo que acompanha o script ***

fun��o L�Texto (textoProcurado)
abre #1 "C:\winvox\scripts\jogos\x-com.rpg"
l� #1 l
checa c
se c <> 0
fecha #1
escreve "Erro! O arquivo que acompanha o script, est� vazio."
escreve "O script n�o pode prosseguir."
escreve "Fim."
termina mudo
fim se
enquanto l <> TextoProcurado
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

fun��o Finaliza()
escreve "   Para jogar novamente, tecle Enter"
escreve "   Para finalisar, tecle Esc"
l� o &
se o="#27" termina mudo
se o="#13" desvia @NovaTentativa
Escreve "Op��o inv�lida."
finaliza ()
fim fun��o

**** Cancela miss�o ***

@cancelamiss�o
se o="#27"
escreve "    Ok! miss�o foi abortada. "
fecha #1
termina mudo
fim se
