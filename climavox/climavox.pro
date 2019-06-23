*climavox - previs�o do tempo para o sistema dosvox
*traz arquivo sonoro e informa��es atualizadas do site meteorol�gico climatempo.com.br
*autor:  Gabriel Benhur Schuck
*em 4/09/2018
*Atualiza��o com novas funcionalidades em 19/09/2018
*Conclu�do em 25/09/2018
pasta_default:="\winvox\scripts\climavox"
token:="NWUzYTAzZDM0OTJiNDJmMGQ2ZTg2OWVjYzI2MGY0NWE="
converte token de mime
id_cidade:=""
previs�o_7dias:=falso
abriu_arquivo:=falso
guarda_mp3:=""
guarda_resultado:=""
regi�o=indefinido
linhas:=[]
 busca d dir pasta_default
se d=""
escreve "Erro:  O script n�o pode continuar."
escreve "Por favor, coloque os arquivos na pasta \winvox\scripts\climavox e tente novamente"
termina mudo
fim se
busca c pasta_default+"\cidades.db"
se c="" termina "Base de dados com nome de cidades (arquivo cidades.db) n�o foi achado."
cidade:=""
fun��o in�cio()
se verifica_regi�o()="nenhuma" ou verifica_regi�o()=indefinido
menu_principal()
sen�o
cidade=regi�o
substitui cidade "(cidade)" ""
cidade:=cidade[1..pos("(",cidade)]
substitui cidade " (" ""
busca_localiza��o()
@confirma
escreve "Consultando a previs�o do tempo para "&
se regi�o="Todo o Brasil"
escreve "todo o brasil" &
sen�o se pos("(cidade)",regi�o)>0
substitui regi�o "(cidade)" ""
cidade:=regi�o
escreve regi�o &
sen�o
escreve "a regi�o " regi�o &
fim se
escreve ". Confirma?"
le mudo o &
se o ="s"
soletra "s"
se regi�o=cidade
informe("#13",cidade)
sen�o
informe("#13")
fim se
sen�o se o="n"
soletra "n"
pergunta_cidade()
sen�o se o="#0#62"
soletra "f4"
configura()
sen�o se o="#27"
termina mudo
sen�o
soletra o
escreve "Op��o inv�lida."
desvia @confirma
fim se
fim se
fim fun��o

fun��o verifica_regi�o()
busca arquivo pasta_default+"\config.cfg"
se arquivo=""
posi��o:=7406
retorna "nenhuma"
sen�o
linhas:=conteudo(pasta_default+"\config.cfg")
separa regi�o linhas[0] "="
separa posi��o linhas[1] "="
separa id_cidade linhas[2] "="
separa guarda_mp3 linhas[3] "="
separa guarda_resultado linhas[4] "="
regi�o:=regi�o[1]
posi��o:=posi��o[1]
se id_cidade[1]<>indefinido id_cidade:=id_cidade[1]
se guarda_mp3[1]<>indefinido guarda_mp3:=guarda_mp3[1]
se guarda_resultado[1]<>indefinido guarda_resultado:=guarda_resultado[1]
retorna regi�o
fim se
fim fun��o

fun��o pergunta_regi�o()
escreve "Em qual regi�o voc� est�? Selecione com as setas:"
menu cria 1 1 30 3
menu adiciona "Consultar por cidade"
menu adiciona "Centro-oeste"
menu adiciona "Norte"
menu adiciona "Nordeste"
menu adiciona "Sul"
menu adiciona "Sudeste"
menu adiciona "Todo o Brasil"
menu executa n l regi�o
se l="#27" menu_principal()
menu termina
informe(l)
fim fun��o

fun��o informe(l,cidade="")
url:=""
r:=""
se regi�o="Todo o Brasil" url:="https://audio.climatempo.com.br//radios/br.mp3"
 se regi�o="Norte" url:="https://audio.climatempo.com.br//radios/no.mp3"
se regi�o="Nordeste" url:="https://audio.climatempo.com.br//radios/ne.mp3"
se regi�o="Centro-oeste" url:="https://audio.climatempo.com.br//radios/co.mp3"
se regi�o="Sudeste" url:="https://audio.climatempo.com.br//radios/se.mp3"
se regi�o="Sul" url:="https://audio.climatempo.com.br//radios/su.mp3"
se regi�o="Consultar por cidade" e l="#13" pergunta_cidade()
se l<>"#13" e l<>"#27"
escreve "para selecionar uma op��o, use as setas."
pergunta_regi�o();
fim se
se cidade=indefinido
se abrearq(#1,pasta_default+"\config.cfg","E")
escreve #1 "regi�o=" &
escreve #1 regi�o
escreve #1 "posi��o=" &
escreve #1 posi��o
escreve #1 "id_cidade="
escreve #1 "guarda_mp3=" guarda_mp3
escreve #1 "guarda_resultado=" guarda_resultado
fecha #1
mp3:=regi�o+".mp3"
substitui mp3 " " "-"
checa_conex�o()
baixa mudo url mp3 c
se pos("audio",c)=1
mci r "open "+mp3+" alias sound"
se r<>1
 remove mp3 &
termina "Erro ao abrir arquivo de �udio para reprodu��o"
fim se
mci_cmd:="play sound from "
concatena mci_cmd posi��o
mci r mci_cmd
espera 1
mci r "status sound mode"
enquanto r="playing"
mci r "status sound mode"
observa teclado t
se t=1 quebra
espera 500 ms
fim enquanto
se guarda_mp3<>"sim" ou guarda_mp3="" remove mp3 &
termina mudo
fim se
sen�o
remove mp3 &
termina "N�o consegui obter a previs�o do tempo em �udio."
fim se
sen�o
url:="http://apiadvisor.climatempo.com.br/api/v1/weather/locale/"+id_cidade+"/current?token="+token
checa_conex�o()
baixa mudo url "resultado.json" c
converte cidade de utf8
dados:=conteudo("resultado.json")
se pos("error",dados[0])>0
remove "resultado.json" &
termina "O servi�o online de previs�o do tempo est� ocupado, tente mais tarde"
fim se
substitui��o:=""
aspas:=""""
dados:=conteudo("resultado.json")
abriu:=abrearq(#1,"resultado.json","E")
se abriu=0 escreve "N�o consegui abrir o arquivo para escrita"
se abriu=0 remove "resultado.json"
se abriu=0 termina mudo
i:=0
contador:=0
enquanto i<tamanho(dados)
linha:=dados[i]
substitui linha "\u00" "%"
converte linha de url
separa item linha ","
enquanto contador<tamanho(item)
p:=pos(":",item[contador])+1
se item[contador][p]="{"
enquanto item[contador][p]<>":"
p=p+1
fim enquanto
p=p+1
fim se
se p>1
se inteiro(item[contador][p])
substitui��o=substitui��o+item[contador][1..p-1]+aspas+item[contador][p..tamanho(item[contador])]+aspas+","
sen�o
substitui��o=substitui��o+item[contador]+","
fim se
fim se
substitui substitui��o "null," aspas+"null"+aspas+","
contador=contador+1
fim enquanto
p:=tamanho(substitui��o)
@loop1
se inteiro(substitui��o[p])=indefinido
p:=p-1
desvia @loop1
sen�o
substitui substitui��o[p..tamanho(substitui��o)] substitui��o[p] substitui��o[p]+aspas
fim se
substitui substitui��o "}"+ aspas aspas+"}"
substitui substitui��o "]"+ aspas "]"
substitui substitui��o[tamanho(substitui��o)] "," ""
substitui substitui��o aspas+aspas aspas
substitui substitui��o "null," aspas+"null"+aspas+","
substitui substitui��o "true" "verdadeiro"
escreve #1 substitui��o
i:=i+1
fim enquanto
fecha #1
dados:=conteudo("resultado.json","json")
abrearq(#1,pasta_default+"\config.cfg","E")
escreve #1 "regi�o=" &
escreve #1 "(cidade)" dados.name " (" dados.state ")"
escreve #1 "posi��o=" &
escreve #1 posi��o
escreve #1 "id_cidade=" id_cidade
escreve #1 "guarda_mp3=" guarda_mp3
escreve #1 "guarda_resultado=" guarda_resultado
fecha #1
remove "resultado.json" &
arquivo:="previs�o do tempo para "+dados.name+" ("+dados.state+").txt"
se guarda_resultado="sim" abrearq(#1,arquivo,"E")
escreve "Agora em " dados.name " (" dados.state "): " &
*se dados.data.icon="5"
*escreve "Chuvoso" &
*sen�o se dados.data.icon="4r"
*escreve "Sol com muitas nuvens" &
*sen�o se dados.data.icon="5n"
*escreve "Chuvoso" &
*sen�o se dados.data.icon="2r"
*escreve "Sol com muitas nuvens e chuva"&
*sen�o se dados.data.icon="2rn"
*escreve "Muitas nuvens e chuva" &
*sen�o se dados.data.icon="2"
*escreve "sol com algumas nuvens" &
*sen�o se dados.data.icon="4t"
*escreve "Chuva com trovoadas" &
*sen�o se dados.data.icon="4tn"
*escreve "Muitas nuvens, chuva e raios" &
*sen�o se dados.data.icon="2n"
*escreve "Algumas nuvens" &
*sen�o se dados.data.icon="3"
*escreve "Nublado"
*sen�o se dados.data.icon="3n"
*escreve "Nublado"
*sen�o
escreve dados.data.condition &
*fim se
escreve " - temperatura de " dados.data.temperature " graus."
se guarda_resultado="sim"
escreve #1 "Agora em " dados.name " (" dados.state "): " &
escreve #1 dados.data.condition &
escreve #1 " - temperatura de " dados.data.temperature " graus."
escreve #1 ""
fim se
@perguntapormaisinfo
escreve  "Mais informa��es (s/n)?"
le o&
se o="s"
escreve "Intensidade do vento:  " &
escreve dados.data.wind_velocity " kil�metros por hora."
escreve "umidade relativa do ar:  " dados.data.humidity "."
escreve "Press�o do ar:  " dados.data.pressure "."
escreve "Sensa��o t�rmica:  "  dados.data.sensation " graus."
se guarda_resultado="sim"
escreve #1 "Intensidade do vento:  " &
escreve #1 dados.data.wind_velocity " kil�metros por hora."
escreve #1 "umidade relativa do ar:  " dados.data.humidity "."
escreve #1 "Press�o do ar:  " dados.data.pressure "."
escreve #1 "Sensa��o t�rmica:  "  dados.data.sensation " graus."
escreve #1 ""
fim se
sen�o se o="n" ou o="#27"
se guarda_resultado="sim" fecha #1
termina "ok"
sen�o
desvia @perguntapormaisinfo
fim se
se guarda_resultado="sim" fecha #1
url="http://apiadvisor.climatempo.com.br/api/v1/forecast/locale/"+id_cidade+"/days/15?token="+token
checa_conex�o()
baixa mudo url "resultado.json" c
se pos("json",c)<1 termina "Erro ao comunicar com a api meteorol�gica do tempo"
dados:=conteudo("resultado.json")
se pos("error",dados[0])>0
remove "resultado.json" &
termina "O servi�o online de previs�o do tempo est� ocupado para mostrar a previs�o dos pr�ximos 7 dias, tente mais tarde"
fim se
abriu:=abrearq(#1,"resultado.json","E")
se abriu=0 escreve "N�o consegui abrir o arquivo para escrita"
se abriu=0 remove "resultado.json"
se abriu=0 termina mudo
i=0
enquanto i<tamanho(dados)
linha:=dados[i]
substitui linha "\u00" "%"
converte linha de url
separa item linha ","
contador:=0
substitui��o:=""
enquanto contador<tamanho(item)
p:=pos(":",item[contador])+1
se item[contador][p]="{"
enquanto item[contador][p]<>":"
p=p+1
fim enquanto
p=p+1
fim se
se p>=1
se inteiro(item[contador][p])
substitui��o=substitui��o+item[contador][1..p-1]+aspas+item[contador][p..tamanho(item[contador])]+aspas+","
sen�o
substitui��o=substitui��o+item[contador]+", "
fim se
fim se
contador=contador+1
fim enquanto
p:=tamanho(substitui��o)
@loop2
se inteiro(substitui��o[p])=indefinido
p:=p-1
desvia @loop2
sen�o
substitui substitui��o[p..tamanho(substitui��o)] substitui��o[p] substitui��o[p]+aspas
fim se
substitui substitui��o "}"+ aspas aspas+"}"
substitui substitui��o "]"+ aspas "]"
substitui substitui��o[tamanho(substitui��o)] "," ""
substitui substitui��o aspas+aspas aspas
substitui substitui��o "null," aspas+"null"+aspas+","
substitui substitui��o "true" "verdadeiro"
escreve #1 substitui��o
i:=i+1
fim enquanto
fecha #1
dados:=conteudo("resultado.json","json")
remove "resultado.json" &
escreve "Veja como estar� o tempo nos pr�ximos 7 dias."
procurar_data(arquivo)
fim se
fim fun��o

fun��o pergunta_cidade()
linhas:=conteudo(pasta_default+"\cidades.db")
escreve "Digite a cidade, ou enter para escolher a regi�o:"
@denovo
l� cidade
se cidade="" pergunta_regi�o()
separa palavras cidade " "
cidade:=""
contador:=0
enquanto contador<tamanho(palavras)
palavras[contador][1]=maiusc(palavras[contador][1])
concatena cidade palavras[contador]
se contador<tamanho(palavras) concatena cidade " "
contador=contador+1
fim enquanto
cidade=trim(cidade)
substitui cidade "De " "de "
substitui cidade "Do " "do "
substitui cidade "Dos " "dos "
substitui cidade "Da " "da "
substitui cidade "Das " "das "
resultado:=[]
achado=0
para dados em linhas
achado=pos(cidade,dados)
se achado>=1 quebra
fim para
se achado>=1
regi�o:=""
converte cidade para utf
url:="http://apiadvisor.climatempo.com.br/api/v1/locale/city?name="+cidade+"&token="+token
checa_conex�o()
baixa mudo url "resultado.json" c
se pos("json",c)=0 termina "N�o consegui obter a lista de cidades por estado.  Tente de novo mais tarde";
dados:=conteudo("resultado.json")
abriu:=abrearq(#1,"resultado.json","E")
se abriu=0 escreve "N�o consegui abrir arquivo para escrita"
se abriu=0 remove "resultado.json" &
se abriu=0 termina mudo
i:=0
enquanto i<tamanho(dados)
linha:=dados[i]
substitui linha "\u00" "%"
converte linha de url
escreve #1 linha
i=i+1
fim enquanto
fecha #1
se pos("error",dados[0])>0
remove "resultado.json" &
termina "O servi�o online de previs�o do tempo est� ocupado, tente mais tarde"
fim se
se pos("[]",dados[0])>0
remove "resultado.json" &
escreve "N�o encontrado informa��es meteorol�gicas para essa cidade, tente parte do nome"
desvia @denovo
fim se
dados:=conteudo("resultado.json","json")
se tamanho(dados)=1
id_cidade=dados[0].id
informe("#13",cidade)
fim se
se tamanho(dados)>1
escreve tamanho(dados)+" resultados encontrados. Selecione:"
escolher_cidade(dados)
fim se
sen�o
escreve "Essa cidade n�o existe ou n�o consta na minha base de dados, tente outra:"
desvia @denovo
fim se
fim fun��o

fun��o escolher_cidade(resultado)
@promenu
menu cria 1 1 30 3
para op��o em resultado
menu adiciona op��o.name+" ("+op��o.state+")"
fim para
menu executa n l cidade
se l<>"#13"
escreve "Use as setas para selecionar."
desvia @promenu
fim se
se l="#27" termina "terminado"
menu termina
regi�o:=""
n:=n-1
id_cidade=resultado[n].id
converte cidade de utf
informe(l,cidade)
fim fun��o

fun��o procurar_data(arquivo)
se guarda_resultado="sim"
se abriu_arquivo=falso
abrearq(#1,arquivo,"A")
abriu_arquivo=verdadeiro
fim se
fim se
contador:=0
achado:=0
escreve "Digite a data no formato dd/mm/aaaa:"
l� data_usu�rio
se data_usuario=""
se guarda_resultado="sim" fecha #1
termina "terminado"
fim se
se pos("/",data_usu�rio)=0
escreve "Formato de data inv�lido."
procurar_data(arquivo)
sen�o
para info em dados.data
se data_usuario=info.date_br
achado=1
quebra
fim se
contador=contador+1
fim para
se achado=0
escreve "Formato de data inv�lido ou fora do per�odo de 7 dias"
procurar_data()
fim se
d:=dados.data[contador].date_br[1..2]
m:=dados.data[contador].date_br[4..5]
a:=dados.data[contador].date_br[7..10]
dia_semana=d+2*m+3*(m+1)/5+a+a/4-a/100+a/400+2
dia_semana=dia_semana%7
substitui dia_semana 0 "S�bado"
substitui dia_semana 1 "Domingo"
substitui dia_semana 2 "Segunda-feira"
substitui dia_semana 3 "Ter�a-feira"
substitui dia_semana 4 "Quarta-feira"
substitui dia_semana 5 "Quinta-feira"
substitui dia_semana 6 "Sexta-feira"
se previs�o_7dias=falso
se guarda_resultado="sim"
escreve #1 "Previs�o do tempo para os pr�ximos dias:"
escreve #1 ""
escreve #1 ""
previs�o_7dias=verdadeiro
fim se
fim se
se dados.data[contador].date_br=data
escreve "Hoje ("+data+"):  " &
sen�o
escreve dia_semana+" ("+dados.data[contador].date_br+"):  " &
fim se
escreve dados.data[contador].text_icon.text.phrase.reduced
escreve "M�nima de " dados.data[contador].temperature.min " e m�xima de " dados.data[contador].temperature.max " graus."
se guarda_resultado="sim"
se dados.data[contador].date_br=data
escreve #1 "Hoje ("+data+"):  " &
sen�o
escreve #1 dia_semana+" ("+dados.data[contador].date_br+"):  " &
fim se
escreve #1 dados.data[contador].text_icon.text.phrase.reduced
escreve #1 "M�nima de " dados.data[contador].temperature.min " e m�xima de " dados.data[contador].temperature.max " graus."
escreve #1 ""
fim se
fim se
@outradata
escreve "Deseja consultar outra data?"
le o &
se o="s"
procurar_data(arquivo)
sen�o se o="n" ou o="#27"
se guarda_resultado="sim" fecha #1
termina "ok"
sen�o
desvia @outradata
fim se
fim fun��o

fun��o checa_conex�o()
conecta mudo #1 "google.com.br" 80
checa c
se c=1 termina "Parece que voc� n�o est� conectado � internet. Conecte-se e tente novamente"
fecha #1
retorna
fim fun��o

fun��o configura()
escreve "Editore as configura��es."
escreve "Tecle f9 para alterar, selecione a op��o desejada com as setas e depois enter."
escreve "Use esc para sair."
resposta:=guarda_mp3
resposta1:=guarda_resultado
form cria
form campo "Guarda os �udios?" resposta lista ["sim","n�o"]
form campo "Guarda resultado da previs�o em arquivo?" resposta1 lista ["sim","n�o"]
form edita
abriu:=abrearq(#1,pasta_default+"\config.cfg","E")
se abriu=0 escreve "N�o consegui abrir o arquivo de configura��o"
se abriu=0 in�cio()
escreve #1 linhas[0]
escreve #1 linhas[1]
escreve #1 linhas[2]
se resposta="sim"
escreve #1 "guarda_mp3=sim"
sen�o
escreve #1 "guarda_mp3=n�o"
fim se
se resposta1="sim"
escreve #1 "guarda_resultado=sim"
sen�o
escreve #1 "guarda_resultado=n�o"
fim se
fecha #1
escreve "Ok, configurado."
in�cio()
fim fun��o

fun��o menu_principal()
escreve "O que deseja fazer?"
@promenu1
menu cria 1 1 30 3
menu adiciona "Consultar por regi�o"
menu adiciona "Consultar por cidade"
menu executa n l t
se l<>"#13"
escreve "Use as setas para selecionar"
desvia @promenu1
termina
fim se
se n=1 pergunta_regi�o()
se n=2 busca_localiza��o()
fim fun��o

fun��o busca_localiza��o()
se pos("(",regi�o)=0 ou regi�o=indefinido retorna
checa_conex�o()
url:="http://gabrielschuck.000webhostapp.com/busca-cidade"
baixa mudo url "resultado.json" c
se pos ("json",c)=0
remove "resultado.json" &
pergunta_cidade()
fim se
dados:=conteudo("resultado.json")
abriu:=abrearq(#1,"resultado.json","E")
se abriu=0 escreve "N�o consegui abrir o arquivo para escrita"
se abriu=0 remove "resultado.json"
se abriu=0 termina mudo
i:=0
enquanto i<tamanho(dados)
linha:=dados[i]
substitui linha "\u00" "%"
converte linha de url
escreve #1 linha
i=i+1
fim enquanto
fecha #1
dados=conteudo("resultado.json","json")
se cidade=dados.cidade
remove "resultado.json" &
retorna
sen�o
remove "resultado.json" &
@confirma1
escreve "Parece que voc� est� em " dados.cidade " (" dados.estado ")."
escreve "Deseja consultar a previs�o do tempo para esta cidade?"
le o &
se o="s"
cidade=dados.cidade
converte cidade para utf
url:="http://apiadvisor.climatempo.com.br/api/v1/locale/city?name="+cidade+"&token="+token
checa_conex�o()
baixa mudo url "resultado.json" c
se pos("json",c)=0 termina "N�o consegui obter a lista de cidades por estado.  Tente de novo mais tarde";
dados:=conteudo("resultado.json")
abriu:=abrearq(#1,"resultado.json","E")
se abriu=0 escreve "N�o consegui abrir arquivo para escrita"
se abriu=0 remove "resultado.json"
se abriu=0 termina mudo
i:=0
enquanto i<tamanho(dados)
linha:=dados[i]
substitui linha "\u00" "%"
converte linha de url
escreve #1 linha
i=i+1
fim enquanto
fecha #1
se pos("error",dados[0])>0
remove "resultado.json" &
termina "O servi�o online de previs�o do tempo est� ocupado, tente mais tarde"
fim se
se pos("[]",dados[0])>0
remove "resultado.json" &
escreve "N�o encontrado informa��es meteorol�gicas para essa cidade, tente parte do nome."
pergunta_cidade()
fim se
dados:=conteudo("resultado.json","json")
se tamanho(dados)=1
id_cidade=dados[0].id
informe("#13",cidade)
fim se
se tamanho(dados)>1
escreve tamanho(dados)+" resultados encontrados. Selecione:"
escolher_cidade(dados)
fim se
sen�o se o="n"
se cidade="" ou cidade=dados.cidade pergunta_cidade()
se cidade<>"" e cidade<>dados.cidade retorna
sen�o
desvia @confirma1
fim se
fim se
fim fun��o

in�cio()
