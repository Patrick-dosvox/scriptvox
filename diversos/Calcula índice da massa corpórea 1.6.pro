*meu segundo script - �ndice de massa corp�rea.
*Por - JO�O BATISTA DA COSTA -FEIRA DE SANTANA- BAHIA.
*Vers�o 1.6 em 14/06/2007.
* Alterado em - 28/10/2007.
*E-MAIL JOAOBIUC@YAHOO.COM.BR.

TOCA "\WINVOX\som\intervox\inicial.wav"&
espera 1
escreve "                    BEM VINDO AO PROGRAMA"
escreve  "                  �ndice de massa corp�rea"
escreve  "Vers�o 1.6"
TOCA "\WINVOX\som\intervox\Imautor.wav"
escreve  "JO�O BATISTA DA COSTA - FEIRA DE SANTANA - BAHIA - BRASIL"
TOCA "\WINVOX\som\intervox\Imemail.wav"
escreve  "JOAOBIUC@YAHOO.COM.BR"
espera 1
escreve " Hoje �:"
seja s= dia
escreve S&
escreve ""&
    se s= "segunda" escreve "feira"
    se s= "ter�a" escreve "feira"
    se s= "quarta"escreve "feira"
    se s= "quinta" escreve "feira"
    se s= "sexta" escreve "feira"
    se s= "s�bado" escreve "-  BOM FINAL DE SEMANA, CUIDADO COM O PESO!"
    se s= "domingo" escreve "-  BOM FINAL DE SEMANA, CUIDADO COM O PESO"

seja d= data
seja h= hora

escreve d&
escreve ""
escreve h&
espera 1
escreve " quer saber se est� fora do peso ideal?"
ESCREVE " "
escreve " Calcule aqui seu �ndice de massa corp�rea"

ESCREVE " "

@inicio
fundo 4
tela limpa
espera 1
bipa 5
escreve " ATEN��O:"
escreve "  CRIT�RIOS UTILIZADOS PELA ORGANIZA��O MUNDIAL DE SA�DE"
ESCREVE "-EM ADULTOS:"

escreve "- VALOR M�NIMO DO RESULTADO= 185"
ESCREVE "- VALOR M�XIMO DO RESULTADO= 250"
ESCREVE "- CONSIDERADO OBESO APARTIR DE= 300"
ESCREVE "- CONSIDERADO OBESIDADE M�RBIDA, ACIMA DE 400"
espera 1
escreve  "Informe seu peso, em quILOS."
L� M
ESCREVE M&
escreve " - quilos"
seja p= 100000
multiplica p m

@processa
ESCREVE " "
escreve  "informe sua altura, em cent�metros."
L� A
escreve a&
escreve " - cent�metros"
seja b= a
multiplica b a
seja c= b
seja f= p
divide f c
espera 1
bipa 10
bipa 10
bipa 11
bipa 11
bipa 100
ESCREVE ""
escreve "Sua massa total �"
espera 1
escreve f
espera 1
ESCREVE ""
SE F< "140" ESCREVE " GRAV�SSIMO, VOC� EST� EXTREMAMENTE MAGRO, "
 SE F= "140" ESCREVE "PERIGO, PROCURE UM M�DICOCOM EMERG�NCIA"
SE F= "141" ESCREVE "PERIGO, PROCURE UM M�DICOCOM EMERG�NCIA"
SE F= "142" ESCREVE "PERIGO, PROCURE UM M�DICOCOM EMERG�NCIA"
SE F= "143" ESCREVE "PERIGO, PROCURE UM M�DICOCOM EMERG�NCIA"
SE F= "144" ESCREVE "PERIGO, PROCURE UM M�DICOCOM EMERG�NCIA"
SE F= "145" ESCREVE "PERIGO, PROCURE UM M�DICOCOM EMERG�NCIA"
SE F= "146" ESCREVE "PERIGO, PROCURE UM M�DICOCOM EMERG�NCIA"
SE F= "147" ESCREVE "PERIGO, PROCURE UM M�DICOCOM EMERG�NCIA"
SE F= "148" ESCREVE "PERIGO, PROCURE UM M�DICOCOM EMERG�NCIA"
SE F= "149" ESCREVE "PERIGO, PROCURE UM M�DICOCOM EMERG�NCIA"
SE F="150" ESCREVE "PERIGO, PROCURE UM M�DICO COM URG�NCIA"
SE F="151" ESCREVE "PERIGO, PROCURE UM M�DICO COM URG�NCIA"
SE F="152" ESCREVE "PERIGO, PROCURE UM M�DICO COM URG�NCIA"
SE F="153" ESCREVE "PERIGO, PROCURE UM M�DICO COM URG�NCIA"
SE F="154" ESCREVE "PERIGO, PROCURE UM M�DICO COM URG�NCIA"
SE F="155" ESCREVE "PERIGO, PROCURE UM M�DICO COM URG�NCIA"
SE F="156" ESCREVE "PERIGO, PROCURE UM M�DICO COM URG�NCIA"
SE F="157" ESCREVE "PERIGO, PROCURE UM M�DICO COM URG�NCIA"
SE F="158" ESCREVE "PERIGO, PROCURE UM M�DICO COM URG�NCIA"
SE F="159" ESCREVE "PERIGO, PROCURE UM M�DICO COM URG�NCIA"
SE F= "160" ESCREVE "PERIGO, PROCURE UM M�DICO URGENTE"
SE F= "161" ESCREVE "PERIGO, PROCURE UM M�DICO URGENTE"
SE F= "162" ESCREVE "PERIGO, PROCURE UM M�DICO URGENTE"
SE F= "163" ESCREVE "PERIGO, PROCURE UM M�DICO URGENTE"
SE F= "164" ESCREVE "PERIGO, PROCURE UM M�DICO URGENTE"
SE F= "165" ESCREVE "PERIGO, PROCURE UM M�DICO URGENTE"
SE F= "166" ESCREVE "PERIGO, PROCURE UM M�DICO URGENTE"
SE F= "167" ESCREVE "PERIGO, PROCURE UM M�DICO URGENTE"
SE F= "168" ESCREVE "PERIGO, PROCURE UM M�DICO URGENTE"
SE F= "169" ESCREVE "PERIGO, PROCURE UM M�DICO URGENTE"
se f= "170" escreve "PROCURE UM M�DICO URGENTE"
se f= "171" escreve "PROCURE UM M�DICO URGENTE"
se f= "172" escreve "PROCURE UM M�DICO URGENTE"
se f= "173" escreve "PROCURE UM M�DICO URGENTE"
se f= "174" escreve "PROCURE UM M�DICO URGENTE"
se f= "175" escreve "PROCURE UM M�DICO URGENTE"
se f= "176" escreve "PROCURE UM M�DICO URGENTE"
se f= "177" escreve "PROCURE UM M�DICO URGENTE"
se f= "178" escreve "PROCURE UM M�DICO URGENTE"
se f= "179" escreve "PROCURE UM M�DICO URGENTE"
se f= "180" escreve "CUIDADO VOC� EST� FORA DO LIMITE PROCURE UM M�DICO"
SE F= "181" ESCREVE "VOC� EST� FORA DO LIMITE, PROCURE UM M�DICO"
SE F= "182" ESCREVE "VOC� EST� FORA DO LIMITE, PROCURE UM M�DICO"
SE F= "183" ESCREVE "VOC� EST� FORA DO LIMITE, PROCURE UM M�DICO"
SE F= "184" ESCREVE "VOC� EST� FORA DO LIMITE, PROCURE UM M�DICO"
SE F= "185" ESCREVE "CUIDADO VOC� EST� NO LIMITE M�NIMO, N�O PERCA PESO."
SE F= "186" ESCREVE "VOC� EST� NO LIMITE, N�O PERCA PESO."
SE F= "187" ESCREVE "VOC� EST� NO LIMITE, N�O PERCA PESO."
SE F= "188" ESCREVE "VOC� EST� NO LIMITE, N�O PERCA PESO."
SE F= "189" ESCREVE "VOC� EST� NO LIMITE, N�O PERCA PESO."

SE F="190" ESCREVE "MANTENHA O PESO, VOC� EST� DENTRO DO LIMITE"
SE F="191" ESCREVE "MANTENHA O PESO, VOC� EST� DENTRO DO LIMITE"
SE F="192" ESCREVE "MANTENHA O PESO, VOC� EST� DENTRO DO LIMITE"
SE F="193" ESCREVE "MANTENHA O PESO, VOC� EST� DENTRO DO LIMITE"
SE F="194" ESCREVE "MANTENHA O PESO, VOC� EST� DENTRO DO LIMITE"
SE F="195" ESCREVE "MANTENHA O PESO, VOC� EST� DENTRO DO LIMITE"
SE F="196" ESCREVE "MANTENHA O PESO, VOC� EST� DENTRO DO LIMITE"
SE F="197" ESCREVE "MANTENHA O PESO, VOC� EST� DENTRO DO LIMITE"
SE F="198" ESCREVE "MANTENHA O PESO, VOC� EST� DENTRO DO LIMITE"
SE F="199" ESCREVE "MANTENHA O PESO, VOC� EST� DENTRO DO LIMITE"

SE F= "200" ESCREVE "MANTENHA O PESO"
SE F= "201" ESCREVE "MANTENHA O PESO"
SE F= "202" ESCREVE "MANTENHA O PESO"
SE F= "203" ESCREVE "MANTENHA O PESO"
SE F= "204" ESCREVE "MANTENHA O PESO"
SE F= "205" ESCREVE "MANTENHA O PESO"
SE F= "206" ESCREVE "MANTENHA O PESO"
SE F= "207" ESCREVE "MANTENHA O PESO"
SE F= "208" ESCREVE "MANTENHA O PESO"
SE F= "209" ESCREVE "MANTENHA O PESO"

SE F= "210" ESCREVE "MANTENHA O PESO"
SE F= "211" ESCREVE "MANTENHA O PESO"
SE F= "212" ESCREVE "MANTENHA O PESO"
SE F= "213" ESCREVE "MANTENHA O PESO"
SE F= "214" ESCREVE "MANTENHA O PESO"
SE F= "215" ESCREVE "MANTENHA O PESO"
SE F= "216" ESCREVE "MANTENHA O PESO"
SE F= "217" ESCREVE "MANTENHA O PESO"
SE F= "218" ESCREVE "MANTENHA O PESO"
SE F= "219" ESCREVE "MANTENHA O PESO"

SE F= "220" ESCREVE "MANTENHA O PESO"
SE F= "221" ESCREVE "MANTENHA O PESO"
SE F= "222" ESCREVE "MANTENHA O PESO"
SE F= "223" ESCREVE "MANTENHA O PESO"
SE F= "224" ESCREVE "MANTENHA O PESO"
SE F= "225" ESCREVE "MANTENHA O PESO"
SE F= "226" ESCREVE "MANTENHA O PESO"
SE F= "227" ESCREVE "MANTENHA O PESO"
SE F= "228" ESCREVE "MANTENHA O PESO"
SE F= "229" ESCREVE "MANTENHA O PESO"

SE F= "230" ESCREVE "CUIDADO , MANTENHA O PESO"
SE F= "231" ESCREVE "CUIDADO , MANTENHA O PESO"
SE F= "232" ESCREVE "CUIDADO , MANTENHA O PESO"
SE F= "233" ESCREVE "CUIDADO , MANTENHA O PESO"
SE F= "234" ESCREVE "CUIDADO , MANTENHA O PESO"
SE F= "235" ESCREVE "CUIDADO , MANTENHA O PESO"
SE F= "236" ESCREVE "CUIDADO , MANTENHA O PESO"
SE F= "237" ESCREVE "CUIDADO , MANTENHA O PESO"
SE F= "238" ESCREVE "CUIDADO , MANTENHA O PESO"
SE F= "239" ESCREVE "CUIDADO , MANTENHA O PESO"

SE F= "240" ESCREVE "VOC� EST� QUASE NO LIMITE M�XIMO, MANTENHA O PESO"
SE F= "241" ESCREVE "VOC� EST� QUASE NO LIMITE M�XIMO, MANTENHA O PESO"
SE F= "242" ESCREVE "VOC� EST� QUASE NO LIMITE M�XIMO, MANTENHA O PESO"
SE F= "243" ESCREVE "VOC� EST� QUASE NO LIMITE M�XIMO, MANTENHA O PESO"
SE F= "244" ESCREVE "VOC� EST� QUASE NO LIMITE M�XIMO, MANTENHA O PESO"
SE F= "245" ESCREVE "VOC� EST� QUASE NO LIMITE M�XIMO, MANTENHA O PESO"
SE F= "246" ESCREVE "VOC� EST� QUASE NO LIMITE M�XIMO, MANTENHA O PESO"
SE F= "247" ESCREVE "VOC� EST� QUASE NO LIMITE M�XIMO, MANTENHA O PESO"
SE F= "248" ESCREVE "VOC� EST� QUASE NO LIMITE M�XIMO, MANTENHA O PESO"
SE F= "249" ESCREVE "VOC� EST� QUASE NO LIMITE M�XIMO, MANTENHA O PESO"

SE F= "250" ESCREVE " VOC� EST� NO LIMITE M�XIMO, BAIXE UM POUCO
SE F= "251" ESCREVE " VOC� PASSOU DO LIMITE M�XIMO, BAIXE UM POUCO
SE F= "252" ESCREVE " VOC� PASSOU DO LIMITE M�XIMO, BAIXE UM POUCO
SE F= "253" ESCREVE " VOC� PASSOU DO LIMITE M�XIMO, BAIXE UM POUCO
SE F= "254" ESCREVE " VOC� PASSOU DO LIMITE M�XIMO, BAIXE UM POUCO
SE F= "255" ESCREVE " VOC� PASSOU DO LIMITE M�XIMO, BAIXE UM POUCO
SE F= "256" ESCREVE " VOC� PASSOU DO LIMITE M�XIMO, BAIXE UM POUCO
SE F= "257" ESCREVE " VOC� PASSOU DO LIMITE M�XIMO, BAIXE UM POUCO
SE F= "258" ESCREVE " VOC� PASSOU DO LIMITE M�XIMO, BAIXE UM POUCO
SE F= "259" ESCREVE " VOC� PASSOU DO LIMITE M�XIMO, BAIXE UM POUCO

SE F= "260" ESCREVE "CUIDADO, BAIXE O PESO, VOC� EST� FICANDO OBESO"
SE F= "261" ESCREVE "CUIDADO, BAIXE O PESO, VOC� EST� FICANDO OBESO"
SE F= "262" ESCREVE "CUIDADO, BAIXE O PESO, VOC� EST� FICANDO OBESO"
SE F= "263" ESCREVE "CUIDADO, BAIXE O PESO, VOC� EST� FICANDO OBESO"
SE F= "264" ESCREVE "CUIDADO, BAIXE O PESO, VOC� EST� FICANDO OBESO"
SE F= "265" ESCREVE "CUIDADO, BAIXE O PESO, VOC� EST� FICANDO OBESO"
SE F= "266" ESCREVE "CUIDADO, BAIXE O PESO, VOC� EST� FICANDO OBESO"
SE F= "267" ESCREVE "CUIDADO, BAIXE O PESO, VOC� EST� FICANDO OBESO"
SE F= "268" ESCREVE "CUIDADO, BAIXE O PESO, VOC� EST� FICANDO OBESO"
SE F= "269" ESCREVE "CUIDADO, BAIXE O PESO, VOC� EST� FICANDO OBESO"

SE F="270" ESCREVE "CUIDADO, VOC� EST� FICANDO OBESO, PROCURE O M�DICO"
SE F="271" ESCREVE "CUIDADO, VOC� EST� FICANDO OBESO, PROCURE O M�DICO"
SE F="272" ESCREVE "CUIDADO, VOC� EST� OBESO, PROCURE O M�DICO"
SE F="273" ESCREVE "CUIDADO, VOC� EST� FICANDO OBESO, PROCURE O M�DICO"
SE F="274" ESCREVE "CUIDADO, VOC� EST� FICANDO OBESO, PROCURE O M�DICO"
SE F="275" ESCREVE "CUIDADO, VOC� EST� FICANDO OBESO, PROCURE O M�DICO"
SE F="276" ESCREVE "CUIDADO, VOC� EST� FICANDO OBESO, PROCURE O M�DICO"
SE F="277" ESCREVE "CUIDADO, VOC� EST� FICANDO OBESO, PROCURE O M�DICO"
SE F="278" ESCREVE "CUIDADO, VOC� EST� FICANDO OBESO, PROCURE O M�DICO"
SE F="279" ESCREVE "CUIDADO, VOC� EST� FICANDO OBESO, PROCURE O M�DICO"

SE F= "280" ESCREVE "CUIDADO, VOC� EST� FICANDO OBESO, PROCURE UM M�DICO"
SE F= "281" ESCREVE "CUIDADO, VOC� EST� FICANDO OBESO, PROCURE UM M�DICO"
SE F= "282" ESCREVE "CUIDADO, VOC� EST� FICANDO OBESO, PROCURE UM M�DICO"
SE F= "283" ESCREVE "CUIDADO, VOC� EST� FICANDO OBESO, PROCURE UM M�DICO"
SE F= "284" ESCREVE "CUIDADO, VOC� EST� FICANDO OBESO, PROCURE UM M�DICO"
SE F= "285" ESCREVE "CUIDADO, VOC� EST� FICANDO OBESO, PROCURE UM M�DICO"
SE F= "286" ESCREVE "CUIDADO, VOC� EST� FICANDO OBESO, PROCURE UM M�DICO"
SE F= "287" ESCREVE "CUIDADO, VOC� EST� FICANDO OBESO, PROCURE UM M�DICO"
SE F= "288" ESCREVE "CUIDADO, VOC� EST� FICANDO OBESO, PROCURE UM M�DICO"
SE F= "289" ESCREVE "CUIDADO, VOC� EST� FICANDO OBESO, PROCURE UM M�DICO"

SE F= "290" ESCREVE "CUIDADO, VOC� EST� FICANDO OBESO, PROCURE UM M�DICO"
SE F= "291" ESCREVE "CUIDADO, VOC� EST� FICANDO OBESO, PROCURE UM M�DICO"
SE F= "292" ESCREVE "CUIDADO, VOC� EST� FICANDO OBESO, PROCURE UM M�DICO"
SE F= "293" ESCREVE "CUIDADO, VOC� EST� FICANDO OBESO, PROCURE UM M�DICO"
SE F= "294" ESCREVE "CUIDADO, VOC� EST� FICANDO OBESO, PROCURE UM M�DICO"
SE F= "295" ESCREVE "CUIDADO, VOC� EST� FICANDO OBESO, PROCURE UM M�DICO"
SE F= "296" ESCREVE "CUIDADO, VOC� EST� FICANDO OBESO, PROCURE UM M�DICO"
SE F= "297" ESCREVE "CUIDADO, VOC� EST� FICANDO OBESO, PROCURE UM M�DICO"
SE F= "298" ESCREVE "CUIDADO, VOC� EST� FICANDO OBESO, PROCURE UM M�DICO"
SE F= "299" ESCREVE "CUIDADO, VOC� EST� FICANDO OBESO, PROCURE UM M�DICO"

SE F= "300" ESCREVE "PERIGO, VOC� EST� OBESO, PROCURE UM M�DICO"
SE F= "301" ESCREVE "PERIGO, VOC� EST� OBESO, PROCURE UM M�DICO"
SE F= "302" ESCREVE "PERIGO, VOC� EST� OBESO, PROCURE UM M�DICO"
SE F= "303" ESCREVE "PERIGO, VOC� EST� OBESO, PROCURE UM M�DICO"
SE F= "304" ESCREVE "PERIGO, VOC� EST� OBESO, PROCURE UM M�DICO"
SE F= "305" ESCREVE "PERIGO, VOC� EST� OBESO, PROCURE UM M�DICO"
SE F= "306" ESCREVE "PERIGO, VOC� EST� OBESO, PROCURE UM M�DICO"
SE F= "307" ESCREVE "PERIGO, VOC� EST� OBESO, PROCURE UM M�DICO"
SE F= "308" ESCREVE "PERIGO, VOC� EST� OBESO, PROCURE UM M�DICO"
SE F= "309" ESCREVE "PERIGO, VOC� EST� OBESO, PROCURE UM M�DICO"

SE F= "310" ESCREVE "PERIGO, VOC� EST� OBESO, PROCURE UM M�DICO"
SE F= "311" ESCREVE "PERIGO, VOC� EST� OBESO, PROCURE UM M�DICO"
SE F= "312" ESCREVE "PERIGO, VOC� EST� OBESO, PROCURE UM M�DICO"
SE F= "313" ESCREVE "PERIGO, VOC� EST� OBESO, PROCURE UM M�DICO"
SE F= "314" ESCREVE "PERIGO, VOC� EST� OBESO, PROCURE UM M�DICO"
SE F= "315" ESCREVE "PERIGO, VOC� EST� OBESO, PROCURE UM M�DICO"
SE F= "316" ESCREVE "PERIGO, VOC� EST� OBESO, PROCURE UM M�DICO"
SE F= "317" ESCREVE "PERIGO, VOC� EST� OBESO, PROCURE UM M�DICO"
SE F= "318" ESCREVE "PERIGO, VOC� EST� OBESO, PROCURE UM M�DICO"
SE F= "319" ESCREVE "PERIGO, VOC� EST� OBESO, PROCURE UM M�DICO"

SE F= "320" ESCREVE "PERIGO, VOC� EST� OBESO, PROCURE UM M�DICO"
SE F= "321" ESCREVE "PERIGO, VOC� EST� OBESO, PROCURE UM M�DICO"
SE F= "322" ESCREVE "PERIGO, VOC� EST� OBESO, PROCURE UM M�DICO"
SE F= "323" ESCREVE "PERIGO, VOC� EST� OBESO, PROCURE UM M�DICO"
SE F= "324" ESCREVE "PERIGO, VOC� EST� OBESO, PROCURE UM M�DICO"
SE F= "325" ESCREVE "PERIGO, VOC� EST� OBESO, PROCURE UM M�DICO"
SE F= "326" ESCREVE "PERIGO, VOC� EST� OBESO, PROCURE UM M�DICO"
SE F= "327" ESCREVE "PERIGO, VOC� EST� OBESO, PROCURE UM M�DICO"
SE F= "328" ESCREVE "PERIGO, VOC� EST� OBESO, PROCURE UM M�DICO"
SE F= "329" ESCREVE "PERIGO, VOC� EST� OBESO, PROCURE UM M�DICO"

SE F= "330" ESCREVE "URGENTE, VOC� EST� OBESO, PROCURE UM M�DICO "
SE F= "331" ESCREVE "URGENTE, VOC� EST� OBESO, PROCURE UM M�DICO "
SE F= "332" ESCREVE "URGENTE, VOC� EST� OBESO, PROCURE UM M�DICO "
SE F= "333" ESCREVE "URGENTE, VOC� EST� OBESO, PROCURE UM M�DICO "
SE F= "334" ESCREVE "URGENTE, VOC� EST� OBESO, PROCURE UM M�DICO "
SE F= "335" ESCREVE "URGENTE, VOC� EST� OBESO, PROCURE UM M�DICO "
SE F= "336" ESCREVE "URGENTE, VOC� EST� OBESO, PROCURE UM M�DICO "
SE F= "337" ESCREVE "URGENTE, VOC� EST� OBESO, PROCURE UM M�DICO "
SE F= "338" ESCREVE "URGENTE, VOC� EST� OBESO, PROCURE UM M�DICO "
SE F= "339" ESCREVE "URGENTE, VOC� EST� OBESO, PROCURE UM M�DICO "

SE F= "340" ESCREVE "URGENTE, VOC� EST� OBESO, PROCURE UM M�DICO "
SE F= "341" ESCREVE "URGENTE, VOC� EST� OBESO, PROCURE UM M�DICO "
SE F= "342" ESCREVE "URGENTE, VOC� EST� OBESO, PROCURE UM M�DICO "
SE F= "343" ESCREVE "URGENTE, VOC� EST� OBESO, PROCURE UM M�DICO "
SE F= "344" ESCREVE "URGENTE, VOC� EST� OBESO, PROCURE UM M�DICO "
SE F= "345" ESCREVE "URGENTE, VOC� EST� OBESO, PROCURE UM M�DICO "
SE F= "346" ESCREVE "URGENTE, VOC� EST� OBESO, PROCURE UM M�DICO "
SE F= "347" ESCREVE "URGENTE, VOC� EST� OBESO, PROCURE UM M�DICO "
SE F= "348" ESCREVE "URGENTE, VOC� EST� OBESO, PROCURE UM M�DICO "
SE F= "349" ESCREVE "URGENTE, VOC� EST� OBESO, PROCURE UM M�DICO "

SE F= "350" ESCREVE "URGENTE, VOC� EST� OBESO, PROCURE UM M�DICO "
SE F= "351" ESCREVE "URGENTE, VOC� EST� OBESO, PROCURE UM M�DICO "
SE F= "352" ESCREVE "URGENTE, VOC� EST� OBESO, PROCURE UM M�DICO "
SE F= "353" ESCREVE "URGENTE, VOC� EST� OBESO, PROCURE UM M�DICO "
SE F= "354" ESCREVE "URGENTE, VOC� EST� OBESO, PROCURE UM M�DICO "
SE F= "355" ESCREVE "URGENTE, VOC� EST� OBESO, PROCURE UM M�DICO "
SE F= "356" ESCREVE "URGENTE, VOC� EST� OBESO, PROCURE UM M�DICO "
SE F= "357" ESCREVE "URGENTE, VOC� EST� OBESO, PROCURE UM M�DICO "
SE F= "358" ESCREVE "URGENTE, VOC� EST� OBESO, PROCURE UM M�DICO "
SE F= "359" ESCREVE "URGENTE, VOC� EST� OBESO, PROCURE UM M�DICO "

SE F= "360" ESCREVE "URGENTE, VOC� EST� OBESO, PROCURE UM M�DICO "
SE F> "360" ESCREVE "EMERG�NCIA, PERIGO PROCURE UM M�DICO "
SE F> "400" ESCREVE " GRAV�SSIMO, VOC� EST� COM OBESIDADE M�RBIDA, CUIDADO"








ESPERA 1
ESCREVE ""
escreve "REFLITA !"
ESPERA 1

@Fim
fundo 1
tela limpa
ESCREVE ""
escreve "- Deseja fazer outra consulta ?"
le g &
se g = "s" desvia @inicio
ESCREVE ""
escreve "Obrigado por utilizar meus servi�os"
ESCREVE ""
escreve "espero que tenha gostado!"
ESCREVE ""
escreve "at� a pr�xima"
toca "\winvox\som\intervox\saida.wav"
termina mudo
