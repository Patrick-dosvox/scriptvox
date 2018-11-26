* Copia uma/s faixa/s do CD-�udio, para arquivo/s .mp3
* Usa o programa CDEX, que dever� estar ou em \cdex* ou em
* "\Arquivos deprogramas\cdex*"
* Autor: Neno Albernaz
* Em 09/01/2002
* Modificado por: Tiago Melo Casal
* Em: 26/02/2002

***********************************************************************
*
* Descri��o de algumas vari�veis
* a b c - Para situa��es variadas
* d - linha de execu��o do CDex
* f - N�mero de faixas
* g - n�mero da faixa a ser gravada
* i - Nome do arquivo resultado
*
***********************************************************************



seja q "C:\WINVOX\SCRIPTS\cda2mp3.cmd"
seja d ""
seja p 0
escreve "Script para usar com o CDex"
escreve
escreve "Copia faixa/s do CD-�udio para arquivo/s .mp3"
repete a 3
escreve
fim repete
bipa
se d <> "" desvia @sim
se d="" desvia @procuraDir
@n�oAchei
bipa 1
escreve "CDex n�o foi achado"
escreve "Deseja indicar onde o CDex foi instalado?"
@QRCDex
l� a &
se a="#0#66" chama @f8
se a="#0#66" desvia @QRCDex
se a="#0#101" chama @Controlf8
se a="#0#101" desvia @QRCDex
se a <> "s" escreve "Para usar esse script, instale o CDex..."
se a <> "s" desvia @termina
se a="s" escreve "Digite o caminho do diret�rio onde o CDex est� instalado"
l� a
se a="" escreve "Desistiu"
se a="" desvia @termina
se a <> ""
seja d "seja d ""
concatena d a
concatena d "\cdex.exe""
chama @registraCaminhoCDex
se a="0" desvia @sim
se a="1" desvia @termina

@procuraDir
dir troca "\"
seja d "\"
chama @busca
dir troca "\arquiv~1"
seja d "\arquiv~1\"
chama @busca
desvia @n�oAchei
@busca
busca a dir "cdex*"
    se a="" retorna
concatena d a
concatena d "\cdex.exe"

@sim
escreve "Precione U para copiar uma faixa ou " &
escreve "T para copiar todas as faixas"
@oP
l� e &
se e="#0#66" chama @f8
se e="#0#66" desvia @oP
se e="#0#101" chama @Controlf8
se e="#0#101" desvia @oP
se e="u"
desvia @op��oU
sen�o
se e="t"
desvia @op��oT
sen�o
se e="#27"
desvia @termina
sen�o
desvia @sim
fim se


@op��oT
escreve "Aguarde..."
chama @CD�udioPresente
desvia @executa


@op��oU
escreve "Digite o n�mero da faixa a ser gravada"
l� g
se g=""
    escreve "Desistiu"
bipa
desvia @sim
fim se
escreve "Deseja dar um nome ao arquivo resultado?"
l� a &
se a="#0#66" chama @f8
se a="#0#66" desvia @NAR
se a="#0#101" chama @Controlf8
se a="#0#101" desvia @NAR
se a <> "s"
seja h 1
escreve "Aguarde..."
desvia @prossiga
sen�o
seja h 0
fim se
@nomeaArquivoResultado
escreve "Digite o nome do arquivo resultado"
escreve "(N�o especifique diret�rio nem extens�o)"
l� i
se i=""
    escreve "Desistiu"
bipa
desvia @sim
sen�o
se p="1"
desvia @fow
sen�o
se i <> ""
escreve "Aguarde..."
@prossiga
chama @CD�udioPresente
desvia @executa
fim se


@executa
executa d &
chama @esperaUmSegundo
captura ativa a
se a =* "CDex"
desvia @seE
sen�o
tela normal
escreve "Ou CDex foi fechado ou o foco est� fora da janela."
escreve "Tem 5 segundos para maximizar a janela do CDex, ou abrir o"
escreve "CDex manualmente; ou esse script ser� fechado."
fim se
tela minimizada
repete c 5
chama @esperaUmSegundo
captura ativa a
se a=*"CDex" desvia @seE
fim repete
desvia @termina

@fow
tela minimizada
chama @esperaUmSegundo
captura ativa a
se a <> "File Overwrite Warning"
tela normal
escreve "Erro! Foco est� fora da janela. Tem 5 segundos"
escreve "para reestabelecer o foco, ou o script ser� fechado."
fim se
tela minimizada
repete c 5
chama @esperaUmSegundo
captura ativa a
se a="File Overwrite Warning" desvia @seE
fim repete

@seE
se e="t"
aciona "ctrl+a"
chama @esperaUmSegundo
aciona "f9"
chama @esperaUmSegundo
desvia @olhaAtiva
fim se
aciona "home"
chama @esperaUmSegundo
chama @achaFaixa
se h="1" aciona "f9"
se h="1" chama @esperaUmSegundo
se h="1" desvia @olhaAtiva
se h="0" aciona "f2"
se h="0" digita i
se h="0" chama @esperaUmSegundo
se h="0" aciona "esc"
se h="0" chama @esperaUmSegundo
se h="0" seja b "aciona ""
se h="0" seja c "up"
se h="0" concatena b c
se h="0" concatena b """
se g < f cmd b
chama @esperaUmSegundo
aciona "f9"
chama @esperaUmSegundo

@olhaAtiva
tela minimizada
chama @esperaUmSegundo
seja b 0
@capAtiva
captura ATIVA a
se a=*"Extract"
bipa 1
desvia @capAtiva
sen�o
se a=*"CDex"
aciona "alt+f4"
tela normal
escreve "Conclu�do"
escreve
escreve
desvia @recOutraVez
sen�o
se a="File Overwrite Warning"
desvia @arquivoExiste
desvia @capAtiva
sen�o
se b="0"
tela normal
chama @esperaUmSegundo
tela minimizada
chama @esperaUmSegundo
soma b 1
desvia @capAtiva
sen�o
tela normal
escreve "Erro! A janela est� fora de foco. Voc� tem"
escreve "5 segundos para reestabelecer o foco, se o CDex estiver"
escreve "aberto, ou script ser� fechado."
tela minimizada
fim se
repete c 5
chama @esperaUmSegundo
captura ativa a
se a=*"Extract" desvia @olhaAtiva
se a=*"CDex" desvia @olhaAtiva
se a="File Overwrite Warning" desvia @olhaAtiva
fim repete
desvia @termina

@arquivoExiste
tela normal
escreve "O/s arquivo/s resultado/s j� existe/m"
se e="t" escreve "Deseja reescrev�-lo/s?"
se e="u" escreve "Deseja reescrev�-lo?"
@dRe
l� a &
se a="#0#66" chama @f8
se a="#0#66" desvia @dRe
se a="#0#101" chama @Controlf8
se a="#0#101" desvia @dRe
se a <> "s" desvia @dN
se h="1"
tela minimizada
chama @esperaUmSegundo
captura ativa a
se a="File Overwrite Warning" desvia @aC
se a <> "File Overwrite Warning"
tela normal
escreve "Erro! Janela saiu de foco. Tem 5 segundos para reestabelecer"
escreve "o foco se o CDex estiver aberto, ou o script ser� fechado."
desvia @aC1
fim se
se e="t"
tela minimizada
chama @esperaUmSegundo
captura ativa a
se a <> "File Overwrite Warning"
tela normal
escreve "Erro! Janela saiu de foco. Tem 5 segundos para reestabelecer"
escreve "o foco se o CDex estiver aberto, ou o script ser� fechado"
tela minimizada
fim se
repete b 5
chama @esperaUmSegundo
captura ativa a
se a="File Overwrite Warning" desvia @cC
fim repete
desvia @termina
se h="0"
escreve "Digite o novo nome do arquivo resultado"
escreve "(N�o especifique diret�rio nem extens�o)"
seja p 1
desvia @nomeaArquivoResultado
@cC
aciona "alt+a"
chama @esperaUmSegundo
desvia @olhaAtiva
@aC1
tela minimizada
repete b 5
chama @esperaUmSegundo
captura ativa a
se a="File Overwrite Warning" desvia @aC
fim repete
desvia @termina
@aC
aciona " "
chama @esperaUmSegundo
desvia @olhaAtiva
@dN
escreve "Cancelando a c�pia..."
tela minimizada
chama @esperaUmSegundo
captura ativa a
se a <> "File Overwrite Warning" tela normal
se a <> "File Overwrite Warning" escreve "CDex continua aberto"
se a <> "File Overwrite Warning" desvia @termina
aciona "esc"
chama @esperaUmSegundo
aciona "alt+f4"
tela normal
escreve "C�pia cancelada"
desvia @termina

@recOutraVez
tela normal
escreve "Quer fazer outra c�pia?"
l� a &
se a="s" desvia @sim
se a <> "s" desvia @termina


@CD�udioPresente
mci a "status cdaudio media present"
se a="false"
escreve "N�o h� CD-�udio presente."
escreve "Para prosseguir, insira um CD-�udio e precione Enter."
escreve "Para voltar ao menu principal cancelando a opera��o, " &
escreve "precione Escape"
desvia @que
sen�o
se a="true"
mci f "status cdaudio number of tracks"
retorna
fim se
@que
l� a &
se a="#27"
escreve "Cancelando e voltando ao menu principal..."
bipa
desvia @sim
sen�o
desvia @CD�udioPresente
fim se


@achaFaixa
seja c 0
@repete
    aciona "down"
    soma c 1
se c < g desvia @repete
retorna


@esperaUmSegundo
bipa 1
espera 1
retorna


@registraCaminhoCDex
* programa de teste de remo��o de uma linha de um arquivo
* Autor: Antonio Borges
* Em 22/1/2002
* Modificado por Tiago Melo Casal, para funcionar com esse script


remove "c:\windows\temp\tmp.tmp" &
abre #1 q
abre #2 "c:\windows\temp\tmp.tmp" &

repete a 22
l� #1 b
   checa c
   se c <> 0 desvia @erro
   escreve #2 b
fim repete
l� #1 b
   checa c
   se c <> 0 desvia @erro
escreve #2 d
repete a 50000
l� #1 b
   checa c
   se c <> 0 desvia @final
   escreve #2 b
fim repete
@final
fecha #1
fecha #2
replica "c:\windows\temp\tmp.tmp" q
remove "c:\windows\temp\tmp.tmp"
 escreve "Registro conclu�do!"
cmd d
seja a "0"
retorna
@erro
fecha #1
fecha #2
remove "c:\windows\temp\tmp.tmp"
 escreve "Erro!"
 escreve "Tarefa n�o pode ser conclu�da."
seja a "1"
retorna
*** Fim do script de remo��o de linha modificado ***


@f8
seja n hora
copia m n 1 2
concatena m " horas e "
copia o n 4 5
concatena o "minutos"
concatena m o
escreve m
retorna

@Controlf8
seja m dia
seja n data
concatena m "  "
copia o n 1 2
concatena o " de "
concatena m o
copia o n 4 5
substitui o "01" "janeiro de "
substitui o "02" "fevereiro de "
substitui o "03" "oar�o de "
substitui o "04" "abril de "
substitui o "05" "oaio de "
substitui o "06" "junho de "
substitui o "07" "julho de "
substitui o "08" "agosto de "
substitui o "09" "seteobro de "
substitui o "10" "outubro de "
substitui o "11" "noveobro de "
substitui o "12" "dezeobro de "
concatena m o
copia o n 7 10
concatena m o
escreve m
retorna


@termina
bipa
bipa
escreve "Fim"
termina mudo
