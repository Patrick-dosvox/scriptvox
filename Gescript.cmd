*Gestor de execu��o, cria��o e edi��o de Scripts;
*Autor: Cleverson Casarin Uliana;
*Hist�rico:
*02/06/2005: Vers�o 0.6
*18/03/2005: Vers�o 0.5 beta
*11/03/2005: In�cio do desenvolvimento

seja $primeiroitem "L - lista de scripts por categoria"
seja $segundoitem "X - executar script"
seja $terceiroitem "M - ler manual deste programa"
seja $quartoitem "F ou Esc - fim do Gestor"

escreve mudo "Gestor de scripts vers�o "&
toca "c:\winvox\som\gescript\geinic.wav"
escreve "0.6"
@qualop��o
escreve mudo "qual sua op��o ?"
toca "c:\winvox\som\gescript\gequalop.wav"
l� $letraitem &
se $letraitem = "#0#80" desvia @menuajuda
se $letraitem = "#0#72" desvia @menuajuda
desvia @compartilhadas

@menuajuda
tela limpa
menu cria 1 1 60 3
menu adiciona $primeiroitem
menu adiciona $segundoitem
menu adiciona $terceiroitem
menu adiciona $quartoitem
menu executa $numeroitem $letraitem $textoitem
se $letraitem = "#13" desvia @checan�mero
@compartilhadas
se $letraitem = "#0#59" desvia @ajuda
se $letraitem = "#27" desvia @fim
se $letraitem = "L" desvia @categorias
se $letraitem = "X" desvia @digitar
se $letraitem = "M" desvia @manual
se $letraitem = "F" desvia @fim
escreve mudo "Op��o Inv�lida; tecle F1 para Ajuda."
toca "c:\winvox\som\gescript\geopinva.wav"
desvia @qualop��o

@ajuda
escreve mudo $primeiroitem
toca "c:\winvox\som\gescript\geaju01.wav"
escreve mudo $segundoitem
toca "c:\winvox\som\gescript\geaju02.wav"
escreve mudo $terceiroitem
toca "c:\winvox\som\gescript\geaju03.wav"
escreve mudo $quartoitem
toca "c:\winvox\som\gescript\geaju04.wav"
escreve mudo "use as setas verticais e Enter para conhecer e ativar as op��es"
toca "c:\winvox\som\gescript\geaju05.wav"
desvia @qualop��o

@checan�mero
se $numeroitem = 1 desvia @categorias
se $numeroitem = 2 desvia @digitar
se $numeroitem = "3" desvia @manual
se $numeroitem = 4 desvia @fim

@digitar
escreve mudo "Digite o nome do script a executar:"
toca "c:\winvox\som\gescript\gedignom.wav"
l� $nomescript
se $nomescript = "" desvia @qualop��o
@executar
seja $scriptvox "c:\winvox\scripvox "
seja $espaco pos " " $nomescript
se n�o $espaco = "0"
concatena $scriptvox """
concatena $scriptvox $nomescript
concatena $scriptvox """
executa $scriptvox
desvia @qualop��o
fim se
concatena $scriptvox $nomescript
executa $scriptvox
desvia @qualop��o

@categorias
tela limpa
escreve mudo "Selecione uma categoria com as setas, depois Enter"
toca "c:\winvox\som\gescript\geselcat.wav"
dir troca "c:\winvox\scripts"
menu cria 1 1 60 10
busca $categoria dir "*.*"
busca $categoria pr�ximo
busca $categoria pr�ximo
enquanto $categoria <> ""
menu adiciona $categoria
busca $categoria pr�ximo
fim enquanto
menu executa $numerocategoria $letracategoria $textocategoria
se $letracategoria = "#13" desvia @iniscripts
se $letracategoria = "#27" desvia @qualop��o
desvia @categorias

@iniscripts
tela limpa
escreve mudo "Escolha o Script; F1 ajuda."
toca "c:\winvox\som\gescript\geesscri.wav"
dir troca $textocategoria
@scripts
menu cria 1 1 60 20
busca $script "*.cmd"
enquanto $script <> ""
substitui $script ".cmd" ""
menu adiciona $script
busca $script pr�ximo
fim enquanto
menu executa $numeroscript $letrascript $nomescript

seja $primeirois "ENTER ou X - executa"
seja $segundois "E - edita"
seja $terceirois "R - remove"
seja $quartois "N - troca o nome"
seja $quintois "A - adiciona script"
seja $sextois "BACKSPACE - volta �s categorias"
seja $setimois "ESC - termina"
se $letrascript = "#0#59"
escreve mudo $primeirois
toca "c:\winvox\som\gescript\geajs01.wav"
escreve mudo $segundois
toca "c:\winvox\som\gescript\geajs02.wav"
escreve mudo $terceirois
toca "c:\winvox\som\gescript\geajs03.wav"
escreve mudo $quartois
toca "c:\winvox\som\gescript\geajs04.wav"
escreve mudo $quintois
toca "c:\winvox\som\gescript\geajs05.wav"
escreve mudo $sextois
toca "c:\winvox\som\gescript\geajs06.wav"
escreve mudo $setimois
toca "c:\winvox\som\gescript\geajs07.wav"
escreve mudo "Tecle F9 para ler as op��es com as setas"
toca "c:\winvox\som\gescript\geajs08.wav"
desvia @scripts
fim se
se $letrascript = "#0#67" desvia @menuajs
se $letrascript = "#13" desvia @executar
desvia @comparts

@menuajs
menu cria 1 1 60 6
menu adiciona $primeirois
menu adiciona $segundois
menu adiciona $terceirois
menu adiciona $quartois
menu adiciona $quintois
menu adiciona $sextois
menu adiciona $setimois
menu executa $numajuda $letrascript $textoajuda
se $letrascript = "#13" desvia @checanums
@comparts
se $letrascript = "X" desvia @executar
se $letrascript = "E" desvia @editar
se $letrascript = "R" desvia @remover
se $letrascript = "N" desvia @renomear
se $letrascript = "A" desvia @adicionar
se $letrascript = "#8" desvia @categorias
se $letrascript = "#27" desvia @qualop��o
escreve mudo "Op��o Inv�lida; tecle F1 para Ajuda."
toca "c:\winvox\som\gescript\geopinva.wav"
desvia @scripts

@checanums
se $numajuda = 1 desvia @executar
se $numajuda = 2 desvia @editar
se $numajuda = 3 desvia @remover
se $numajuda = 4 desvia @renomear
se $numajuda = 5 desvia @adicionar
se $numajuda = 6 desvia @categorias
se $numajuda = 7 desvia @qualop��o

@remover
escreve mudo "Confirma remo��o de "&
toca "c:\winvox\som\dosvox\dvcnfapa.wav"
escreve $nomescript &
Escreve " ?"
l� $confirmadel &
se n�o $confirmadel = "S" desvia @scripts
seja $lixeira "\lixeira\"
concatena $nomescript ".cmd"
concatena $lixeira $nomescript
replica $nomescript $lixeira
remove $nomescript
escreve mudo "Apaguei o arquivo."
toca "c:\winvox\som\dosvox\dvfoiapa.wav"
desvia @scripts

@renomear
escreve mudo "Edite o novo nome:"
toca "c:\winvox\som\dosvox\dveditro.wav"
seja $nomenovo $nomescript
concatena $nomenovo ".cmd"
escreve $nomenovo
l� edita $nomenovo
se $nomenovo = "" desvia @scripts
concatena $nomescript ".cmd"
renomeia $nomescript $nomenovo
escreve mudo "Troquei o nome do arquivo para " &
toca "c:\winvox\som\dosvox\DVTROCAD.WAV"
escreve $nomenovo
desvia @scripts

@editar
seja $edivox "c:\winvox\edivox "
seja $espaco pos " " $nomescript
se n�o $espaco = "0"
concatena $edivox """
concatena $edivox $nomescript
concatena $edivox ".cmd"
concatena $edivox """
executa $edivox
desvia @scripts
fim se
concatena $edivox $nomescript
concatena $edivox ".cmd"
executa $edivox
desvia @scripts

@adicionar
escreve mudo "informe o diret�rio onde est� o script:"
toca "c:\winvox\som\gescript\geinfdir.wav"
l� $pasta
se $pasta = "" desvia @scripts
dir troca $pasta
@nomearq
escreve mudo "Nome do arquivo .CMD a adicionar:"
toca "c:\winvox\som\gescript\genomarq.wav"
l� $nomedonovo
se $nomedonovo = "" desvia @scripts
busca $arquivo $nomedonovo
se $arquivo = ""
escreve mudo "Arquivo n�o existe."
toca "c:\winvox\som\edivox\edarqnao.wav"
desvia @nomearq
fim se
seja $raiz "c:\winvox\scripts\"
concatena $raiz $textocategoria
concatena $raiz "\"
concatena $raiz $arquivo
replica $arquivo $raiz
escreve mudo "Adicionei o Script"
toca "c:\winvox\som\gescript\geadscri.wav"
dir troca "c:\winvox\scripts"
dir troca $textocategoria
desvia @scripts

@manual
executa "c:\winvox\edivox c:\winvox\manual\gescript"
desvia @qualop��o

@fim
escreve mudo "Confirma fim ?"
toca "c:\winvox\som\gescript\geconfim.wav"
l� $confirmafim &
se n�o $confirmafim = "S" desvia @qualop��o
escreve mudo "At� a Pr�xima"
toca "c:\winvox\som\gescript\geatepro.wav"
termina mudo
