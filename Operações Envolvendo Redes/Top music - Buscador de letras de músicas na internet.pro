* Script: Top music - Buscador de letras de m�sicas na internet
* Autor: Gustavo Fernandes
* Contato: gt.fernandes16@gmail.com
* Colaboradora: N�dyla Nat�lya
* Criado em: Ter 21/03/2017

* Constantes
* Arquivo tempor�rio para tratamento da letra da m�sica
ARQUIVO_TMP = "letras-mus.txt"

* Constante para indicar quebra de linha
CRLF = chr(13) + chr(10)

* Vers�o do programa
PROGRAMA_VERSAO = "1.1"

* Vari�veis globais
tempoAtual := 0

* In�cio
tela limpa
toca "C:\winvox\som\voxnews\EF_NEINIC.WAV"
escreve "Top Music - vers�o " + PROGRAMA_VERS�O
escreve "Buscador de letras de m�sicas na internet..."
escreve mudo "Autor: Gustavo Fernandes <gt.fernandes16@gmail.com>"
escreve
IniciaPrograma()

* Desenvolvimento do programa
fun��o IniciaPrograma()
  local resultado, item, n�mero, letra, texto, m�sica

  enquanto (verdadeiro) fa�a
    tela limpa
    m�sica := input("Informe o nome da m�sica ou um trecho de sua letra:")
    se (m�sica = "") ent�o
      escreve "Fim do programa"
      toca "C:\winvox\som\cdmp3\CDSAI.wav"
      termina mudo
      fim se

    escreve "Pesquisando, por favor aguarde..."
    resultado := FazPesquisa(m�sica + " site:letras.mus.br")
    se (resultado = indefinido) ent�o
      escreve "N�o foi encontrado nenhum resultado de letra para esta m�sica!"
      continua
      fim se

    escreve "Total de resultados encontrados: " + tamanho(resultado)
    escreve "Listando os resultados encontrados..."
    menu cria 10 10 tamanho(resultado) 60
    para item em resultado
      menu adiciona item.descri��o
      fim para

    @SelecionaLetra
  escreve "Selecione uma letra de m�sica abaixo"
    menu executa n�mero letra texto
    letra := maiusc(letra)
    se (letra = "#27") ent�o continua
    se (letra = "#0#59") ent�o
      escreve "As op��es s�o:"
      escreve "E ou ENTER - l� a letra da m�sica pelo edivox"
      escreve "L - Faz uma leitura r�pida"
      escreve "I - Informa o link da p�gina que cont�m a letra da m�sica"
      desvia @SelecionaLetra
      fim se
    se (letra = "I") ent�o
      escreve "Editore o link da letra com as setas: " &
      le edita resultado[n�mero - 1].url
      desvia @SelecionaLetra
      fim se

    opcao := 0
    se (letra = "L") ent�o opcao := 1
    se (letra = "E" ou letra = "#13") ent�o opcao := 2
    se (opcao >=1 e opcao <= 2) ent�o
      ObtemLetra(resultado[n�mero - 1].url, opcao)
      desvia @SelecionaLetra
      fim se

    escreve "Op��o indispon�vel!"
    desvia @SelecionaLetra
    fim enquanto
  fim fun��o

* ------------------------------------------------------------------------
fun��o FazPesquisa(termo)
  local resultado, texto, linha, descri��o, url

  converte termo para url
  conecta #1 "google.com.br" 80
  escreve #1 "GET http://www.google.com.br/search?q=" + termo + " HTTP/1.0"
  escreve #1 "Host: google.com.br"
  escreve #1 "User-Agent: webvox 5.5"
  escreve #1 "UA-CPU: X86/"
  escreve #1 "Accept-Language: pt-br"
  escreve #1 ""
  le #1 linha
  se (pos("200", linha) = 0) ent�o
    fecha #1
    retorna indefinido
    fim se

  texto := ""
  enquanto (pos("</html>", linha) = 0) fa�a
    texto := texto + linha
    le #1 linha
    fim enquanto
  fecha #1

  se (pos("<h3 ", texto) = 0) ent�o retorna indefinido

  resultado := []
  enquanto (pos("<h3 ", texto) > 0) fa�a
    texto := texto[pos("<h3 ", texto) .. tamanho(texto)]
    url := texto[pos("/url?", texto) .. tamanho(texto)]
    url := url[pos("=", url) + 1 .. pos("&amp", url) - 1]
    texto := texto[pos("/url?", texto) .. tamanho(texto)]
    texto := texto[pos(">", texto) .. tamanho(texto)]
    descri��o := texto[2 .. pos("</a>", texto) - 1]
    substitui descri��o "<b>" ""
    substitui descri��o "</b>" ""
    substitui descri��o "&#8211;" "'"
    substitui descri��o "&amp;" "&"
    resultado[] := {"descri��o" : descri��o, "url" : url}
    texto := texto[pos("</a>", texto) .. tamanho(texto)]
    fim enquanto

  retorna resultado
  fim fun��o

* ------------------------------------------------------------------------
fun��o ObtemLetra(link, modo)
  local texto, linha

  converte link para url
  conecta ssl #1 "letras.mus.br" 443
  escreve #1 "GET " + link + " HTTP/1.0"
  escreve #1 "Host: letras.mus.br"
  escreve #1 "User-Agent: webvox 5.5"
  escreve #1 "UA-CPU: X86"
  escreve #1 "Accept-Language: pt-br"
  escreve #1 ""
  le #1 linha
  se (pos("200", linha) = 0) ent�o
    escreve "Erro ao obter letra para esta m�sica!"
    fecha #1
    retorna
    fim se

  escreve "Baixando letra da m�sica, por favor aguarde..."
  texto := ""
  enquanto (pos("</html>", linha) = 0) fa�a
    Progresso("Baixando...")
    texto := texto + linha
    le #1 linha
    fim enquanto
  fecha #1

  se (pos("<article>", texto) = 0) ent�o
    escreve "N�o foi poss�vel obter letra para esta m�sica!"
    retorna
    fim se

  converte texto de UTF8
  texto := texto[pos("<article>", texto) .. tamanho(texto)]
  texto := texto[pos(">", texto) .. tamanho(texto)]
  texto := texto[2 .. pos("</article>", texto) - 1]
  substitui texto "<p>" ""
  substitui texto "</p>" CRLF
  substitui texto "<br/>" CRLF
  remove ARQUIVO_TMP &
  abre #2 ARQUIVO_TMP &
  escreve #2 texto
  fecha #2

  escreve "a letra da m�sica foi baixada."
  escreve
  se (modo = 1) ent�o
    texto := conteudo(ARQUIVO_TMP)
    remove ARQUIVO_TMP &
    tela limpa
    escreve "Leia a letra da m�sica com as setas:"
    menu cria 10 10 tamanho(texto) 80
    para linha em texto fa�a
      menu adiciona linha
      fim para
    @leitura
    menu executa n�mero letra texto
    se (letra = "#27") ent�o retorna
    desvia @leitura
    fim se

  escreve "Abrindo o edivox com a letra..."
  executa ("C:\winvox\edivox.exe /l " + ARQUIVO_TMP)
  espera 2
  escreve
    toca "C:\winvox\som\voxnews\EF_NEOQUE.WAV"
  escreve "Voc� deseja salvar esta letra de m�sica no seu computador? " &
  le resposta &
  se (maiusc(resposta) = "S") ent�o
    arquivo := input("Informe o nome do arquivo onde dever� ser gravado esta letra:")
    se (arquivo = "") ent�o
      escreve "Desistiu!"
      retorna
      fim se

  se (pos(".TXT", maiusc(arquivo)) = 0) ent�o arquivo := arquivo + ".txt"
    remove arquivo &
    replica ARQUIVO_TMP arquivo
    escreve "Ok, arquivo gravado!"
    fim se

  remove ARQUIVO_TMP &
  fim fun��o

* ------------------------------------------------------------------------
fun��o input(pergunta)
  local linha

  toca "C:\winvox\som\voxnews\EF_NEOQUE.WAV"
  escreve pergunta
  le linha
    toca "C:\winvox\som\METROVOX\EFEITOS\BIP1.WAV"
  retorna linha
  fim fun��o

* ------------------------------------------------------------------------

fun��o Progresso(mensagem)
  local tempoDecorrido

  tempoDecorrido := tempo() / 100
  se (tempoDecorrido > tempoAtual) ent�o
    tempoAtual := tempoDecorrido
    toca "C:\winvox\som\METROVOX\EFEITOS\PADRAO1.WAV"
    fim se

  observa teclado teclou
  se (teclou <> 0) ent�o escreve (mensagem)
  fim fun��o
