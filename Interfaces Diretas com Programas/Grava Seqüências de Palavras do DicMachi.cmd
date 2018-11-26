* Script para gravar sequencias de palavras do dicion�rio DICMAXI - Dicion�rio Multim�dia Michaelis
* Autor: Glauco Ferius Constantino de Oliveira
* Em 18/12/2003/Recife-PE

cor 14
fundo 1
tela limpa
escreve ""
escreve "Gravando uma sequ�ncia de  palavras de um dos dicion�rios DICMAXI - Dicion�rio Multim�dia Michaelis"
seja d "C:\dts\WDIC\WDIC.EXE"
seja b "c:\WINDOWS\NOTEPAD.EXE"
seja e "c:\winvox\edivox"

@inicio
escreve ""
toca "c:\winvox\som\dosvox\dvopcao.wav"
*escreve "Escolha o Dicion�rio:"
escreve "a  Portugu�s-Portugu�s"
escreve "b  Ingl�s-Portugu�s"
escreve "c  Portugu�s-Ingl�s"
escreve "d  Franc�s-Portugu�s"
escreve "e  Portugu�s-Franc�s"
escreve "f  Espanhol-Portugu�s"
escreve "g  Portugu�s-Espanhol"
escreve "h  Italiano-Portugu�s"
escreve "i  Portugu�s-Italiano"
escreve "j  Alem�o-Portugu�s"
escreve "k  Portugu�s-Alem�o"
escreve "l  Inform�tica"
escreve "m  Gloss�rio - Inform�tica (Portugu�s-Ingl�s)"
escreve "n  Executivo"
escreve "o  Gloss�rio - Executivo"
escreve "p  Sin�nimos e Ant�nimos"
escreve "q  Economia e Direito (Alem�o-Portugu�s)"
escreve "r  Economia e Direito (Portugu�s-Alem�o)"
le m&
escreve ""
se m = "a" desvia @portugues-portugues
se m = "b" desvia @ingles-portugues
se m = "c" desvia @portugues-ingles
se m = "d" desvia @frances-portugues
se m = "e" desvia @portugues-frances
se m = "f" desvia @espanhol-portugues
se m = "g" desvia @portugues-espanhol
se m = "h" desvia @italiano-portugues
se m = "i" desvia @portugues-italiano
se m = "j" desvia @alemao-portugues
se m = "k" desvia @portugues-alemao
se m = "l" desvia @informatica
se m = "m" desvia @glossario-informatica
se m = "n" desvia @executivo
se m = "o" desvia @glossario-executivo
se m = "p" desvia @sinonimos-antonimos
se m = "q" desvia @economia-direitoap
se m = "r" desvia @economia-direitopa
desvia @inicio

@portugues-portugues
cor 14
fundo 1
tela limpa
escreve ""
escreve "Dicion�rio Melhoramentos Soft da L�ngua Portuguesa"
@tentadenovo
escreve "Digite o caminho completo de um arquivo sem extens�o"
le n
se n = "" desvia @fim
concatena n ".txt"

busca x n
se x <> ""
     escreve "Arquivo existente"
desvia @tentadenovo
fim se

escreve "Quantas palavras gravo"
le p
se p = "" desvia @fim
se p = "0" desvia @fim

escreve "Gravo a partir de qual palavra? "&
le v
se v = "" desvia @fim

escreve "Gravo quantas palavras anteriores?"&
le q

escreve "Gravando � partir de"&
bipa
escreve v
bipa

escreve "Carregando o Dicion�rio Melhoramentos Soft da L�ngua Portuguesa"
executa d&
espera 5
aciona "home"
espera 1
digita v&
aciona "TAB"
espera 1
aciona "DOWN"
aciona "UP"
se q >= 0
repete i q
aciona "UP"
fim repete
espera 1
escreve "Copiando para �rea de transfer�ncia
aciona "ALT+e"
aciona "s"
espera 1
aciona "ctrl+c"
escreve "Carregando o Bloco de Notas
aciona "CTRL+ESC"
espera 3
aciona "x"
espera 3
executa b&
espera 8
escreve "Trazendo da �rea de transfer�ncia
aciona "ctrl+v"
*aciona "CTRL+END"
aciona "ENTER"
aciona "ENTER"
aciona "ALT+a"
espera 3
aciona "s"
espera 2
digita n&
espera 2
aciona "ENTER"
espera 1
aciona "ALT+F4"
se p = 1 desvia @ler

se p > 1 soma p -1

se q >= 0
repete i q
se p > 0 soma p 1
fim repete

escreve "Gravando as pr�ximas"
repete i p
escreve "Copiando para �rea de transfer�ncia"
aciona "ALT+TAB"
    aciona "TAB"
espera 1
aciona "DOWN"
espera 1
aciona "ALT+e"
aciona "s"
espera 1
aciona "ctrl+c"
aciona "ALT+TAB"
espera 1
escreve "Trazendo da �rea de transfer�ncia
executa n&
espera 8
aciona "ctrl+END"
aciona "ctrl+v"
aciona "ENTER"
aciona "ENTER"
aciona "ALT+F4"
aciona "ENTER"
aciona "ALT+TAB"
    aciona "TAB"
espera 1
aciona "DOWN"
espera 1
aciona "ALT+TAB"
fim repete
desvia @ler

@ingles-portugues
cor 14
fundo 1
tela limpa
escreve ""
escreve "Dicion�rio Michaelis Soft Ingl�s-Portugu�s"
@tentadenovo
escreve "Digite o caminho completo de um arquivo sem extens�o"
le n
se n = "" desvia @fim
concatena n ".txt"

busca x n
se x <> ""
     escreve "Arquivo existente"
desvia @tentadenovo
fim se

escreve "Quantas palavras gravo"
le p
se p = "" desvia @fim
se p = "0" desvia @fim

escreve "Gravo a partir de qual palavra? "&
le v
se v = "" desvia @fim

escreve "Gravo quantas palavras anteriores?"&
le q

escreve "Gravando � partir de"&
bipa
escreve v
bipa

escreve "Carregando o Dicion�rio Michaelis Soft Ingl�s-Portugu�s"
executa d&
espera 5
aciona "home"
espera 1
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
espera 1
digita v&
aciona "TAB"
espera 1
aciona "DOWN"
aciona "UP"
se q >= 0
repete i q
aciona "UP"
fim repete
espera 1
escreve "Copiando para �rea de transfer�ncia
aciona "ALT+e"
aciona "s"
espera 1
aciona "ctrl+c"
escreve "Carregando o Bloco de Notas
aciona "CTRL+ESC"
espera 3
aciona "x"
espera 3
executa b&
espera 8
escreve "Trazendo da �rea de transfer�ncia
aciona "ctrl+v"
*aciona "CTRL+END"
aciona "ENTER"
aciona "ENTER"
aciona "ALT+a"
espera 3
aciona "s"
espera 2
digita n&
espera 2
aciona "ENTER"
espera 1
aciona "ALT+F4"
se p = 1 desvia @ler

se p > 1 soma p -1

se q >= 0
repete i q
se p > 0 soma p 1
fim repete

escreve "Gravando as pr�ximas"
repete i p
escreve "Copiando para �rea de transfer�ncia"
aciona "ALT+TAB"
    aciona "TAB"
espera 1
aciona "DOWN"
espera 1
aciona "ALT+e"
aciona "s"
espera 1
aciona "ctrl+c"
aciona "ALT+TAB"
espera 1
escreve "Trazendo da �rea de transfer�ncia
executa n&
espera 8
aciona "ctrl+END"
aciona "ctrl+v"
aciona "ENTER"
aciona "ENTER"
aciona "ALT+F4"
aciona "ENTER"
aciona "ALT+TAB"
    aciona "TAB"
espera 1
aciona "DOWN"
espera 1
aciona "ALT+TAB"
fim repete
desvia @ler

@portugues-ingles
cor 14
fundo 1
tela limpa
escreve ""
escreve "Dicion�rio Michaelis Soft Portugu�s-Ingl�s"
@tentadenovo
escreve "Digite o caminho completo de um arquivo sem extens�o"
le n
se n = "" desvia @fim
concatena n ".txt"

busca x n
se x <> ""
     escreve "Arquivo existente"
desvia @tentadenovo
fim se

escreve "Quantas palavras gravo"
le p
se p = "" desvia @fim
se p = "0" desvia @fim

escreve "Gravo a partir de qual palavra? "&
le v
se v = "" desvia @fim

escreve "Gravo quantas palavras anteriores?"&
le q

escreve "Gravando � partir de"&
bipa
escreve v
bipa

escreve "Carregando o Dicion�rio Michaelis Soft Portugu�s-Ingl�s"
executa d&
espera 5
aciona "home"
espera 1
aciona "right"
espera 1
digita v&
aciona "TAB"
espera 1
aciona "DOWN"
aciona "UP"
se q >= 0
repete i q
aciona "UP"
fim repete
espera 1
escreve "Copiando para �rea de transfer�ncia
aciona "ALT+e"
aciona "s"
espera 1
aciona "ctrl+c"
escreve "Carregando o Bloco de Notas
aciona "CTRL+ESC"
espera 3
aciona "x"
espera 3
executa b&
espera 8
escreve "Trazendo da �rea de transfer�ncia
aciona "ctrl+v"
*aciona "CTRL+END"
aciona "ENTER"
aciona "ENTER"
aciona "ALT+a"
espera 3
aciona "s"
espera 2
digita n&
espera 2
aciona "ENTER"
espera 1
aciona "ALT+F4"
se p = 1 desvia @ler

se p > 1 soma p -1

se q >= 0
repete i q
se p > 0 soma p 1
fim repete

escreve "Gravando as pr�ximas"
repete i p
escreve "Copiando para �rea de transfer�ncia"
aciona "ALT+TAB"
    aciona "TAB"
espera 1
aciona "DOWN"
espera 1
aciona "ALT+e"
aciona "s"
espera 1
aciona "ctrl+c"
aciona "ALT+TAB"
espera 1
escreve "Trazendo da �rea de transfer�ncia
executa n&
espera 8
aciona "ctrl+END"
aciona "ctrl+v"
aciona "ENTER"
aciona "ENTER"
aciona "ALT+F4"
aciona "ENTER"
aciona "ALT+TAB"
    aciona "TAB"
espera 1
aciona "DOWN"
espera 1
aciona "ALT+TAB"
fim repete
desvia @ler

@frances-portugues
cor 14
fundo 1
tela limpa
escreve ""
escreve "Dicion�rio Michaelis Soft Franc�s-Portugu�s"
@tentadenovo
escreve "Digite o caminho completo de um arquivo sem extens�o"
le n
se n = "" desvia @fim
concatena n ".txt"

busca x n
se x <> ""
     escreve "Arquivo existente"
desvia @tentadenovo
fim se

escreve "Quantas palavras gravo"
le p
se p = "" desvia @fim
se p = "0" desvia @fim

escreve "Gravo a partir de qual palavra? "&
le v
se v = "" desvia @fim

escreve "Gravo quantas palavras anteriores?"&
le q

escreve "Gravando � partir de"&
bipa
escreve v
bipa

escreve "Carregando o Dicion�rio Michaelis Soft Franc�s-Portugu�s"
executa d&
espera 5
aciona "home"
espera 1
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
espera 1
digita v&
aciona "TAB"
espera 1
aciona "DOWN"
aciona "UP"
se q >= 0
repete i q
aciona "UP"
fim repete
espera 1
escreve "Copiando para �rea de transfer�ncia
aciona "ALT+e"
aciona "s"
espera 1
aciona "ctrl+c"
escreve "Carregando o Bloco de Notas
aciona "CTRL+ESC"
espera 3
aciona "x"
espera 3
executa b&
espera 8
escreve "Trazendo da �rea de transfer�ncia
aciona "ctrl+v"
*aciona "CTRL+END"
aciona "ENTER"
aciona "ENTER"
aciona "ALT+a"
espera 3
aciona "s"
espera 2
digita n&
espera 2
aciona "ENTER"
espera 1
aciona "ALT+F4"
se p = 1 desvia @ler

se p > 1 soma p -1

se q >= 0
repete i q
se p > 0 soma p 1
fim repete

escreve "Gravando as pr�ximas"
repete i p
escreve "Copiando para �rea de transfer�ncia"
aciona "ALT+TAB"
    aciona "TAB"
espera 1
aciona "DOWN"
espera 1
aciona "ALT+e"
aciona "s"
espera 1
aciona "ctrl+c"
aciona "ALT+TAB"
espera 1
escreve "Trazendo da �rea de transfer�ncia
executa n&
espera 8
aciona "ctrl+END"
aciona "ctrl+v"
aciona "ENTER"
aciona "ENTER"
aciona "ALT+F4"
aciona "ENTER"
aciona "ALT+TAB"
    aciona "TAB"
espera 1
aciona "DOWN"
espera 1
aciona "ALT+TAB"
fim repete
desvia @ler

@portugues-frances
cor 14
fundo 1
tela limpa
escreve ""
escreve "Dicion�rio Michaelis Soft Portugu�s-Franc�s"
@tentadenovo
escreve "Digite o caminho completo de um arquivo sem extens�o"
le n
se n = "" desvia @fim
concatena n ".txt"

busca x n
se x <> ""
     escreve "Arquivo existente"
desvia @tentadenovo
fim se

escreve "Quantas palavras gravo"
le p
se p = "" desvia @fim
se p = "0" desvia @fim

escreve "Gravo a partir de qual palavra? "&
le v
se v = "" desvia @fim

escreve "Gravo quantas palavras anteriores?"&
le q

escreve "Gravando � partir de"&
bipa
escreve v
bipa

escreve "Carregando o Dicion�rio Michaelis Soft Portugu�s-Franc�s"
executa d&
espera 5
aciona "home"
espera 1
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
espera 1
digita v&
aciona "TAB"
espera 1
aciona "DOWN"
aciona "UP"
se q >= 0
repete i q
aciona "UP"
fim repete
espera 1
escreve "Copiando para �rea de transfer�ncia
aciona "ALT+e"
aciona "s"
espera 1
aciona "ctrl+c"
escreve "Carregando o Bloco de Notas
aciona "CTRL+ESC"
espera 3
aciona "x"
espera 3
executa b&
espera 8
escreve "Trazendo da �rea de transfer�ncia
aciona "ctrl+v"
*aciona "CTRL+END"
aciona "ENTER"
aciona "ENTER"
aciona "ALT+a"
espera 3
aciona "s"
espera 2
digita n&
espera 2
aciona "ENTER"
espera 1
aciona "ALT+F4"
se p = 1 desvia @ler

se p > 1 soma p -1

se q >= 0
repete i q
se p > 0 soma p 1
fim repete

escreve "Gravando as pr�ximas"
repete i p
escreve "Copiando para �rea de transfer�ncia"
aciona "ALT+TAB"
    aciona "TAB"
espera 1
aciona "DOWN"
espera 1
aciona "ALT+e"
aciona "s"
espera 1
aciona "ctrl+c"
aciona "ALT+TAB"
espera 1
escreve "Trazendo da �rea de transfer�ncia
executa n&
espera 8
aciona "ctrl+END"
aciona "ctrl+v"
aciona "ENTER"
aciona "ENTER"
aciona "ALT+F4"
aciona "ENTER"
aciona "ALT+TAB"
    aciona "TAB"
espera 1
aciona "DOWN"
espera 1
aciona "ALT+TAB"
fim repete
desvia @ler

@Espanhol-portugues
cor 14
fundo 1
tela limpa
escreve ""
escreve "Dicion�rio Michaelis Soft Espanhol-Portugu�s"
@tentadenovo
escreve "Digite o caminho completo de um arquivo sem extens�o"
le n
se n = "" desvia @fim
concatena n ".txt"

busca x n
se x <> ""
     escreve "Arquivo existente"
desvia @tentadenovo
fim se

escreve "Quantas palavras gravo"
le p
se p = "" desvia @fim
se p = "0" desvia @fim

escreve "Gravo a partir de qual palavra? "&
le v
se v = "" desvia @fim

escreve "Gravo quantas palavras anteriores?"&
le q

escreve "Gravando � partir de"&
bipa
escreve v
bipa

escreve "Carregando o Dicion�rio Michaelis Soft Espanhol-Portugu�s"
executa d&
espera 5
aciona "home"
espera 1
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
espera 1
digita v&
aciona "TAB"
espera 1
aciona "DOWN"
aciona "UP"
se q >= 0
repete i q
aciona "UP"
fim repete
espera 1
escreve "Copiando para �rea de transfer�ncia
aciona "ALT+e"
aciona "s"
espera 1
aciona "ctrl+c"
escreve "Carregando o Bloco de Notas
aciona "CTRL+ESC"
espera 3
aciona "x"
espera 3
executa b&
espera 8
escreve "Trazendo da �rea de transfer�ncia
aciona "ctrl+v"
*aciona "CTRL+END"
aciona "ENTER"
aciona "ENTER"
aciona "ALT+a"
espera 3
aciona "s"
espera 2
digita n&
espera 2
aciona "ENTER"
espera 1
aciona "ALT+F4"
se p = 1 desvia @ler

se p > 1 soma p -1

se q >= 0
repete i q
se p > 0 soma p 1
fim repete

escreve "Gravando as pr�ximas"
repete i p
escreve "Copiando para �rea de transfer�ncia"
aciona "ALT+TAB"
    aciona "TAB"
espera 1
aciona "DOWN"
espera 1
aciona "ALT+e"
aciona "s"
espera 1
aciona "ctrl+c"
aciona "ALT+TAB"
espera 1
escreve "Trazendo da �rea de transfer�ncia
executa n&
espera 8
aciona "ctrl+END"
aciona "ctrl+v"
aciona "ENTER"
aciona "ENTER"
aciona "ALT+F4"
aciona "ENTER"
aciona "ALT+TAB"
    aciona "TAB"
espera 1
aciona "DOWN"
espera 1
aciona "ALT+TAB"
fim repete
desvia @ler

@portugues-Espanhol
cor 14
fundo 1
tela limpa
escreve ""
escreve "Dicion�rio Michaelis Soft Portugu�s-Espanhol"
@tentadenovo
escreve "Digite o caminho completo de um arquivo sem extens�o"
le n
se n = "" desvia @fim
concatena n ".txt"

busca x n
se x <> ""
     escreve "Arquivo existente"
desvia @tentadenovo
fim se

escreve "Quantas palavras gravo"
le p
se p = "" desvia @fim
se p = "0" desvia @fim

escreve "Gravo a partir de qual palavra? "&
le v
se v = "" desvia @fim

escreve "Gravo quantas palavras anteriores?"&
le q

escreve "Gravando � partir de"&
bipa
escreve v
bipa

escreve "Carregando o Dicion�rio Michaelis Soft Portugu�s-Espanhol"
executa d&
espera 5
aciona "home"
espera 1
aciona "right"
aciona "right"
espera 1
digita v&
aciona "TAB"
espera 1
aciona "DOWN"
aciona "UP"
se q >= 0
repete i q
aciona "UP"
fim repete
espera 1
escreve "Copiando para �rea de transfer�ncia
aciona "ALT+e"
aciona "s"
espera 1
aciona "ctrl+c"
escreve "Carregando o Bloco de Notas
aciona "CTRL+ESC"
espera 3
aciona "x"
espera 3
executa b&
espera 8
escreve "Trazendo da �rea de transfer�ncia
aciona "ctrl+v"
*aciona "CTRL+END"
aciona "ENTER"
aciona "ENTER"
aciona "ALT+a"
espera 3
aciona "s"
espera 2
digita n&
espera 2
aciona "ENTER"
espera 1
aciona "ALT+F4"
se p = 1 desvia @ler

se p > 1 soma p -1

se q >= 0
repete i q
se p > 0 soma p 1
fim repete

escreve "Gravando as pr�ximas"
repete i p
escreve "Copiando para �rea de transfer�ncia"
aciona "ALT+TAB"
    aciona "TAB"
espera 1
aciona "DOWN"
espera 1
aciona "ALT+e"
aciona "s"
espera 1
aciona "ctrl+c"
aciona "ALT+TAB"
espera 1
escreve "Trazendo da �rea de transfer�ncia
executa n&
espera 8
aciona "ctrl+END"
aciona "ctrl+v"
aciona "ENTER"
aciona "ENTER"
aciona "ALT+F4"
aciona "ENTER"
aciona "ALT+TAB"
    aciona "TAB"
espera 1
aciona "DOWN"
espera 1
aciona "ALT+TAB"
fim repete
desvia @ler

@italiano-portugues
cor 14
fundo 1
tela limpa
escreve ""
escreve "Dicion�rio Michaelis Soft Italiano-Portugu�s"
@tentadenovo
escreve "Digite o caminho completo de um arquivo sem extens�o"
le n
se n = "" desvia @fim
concatena n ".txt"

busca x n
se x <> ""
     escreve "Arquivo existente"
desvia @tentadenovo
fim se

escreve "Quantas palavras gravo"
le p
se p = "" desvia @fim
se p = "0" desvia @fim

escreve "Gravo a partir de qual palavra? "&
le v
se v = "" desvia @fim

escreve "Gravo quantas palavras anteriores?"&
le q

escreve "Gravando � partir de"&
bipa
escreve v
bipa

escreve "Carregando o Dicion�rio Michaelis Soft Italiano-Portugu�s"
executa d&
espera 5
aciona "home"
espera 1
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
espera 1
digita v&
aciona "TAB"
espera 1
aciona "DOWN"
aciona "UP"
se q >= 0
repete i q
aciona "UP"
fim repete
espera 1
escreve "Copiando para �rea de transfer�ncia
aciona "ALT+e"
aciona "s"
espera 1
aciona "ctrl+c"
escreve "Carregando o Bloco de Notas
aciona "CTRL+ESC"
espera 3
aciona "x"
espera 3
executa b&
espera 8
escreve "Trazendo da �rea de transfer�ncia
aciona "ctrl+v"
*aciona "CTRL+END"
aciona "ENTER"
aciona "ENTER"
aciona "ALT+a"
espera 3
aciona "s"
espera 2
digita n&
espera 2
aciona "ENTER"
espera 1
aciona "ALT+F4"
se p = 1 desvia @ler

se p > 1 soma p -1

se q >= 0
repete i q
se p > 0 soma p 1
fim repete

escreve "Gravando as pr�ximas"
repete i p
escreve "Copiando para �rea de transfer�ncia"
aciona "ALT+TAB"
    aciona "TAB"
espera 1
aciona "DOWN"
espera 1
aciona "ALT+e"
aciona "s"
espera 1
aciona "ctrl+c"
aciona "ALT+TAB"
espera 1
escreve "Trazendo da �rea de transfer�ncia
executa n&
espera 8
aciona "ctrl+END"
aciona "ctrl+v"
aciona "ENTER"
aciona "ENTER"
aciona "ALT+F4"
aciona "ENTER"
aciona "ALT+TAB"
    aciona "TAB"
espera 1
aciona "DOWN"
espera 1
aciona "ALT+TAB"
fim repete
desvia @ler

@portugues-italiano
cor 14
fundo 1
tela limpa
escreve ""
escreve "Dicion�rio Michaelis Soft Portugu�s-Italiano"
@tentadenovo
escreve "Digite o caminho completo de um arquivo sem extens�o"
le n
se n = "" desvia @fim
concatena n ".txt"

busca x n
se x <> ""
     escreve "Arquivo existente"
desvia @tentadenovo
fim se

escreve "Quantas palavras gravo"
le p
se p = "" desvia @fim
se p = "0" desvia @fim

escreve "Gravo a partir de qual palavra? "&
le v
se v = "" desvia @fim

escreve "Gravo quantas palavras anteriores?"&
le q

escreve "Gravando � partir de"&
bipa
escreve v
bipa

escreve "Carregando o Dicion�rio Michaelis Soft Portugu�s-Italiano"
executa d&
espera 5
aciona "home"
espera 1
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
espera 1
digita v&
aciona "TAB"
espera 1
aciona "DOWN"
aciona "UP"
se q >= 0
repete i q
aciona "UP"
fim repete
espera 1
escreve "Copiando para �rea de transfer�ncia
aciona "ALT+e"
aciona "s"
espera 1
aciona "ctrl+c"
escreve "Carregando o Bloco de Notas
aciona "CTRL+ESC"
espera 3
aciona "x"
espera 3
executa b&
espera 8
escreve "Trazendo da �rea de transfer�ncia
aciona "ctrl+v"
*aciona "CTRL+END"
aciona "ENTER"
aciona "ENTER"
aciona "ALT+a"
espera 3
aciona "s"
espera 2
digita n&
espera 2
aciona "ENTER"
espera 1
aciona "ALT+F4"
se p = 1 desvia @ler

se p > 1 soma p -1

se q >= 0
repete i q
se p > 0 soma p 1
fim repete

escreve "Gravando as pr�ximas"
repete i p
escreve "Copiando para �rea de transfer�ncia"
aciona "ALT+TAB"
    aciona "TAB"
espera 1
aciona "DOWN"
espera 1
aciona "ALT+e"
aciona "s"
espera 1
aciona "ctrl+c"
aciona "ALT+TAB"
espera 1
escreve "Trazendo da �rea de transfer�ncia
executa n&
espera 8
aciona "ctrl+END"
aciona "ctrl+v"
aciona "ENTER"
aciona "ENTER"
aciona "ALT+F4"
aciona "ENTER"
aciona "ALT+TAB"
    aciona "TAB"
espera 1
aciona "DOWN"
espera 1
aciona "ALT+TAB"
fim repete
desvia @ler

@alemao-portugues
cor 14
fundo 1
tela limpa
escreve ""
escreve "Dicion�rio Michaelis Soft Alem�o-Portugu�s"
@tentadenovo
escreve "Digite o caminho completo de um arquivo sem extens�o"
le n
se n = "" desvia @fim
concatena n ".txt"

busca x n
se x <> ""
     escreve "Arquivo existente"
desvia @tentadenovo
fim se

escreve "Quantas palavras gravo"
le p
se p = "" desvia @fim
se p = "0" desvia @fim

escreve "Gravo a partir de qual palavra? "&
le v
se v = "" desvia @fim

escreve "Gravo quantas palavras anteriores?"&
le q

escreve "Gravando � partir de"&
bipa
escreve v
bipa

escreve "Carregando o Dicion�rio Michaelis Soft Alem�o-Portugu�s"
executa d&
espera 5
aciona "home"
espera 1
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
espera 1
digita v&
aciona "TAB"
espera 1
aciona "DOWN"
aciona "UP"
se q >= 0
repete i q
aciona "UP"
fim repete
espera 1
escreve "Copiando para �rea de transfer�ncia
aciona "ALT+e"
aciona "s"
espera 1
aciona "ctrl+c"
escreve "Carregando o Bloco de Notas
aciona "CTRL+ESC"
espera 3
aciona "x"
espera 3
executa b&
espera 8
escreve "Trazendo da �rea de transfer�ncia
aciona "ctrl+v"
*aciona "CTRL+END"
aciona "ENTER"
aciona "ENTER"
aciona "ALT+a"
espera 3
aciona "s"
espera 2
digita n&
espera 2
aciona "ENTER"
espera 1
aciona "ALT+F4"
se p = 1 desvia @ler

se p > 1 soma p -1

se q >= 0
repete i q
se p > 0 soma p 1
fim repete

escreve "Gravando as pr�ximas"
repete i p
escreve "Copiando para �rea de transfer�ncia"
aciona "ALT+TAB"
    aciona "TAB"
espera 1
aciona "DOWN"
espera 1
aciona "ALT+e"
aciona "s"
espera 1
aciona "ctrl+c"
aciona "ALT+TAB"
espera 1
escreve "Trazendo da �rea de transfer�ncia
executa n&
espera 8
aciona "ctrl+END"
aciona "ctrl+v"
aciona "ENTER"
aciona "ENTER"
aciona "ALT+F4"
aciona "ENTER"
aciona "ALT+TAB"
    aciona "TAB"
espera 1
aciona "DOWN"
espera 1
aciona "ALT+TAB"
fim repete
desvia @ler

@portugues-alemao
cor 14
fundo 1
tela limpa
escreve ""
escreve "Dicion�rio Michaelis Soft Portugu�s-Alem�o"
@tentadenovo
escreve "Digite o caminho completo de um arquivo sem extens�o"
le n
se n = "" desvia @fim
concatena n ".txt"

busca x n
se x <> ""
     escreve "Arquivo existente"
desvia @tentadenovo
fim se

escreve "Quantas palavras gravo"
le p
se p = "" desvia @fim
se p = "0" desvia @fim

escreve "Gravo a partir de qual palavra? "&
le v
se v = "" desvia @fim

escreve "Gravo quantas palavras anteriores?"&
le q

escreve "Gravando � partir de"&
bipa
escreve v
bipa

escreve "Carregando o Dicion�rio Michaelis Soft Portugu�s-Alem�o"
executa d&
espera 5
aciona "home"
espera 1
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
espera 1
digita v&
aciona "TAB"
espera 1
aciona "DOWN"
aciona "UP"
se q >= 0
repete i q
aciona "UP"
fim repete
espera 1
escreve "Copiando para �rea de transfer�ncia
aciona "ALT+e"
aciona "s"
espera 1
aciona "ctrl+c"
escreve "Carregando o Bloco de Notas
aciona "CTRL+ESC"
espera 3
aciona "x"
espera 3
executa b&
espera 8
escreve "Trazendo da �rea de transfer�ncia
aciona "ctrl+v"
*aciona "CTRL+END"
aciona "ENTER"
aciona "ENTER"
aciona "ALT+a"
espera 3
aciona "s"
espera 2
digita n&
espera 2
aciona "ENTER"
espera 1
aciona "ALT+F4"
se p = 1 desvia @ler

se p > 1 soma p -1

se q >= 0
repete i q
se p > 0 soma p 1
fim repete

escreve "Gravando as pr�ximas"
repete i p
escreve "Copiando para �rea de transfer�ncia"
aciona "ALT+TAB"
    aciona "TAB"
espera 1
aciona "DOWN"
espera 1
aciona "ALT+e"
aciona "s"
espera 1
aciona "ctrl+c"
aciona "ALT+TAB"
espera 1
escreve "Trazendo da �rea de transfer�ncia
executa n&
espera 8
aciona "ctrl+END"
aciona "ctrl+v"
aciona "ENTER"
aciona "ENTER"
aciona "ALT+F4"
aciona "ENTER"
aciona "ALT+TAB"
    aciona "TAB"
espera 1
aciona "DOWN"
espera 1
aciona "ALT+TAB"
fim repete
desvia @ler

@informatica
cor 14
fundo 1
tela limpa
escreve ""
escreve "Dicion�rio Michaelis Soft Dicion�rio Pr�tico de Inform�tica"
@tentadenovo
escreve "Digite o caminho completo de um arquivo sem extens�o"
le n
se n = "" desvia @fim
concatena n ".txt"

busca x n
se x <> ""
     escreve "Arquivo existente"
desvia @tentadenovo
fim se

escreve "Quantas palavras gravo"
le p
se p = "" desvia @fim
se p = "0" desvia @fim

escreve "Gravo a partir de qual palavra? "&
le v
se v = "" desvia @fim

escreve "Gravo quantas palavras anteriores?"&
le q

escreve "Gravando � partir de"&
bipa
escreve v
bipa

escreve "Carregando o Dicion�rio Michaelis Soft Dicion�rio Pr�tico de Inform�tica"
executa d&
espera 5
aciona "home"
espera 1
aciona "right"
aciona "right"
aciona "right"
espera 1
digita v&
aciona "TAB"
espera 1
aciona "DOWN"
aciona "UP"
se q >= 0
repete i q
aciona "UP"
fim repete
espera 1
escreve "Copiando para �rea de transfer�ncia
aciona "ALT+e"
aciona "s"
espera 1
aciona "ctrl+c"
escreve "Carregando o Bloco de Notas
aciona "CTRL+ESC"
espera 3
aciona "x"
espera 3
executa b&
espera 8
escreve "Trazendo da �rea de transfer�ncia
aciona "ctrl+v"
*aciona "CTRL+END"
aciona "ENTER"
aciona "ENTER"
aciona "ALT+a"
espera 3
aciona "s"
espera 2
digita n&
espera 2
aciona "ENTER"
espera 1
aciona "ALT+F4"
se p = 1 desvia @ler

se p > 1 soma p -1

se q >= 0
repete i q
se p > 0 soma p 1
fim repete

escreve "Gravando as pr�ximas"
repete i p
escreve "Copiando para �rea de transfer�ncia"
aciona "ALT+TAB"
    aciona "TAB"
espera 1
aciona "DOWN"
espera 1
aciona "ALT+e"
aciona "s"
espera 1
aciona "ctrl+c"
aciona "ALT+TAB"
espera 1
escreve "Trazendo da �rea de transfer�ncia
executa n&
espera 8
aciona "ctrl+END"
aciona "ctrl+v"
aciona "ENTER"
aciona "ENTER"
aciona "ALT+F4"
aciona "ENTER"
aciona "ALT+TAB"
    aciona "TAB"
espera 1
aciona "DOWN"
espera 1
aciona "ALT+TAB"
fim repete
desvia @ler

@glossario-informatica
cor 14
fundo 1
tela limpa
escreve ""
escreve "Dicion�rio Gloss�rio Michaelis Soft Inform�tica (Port/Ingl)"
@tentadenovo
escreve "Digite o caminho completo de um arquivo sem extens�o"
le n
se n = "" desvia @fim
concatena n ".txt"

busca x n
se x <> ""
     escreve "Arquivo existente"
desvia @tentadenovo
fim se

escreve "Quantas palavras gravo"
le p
se p = "" desvia @fim
se p = "0" desvia @fim

escreve "Gravo a partir de qual palavra? "&
le v
se v = "" desvia @fim

escreve "Gravo quantas palavras anteriores?"&
le q

escreve "Gravando � partir de"&
bipa
escreve v
bipa

escreve "Carregando o Dicion�rio Gloss�rio Michaelis Soft Inform�tica (Port/Ingl)"
executa d&
espera 5
aciona "home"
espera 1
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
espera 1
digita v&
aciona "TAB"
espera 1
aciona "DOWN"
aciona "UP"
se q >= 0
repete i q
aciona "UP"
fim repete
espera 1
escreve "Copiando para �rea de transfer�ncia
aciona "ALT+e"
aciona "s"
espera 1
aciona "ctrl+c"
escreve "Carregando o Bloco de Notas
aciona "CTRL+ESC"
espera 3
aciona "x"
espera 3
executa b&
espera 8
escreve "Trazendo da �rea de transfer�ncia
aciona "ctrl+v"
*aciona "CTRL+END"
aciona "ENTER"
aciona "ENTER"
aciona "ALT+a"
espera 3
aciona "s"
espera 2
digita n&
espera 2
aciona "ENTER"
espera 1
aciona "ALT+F4"
se p = 1 desvia @ler

se p > 1 soma p -1

se q >= 0
repete i q
se p > 0 soma p 1
fim repete

escreve "Gravando as pr�ximas"
repete i p
escreve "Copiando para �rea de transfer�ncia"
aciona "ALT+TAB"
    aciona "TAB"
espera 1
aciona "DOWN"
espera 1
aciona "ALT+e"
aciona "s"
espera 1
aciona "ctrl+c"
aciona "ALT+TAB"
espera 1
escreve "Trazendo da �rea de transfer�ncia
executa n&
espera 8
aciona "ctrl+END"
aciona "ctrl+v"
aciona "ENTER"
aciona "ENTER"
aciona "ALT+F4"
aciona "ENTER"
aciona "ALT+TAB"
    aciona "TAB"
espera 1
aciona "DOWN"
espera 1
aciona "ALT+TAB"
fim repete
desvia @ler

@Executivo
cor 14
fundo 1
tela limpa
escreve ""
escreve "Dicion�rio Michaelis Soft Executivo"
@tentadenovo
escreve "Digite o caminho completo de um arquivo sem extens�o"
le n
se n = "" desvia @fim
concatena n ".txt"

busca x n
se x <> ""
     escreve "Arquivo existente"
desvia @tentadenovo
fim se

escreve "Quantas palavras gravo"
le p
se p = "" desvia @fim
se p = "0" desvia @fim

escreve "Gravo a partir de qual palavra? "&
le v
se v = "" desvia @fim

escreve "Gravo quantas palavras anteriores?"&
le q

escreve "Gravando � partir de"&
bipa
escreve v
bipa

escreve "Carregando o Dicion�rio Michaelis Soft Executivo"
executa d&
espera 5
aciona "home"
espera 1
aciona "right"
aciona "right"
aciona "right"
aciona "right"
espera 1
digita v&
aciona "TAB"
espera 1
aciona "DOWN"
aciona "UP"
se q >= 0
repete i q
aciona "UP"
fim repete
espera 1
escreve "Copiando para �rea de transfer�ncia
aciona "ALT+e"
aciona "s"
espera 1
aciona "ctrl+c"
escreve "Carregando o Bloco de Notas
aciona "CTRL+ESC"
espera 3
aciona "x"
espera 3
escreve "Carregando o Dicion�rio Michaelis Soft Executivo"
escreve "Carregando o Dicion�rio Gloss�rio Michaelis Soft Executivo"
executa b&
espera 8
escreve "Trazendo da �rea de transfer�ncia
aciona "ctrl+v"
*aciona "CTRL+END"
aciona "ENTER"
aciona "ENTER"
aciona "ALT+a"
espera 3
aciona "s"
espera 2
digita n&
espera 2
aciona "ENTER"
espera 1
aciona "ALT+F4"
se p = 1 desvia @ler

se p > 1 soma p -1

se q >= 0
repete i q
se p > 0 soma p 1
fim repete

escreve "Gravando as pr�ximas"
repete i p
escreve "Copiando para �rea de transfer�ncia"
aciona "ALT+TAB"
    aciona "TAB"
espera 1
aciona "DOWN"
espera 1
aciona "ALT+e"
aciona "s"
espera 1
aciona "ctrl+c"
aciona "ALT+TAB"
espera 1
escreve "Trazendo da �rea de transfer�ncia
executa n&
espera 8
aciona "ctrl+END"
aciona "ctrl+v"
aciona "ENTER"
aciona "ENTER"
aciona "ALT+F4"
aciona "ENTER"
aciona "ALT+TAB"
    aciona "TAB"
espera 1
aciona "DOWN"
espera 1
aciona "ALT+TAB"
fim repete
desvia @ler

@glossario-Executivo
cor 14
fundo 1
tela limpa
escreve ""
escreve "Dicion�rio Gloss�rio Michaelis Soft Executivo"
@tentadenovo
escreve "Digite o caminho completo de um arquivo sem extens�o"
le n
se n = "" desvia @fim
concatena n ".txt"

busca x n
se x <> ""
     escreve "Arquivo existente"
desvia @tentadenovo
fim se

escreve "Quantas palavras gravo"
le p
se p = "" desvia @fim
se p = "0" desvia @fim

escreve "Gravo a partir de qual palavra? "&
le v
se v = "" desvia @fim

escreve "Gravo quantas palavras anteriores?"&
le q

escreve "Gravando � partir de"&
bipa
escreve v
bipa

escreve "Carregando o Dicion�rio Gloss�rio Michaelis Soft Executivo"
executa d&
espera 5
aciona "home"
espera 1
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
espera 1
digita v&
aciona "TAB"
espera 1
aciona "DOWN"
aciona "UP"
se q >= 0
repete i q
aciona "UP"
fim repete
espera 1
escreve "Copiando para �rea de transfer�ncia
aciona "ALT+e"
aciona "s"
espera 1
aciona "ctrl+c"
escreve "Carregando o Bloco de Notas
aciona "CTRL+ESC"
espera 3
aciona "x"
espera 3
executa b&
espera 8
escreve "Trazendo da �rea de transfer�ncia
aciona "ctrl+v"
*aciona "CTRL+END"
aciona "ENTER"
aciona "ENTER"
aciona "ALT+a"
espera 3
aciona "s"
espera 2
digita n&
espera 2
aciona "ENTER"
espera 1
aciona "ALT+F4"
se p = 1 desvia @ler

se p > 1 soma p -1

se q >= 0
repete i q
se p > 0 soma p 1
fim repete

escreve "Gravando as pr�ximas"
repete i p
escreve "Copiando para �rea de transfer�ncia"
aciona "ALT+TAB"
    aciona "TAB"
espera 1
aciona "DOWN"
espera 1
aciona "ALT+e"
aciona "s"
espera 1
aciona "ctrl+c"
aciona "ALT+TAB"
espera 1
escreve "Trazendo da �rea de transfer�ncia
executa n&
espera 8
aciona "ctrl+END"
aciona "ctrl+v"
aciona "ENTER"
aciona "ENTER"
aciona "ALT+F4"
aciona "ENTER"
aciona "ALT+TAB"
    aciona "TAB"
espera 1
aciona "DOWN"
espera 1
aciona "ALT+TAB"
fim repete
desvia @ler

@sinonimos-antonimos
cor 14
fundo 1
tela limpa
escreve ""
escreve "Dicion�rio Minidicion�rio de Sin�nimos e Ant�nimos"
@tentadenovo
escreve "Digite o caminho completo de um arquivo sem extens�o"
le n
se n = "" desvia @fim
concatena n ".txt"

busca x n
se x <> ""
     escreve "Arquivo existente"
desvia @tentadenovo
fim se

escreve "Quantas palavras gravo"
le p
se p = "" desvia @fim
se p = "0" desvia @fim

escreve "Gravo a partir de qual palavra? "&
le v
se v = "" desvia @fim

escreve "Gravo quantas palavras anteriores?"&
le q

escreve "Gravando � partir de"&
bipa
escreve v
bipa

escreve "Carregando o Dicion�rio Minidicion�rio de Sin�nimos e Ant�nimos"
executa d&
espera 5
aciona "home"
espera 1
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
espera 1
digita v&
aciona "TAB"
espera 1
aciona "DOWN"
aciona "UP"
se q >= 0
repete i q
aciona "UP"
fim repete
espera 1
escreve "Copiando para �rea de transfer�ncia
aciona "ALT+e"
aciona "s"
espera 1
aciona "ctrl+c"
escreve "Carregando o Bloco de Notas
aciona "CTRL+ESC"
espera 3
aciona "x"
espera 3
executa b&
espera 8
escreve "Trazendo da �rea de transfer�ncia
aciona "ctrl+v"
*aciona "CTRL+END"
aciona "ENTER"
aciona "ENTER"
aciona "ALT+a"
espera 3
aciona "s"
espera 2
digita n&
espera 2
aciona "ENTER"
espera 1
aciona "ALT+F4"
se p = 1 desvia @ler

se p > 1 soma p -1

se q >= 0
repete i q
se p > 0 soma p 1
fim repete

escreve "Gravando as pr�ximas"
repete i p
escreve "Copiando para �rea de transfer�ncia"
aciona "ALT+TAB"
    aciona "TAB"
espera 1
aciona "DOWN"
espera 1
aciona "ALT+e"
aciona "s"
espera 1
aciona "ctrl+c"
aciona "ALT+TAB"
espera 1
escreve "Trazendo da �rea de transfer�ncia
executa n&
espera 8
aciona "ctrl+END"
aciona "ctrl+v"
aciona "ENTER"
aciona "ENTER"
aciona "ALT+F4"
aciona "ENTER"
aciona "ALT+TAB"
    aciona "TAB"
espera 1
aciona "DOWN"
espera 1
aciona "ALT+TAB"
fim repete
desvia @ler
 

@economia-direitoap
cor 14
fundo 1
tela limpa
escreve ""
escreve "Dicion�rio Michaelis tech Economia e Direito (Alem�o-Portugu�s)"
@tentadenovo
escreve "Digite o caminho completo de um arquivo sem extens�o"
le n
se n = "" desvia @fim
concatena n ".txt"

busca x n
se x <> ""
     escreve "Arquivo existente"
desvia @tentadenovo
fim se

escreve "Quantas palavras gravo"
le p
se p = "" desvia @fim
se p = "0" desvia @fim

escreve "Gravo a partir de qual palavra? "&
le v
se v = "" desvia @fim

escreve "Gravo quantas palavras anteriores?"&
le q

escreve "Gravando � partir de"&
bipa
escreve v
bipa

escreve "Carregando o Dicion�rio Michaelis tech Economia e Direito (Alem�o-Portugu�s)"
executa d&
espera 5
aciona "home"
espera 1
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
espera 1
digita v&
aciona "TAB"
espera 1
aciona "DOWN"
aciona "UP"
se q >= 0
repete i q
aciona "UP"
fim repete
espera 1
escreve "Copiando para �rea de transfer�ncia
aciona "ALT+e"
aciona "s"
espera 1
aciona "ctrl+c"
escreve "Carregando o Bloco de Notas
aciona "CTRL+ESC"
espera 3
aciona "x"
espera 3
executa b&
espera 8
escreve "Trazendo da �rea de transfer�ncia
aciona "ctrl+v"
*aciona "CTRL+END"
aciona "ENTER"
aciona "ENTER"
aciona "ALT+a"
espera 3
aciona "s"
espera 2
digita n&
espera 2
aciona "ENTER"
espera 1
aciona "ALT+F4"
se p = 1 desvia @ler

se p > 1 soma p -1

se q >= 0
repete i q
se p > 0 soma p 1
fim repete

escreve "Gravando as pr�ximas"
repete i p
escreve "Copiando para �rea de transfer�ncia"
aciona "ALT+TAB"
    aciona "TAB"
espera 1
aciona "DOWN"
espera 1
aciona "ALT+e"
aciona "s"
espera 1
aciona "ctrl+c"
aciona "ALT+TAB"
espera 1
escreve "Trazendo da �rea de transfer�ncia
executa n&
espera 8
aciona "ctrl+END"
aciona "ctrl+v"
aciona "ENTER"
aciona "ENTER"
aciona "ALT+F4"
aciona "ENTER"
aciona "ALT+TAB"
    aciona "TAB"
espera 1
aciona "DOWN"
espera 1
aciona "ALT+TAB"
fim repete
desvia @ler

@economia-direitopa
cor 14
fundo 1
tela limpa
escreve ""
escreve "Dicion�rio Michaelis tech Economia e Direito (Portugu�s-Alem�o)"
@tentadenovo
escreve "Digite o caminho completo de um arquivo sem extens�o"
le n
se n = "" desvia @fim
concatena n ".txt"

busca x n
se x <> ""
     escreve "Arquivo existente"
desvia @tentadenovo
fim se

escreve "Quantas palavras gravo"
le p
se p = "" desvia @fim
se p = "0" desvia @fim

escreve "Gravo a partir de qual palavra? "&
le v
se v = "" desvia @fim

escreve "Gravo quantas palavras anteriores?"&
le q

escreve "Gravando � partir de"&
bipa
escreve v
bipa

escreve "Carregando o Dicion�rio Michaelis tech Economia e Direito (Portugu�s-Alem�o)"
executa d&
espera 5
aciona "home"
espera 1
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
espera 1
digita v&
aciona "TAB"
espera 1
aciona "DOWN"
aciona "UP"
se q >= 0
repete i q
aciona "UP"
fim repete
espera 1
escreve "Copiando para �rea de transfer�ncia
aciona "ALT+e"
aciona "s"
espera 1
aciona "ctrl+c"
escreve "Carregando o Bloco de Notas
aciona "CTRL+ESC"
espera 3
aciona "x"
espera 3
executa b&
espera 8
escreve "Trazendo da �rea de transfer�ncia
aciona "ctrl+v"
*aciona "CTRL+END"
aciona "ENTER"
aciona "ENTER"
aciona "ALT+a"
espera 3
aciona "s"
espera 2
digita n&
espera 2
aciona "ENTER"
espera 1
aciona "ALT+F4"
se p = 1 desvia @ler

se p > 1 soma p -1

se q >= 0
repete i q
se p > 0 soma p 1
fim repete

escreve "Gravando as pr�ximas"
repete i p
escreve "Copiando para �rea de transfer�ncia"
aciona "ALT+TAB"
    aciona "TAB"
espera 1
aciona "DOWN"
espera 1
aciona "ALT+e"
aciona "s"
espera 1
aciona "ctrl+c"
aciona "ALT+TAB"
espera 1
escreve "Trazendo da �rea de transfer�ncia
executa n&
espera 8
aciona "ctrl+END"
aciona "ctrl+v"
aciona "ENTER"
aciona "ENTER"
aciona "ALT+F4"
aciona "ENTER"
aciona "ALT+TAB"
    aciona "TAB"
espera 1
aciona "DOWN"
espera 1
aciona "ALT+TAB"
fim repete
desvia @ler

@ler
cor 15
fundo 4
tela limpa
escreve ""
escreve "Ap�s fechar o Edivox aperte ENTER"&
aciona "ALT+TAB"
aciona "CTRL+t"
espera 1
executa e&
espera 2
digita n
espera 1
aciona "F9"
digita "ft"&
le
desvia @opcoes

@opcoes
cor 14
fundo 1
tela limpa
escreve ""
escreve "Voc� deseja:"
escreve "g - Gravar outra sequ�ncia"
escreve "m - mudar dicion�rio"
escreve "s - sair? "&
le o&
se o == "s" desvia @fim
se o == "m" desvia @inicio
se o == "g" desvia @outroverbete
se o <> "smg" desvia @opcoes

@outroverbete
se m = "a" desvia @portugues-portugues
se m = "b" desvia @ingles-portugues
se m = "c" desvia @portugues-ingles
se m = "d" desvia @frances-portugues
se m = "e" desvia @portugues-frances
se m = "f" desvia @Espanhol-portugues
se m = "g" desvia @portugues-Espanhol
se m = "h" desvia @italiano-portugues
se m = "i" desvia @portugues-italiano
se m = "j" desvia @alemao-portugues
se m = "k" desvia @portugues-alemao
se m = "l" desvia @informatica
se m = "m" desvia @glossario-informatica
se m = "n" desvia @Executivo
se m = "o" desvia @glossario-Executivo
se m = "p" desvia @sinonimos-antonimos
se m = "q" desvia @Economia-Direitoap
se m = "r" desvia @Economia-Direitopa
desvia @ler

@fim
cor 14
fundo 1
tela limpa
escreve ""
toca "c:\winvox\som\dosvox\dvtchau.wav"
termina mudo
