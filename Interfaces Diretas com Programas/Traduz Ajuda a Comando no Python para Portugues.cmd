* Traduz ajuda (help) de um comando Python
* Autor: Tiago Melo Casal
* Em: 13/11/2010

* Vari�veis principais
* e -- Caminho do Edivox (usado opcionalmente)
Seja e "C:\winvox\edivox.exe"
* l -- Dados de entrada do console ou de um arquivo
* p -- Caminho do execut�vel do interpretador Python
seja p "C:\python27\python.exe"
* t -- Caminho do execut�vel do Traduvox, programa de tradu��o
Seja t "C:\winvox\traduvox.exe"
* x -- Opera��es diversas
* y -- Nome do arquivo com a sa�da do Python
Seja y "00AjPyEn.tmp"
* z -- Nome do arquivo com a sa�da do Traduvox
Seja z "00AjPyPt.tmp"


* Mensagem inicial
Escreve "Traduz ajuda (help) de um comando Python"
Escreve
Bipa

* Checa se o Python est� instalado
Busca x p
Se x=""
  Escreve "Erro! Python n�o encontrado no caminho padr�o: " p
  Escreve "O python � necess�rio. Fechando o programa."
  Termina Mudo
Fim Se

* Checa se o tradutor est� instalado
Busca x t
Se x=""
  Escreve "Erro! Tradutor n�o encontrado no caminho padr�o: " t
  Escreve "Um tradutor � necess�rio. Fechando o programa."
  Termina Mudo
Fim Se

* Pede o nome do comando do python para traduzir a ajuda
Escreve "Digite o comando do python que deseja ter a ajuda traduzida."
Escreve "Exemplo: para obter a ajuda traduzida do comando print "
Escreve "(imprima / imprimir / impress�o), digite apenas print"
L� l
Se l="" Escreve "Desistiu! Fechando o programa."
Se l="" Termina Mudo
Escreve "Aguarde..."

* Executa a linha de comando para obter a ajuda do comando digitado
Bipa
Seja x "cmd.exe /c "
Concatena x p
Concatena x " -c help('"
concatena x l
concatena x "') > "
Concatena x y
Executa x

* Executa a linha de comando para obter a tradu��o do arquivo salvo
Bipa
Seja x t
Concatena x " EN PT "
Concatena x y
Concatena x " "
Concatena x z
Executa x
Bipa

* Apaga o primeiro arquivo salvo
Remove y &

* Salvar resultado
Escreve "Conclu�do. Deseja salvar o resultado da tradu��o?"
Escreve "Se n�o salvar agora, o resultado ser� apagado ao final " &
Escreve "do programa."
L� l &
Se l <> "S" Desvia @MostraResultadoNaTela
    Escreve "Digite o nome do arquivo a criar, para salvar o resultado."
    L� l
    Se l="" Escreve "Nada foi digitado, n�o salvando."
    Se l="" Desvia @MostraResultadoNaTela
    Replica z l

@MostraResultadoNaTela
* Verifica se o edivox (Editor de Textos do Dosvox) est� instalado
Busca x e
  Se x="" Desvia @SemEdivox
  Escreve "Deseja exibir o resultado da tradu��o com o Edivox?"
  L� l &
  Se l <> "s" Desvia @SemEdivox
* Exibe o resultado da tradu��o com o Edivox em modo de  leitura
    Bipa
    Seja x e
    Concatena x " /L "
    Concatena x z
    Executa x
* Ao sair do Edivox, apaga o arquivo com a tradu��o e finaliza
    Bipa
    Remove z &
    Escreve "Tchau!"
    Termina Mudo
@SemEdivox
Escreve "Deseja que o resultado seja mostrado na tela?"
L� l &
Se l <> "s"
  Remove z &
  Escreve "Tchau!"
  Termina Mudo
Fim Se
Abre #1 z
Bipa
L� #1 l
Checa x
Se x <> "0"
  Escreve "Erro! Desculpe, n�o � poss�vel ler o resultado da tradu��o."
  Escreve "Arquivo parece estar vazio."
  Fecha #1
  Remove z &
  Escreve "Tchau!"
  Termina Mudo
Fim Se
Enquanto x = "0"
  Escreve l
  L� #1 l
  Checa x
Fim Enquanto
bipa
Fecha #1
Remove z &
Escreve "Tchau!"
Termina Mudo
