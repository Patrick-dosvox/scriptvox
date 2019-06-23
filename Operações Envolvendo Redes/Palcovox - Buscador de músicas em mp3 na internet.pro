* Script: Palco/vox - Buscador de m�sicas em mp3 na internet
* Autor: Gustavo Fernandes
* Contato: gt.fernandes16@gmail.com
* Criado em: Qua 22/03/2017

* Constantes
* Vers�o do programa
PROGRAMA_VERSAO = "1.0"

* In�cio
internet inicia
busca d dir "downloads"
se d = "" ent�o dir cria "downloads"
dir troca "downloads"
tela limpa
toca "C:\winvox\som\voxnews\EF_NEINIC.WAV"
escreve "Palco/vox - Vers�o " + PROGRAMA_VERSAO
escreve "Buscador de m�sicas em mp3 na internet"
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
    resultado := FazPesquisa(m�sica + " site:palcomp3.com")
    se (resultado = indefinido) ent�o
      escreve "N�o foi encontrado nenhum resultado para esta m�sica")
      continua
      fim se

    escreve "Total de resultados encontrados: " + tamanho(resultado)
    escreve "Listando os resultados encontrados..."
    menu cria 10 10 tamanho(resultado) 60
    para item em resultado
      menu adiciona item.descri��o
      fim para

    @SelecionaMusica
  escreve "Selecione uma m�sica abaixo:"
    menu executa n�mero letra texto
    opcao := 0
    letra := maiusc(letra)
    se (letra = "#27") ent�o continua
    se (letra = "#0#59") ent�o
      escreve "As op��es s�o:"
      escreve "T ou ENTER - Toca a m�sica pelo media player"
      escreve "B - Faz o download da m�sica"
      escreve "N - Abre a p�gina da m�sica no palco mp3 pelo navegador externo"
      desvia @SelecionaMusica
      fim se
    se (letra = "N") ent�o
      escreve "Abrindo p�gina do palco mp3 pelo navegador..."
      executa resultado[n�mero - 1].url
      desvia @SelecionaMusica
      fim se

    se (letra = "T") ent�o opcao := 1
    se (letra = "B") ent�o opcao := 2
    se (opcao >= 1 e opcao <= 3) ent�o
      ExecutaLink(resultado[n�mero - 1].url, opcao)
      desvia @SelecionaMusica
      fim se

    se (letra = "#13") ent�o
      ExecutaLink(resultado[n�mero - 1].url, 1)
      desvia @SelecionaMusica
      fim se

    escreve "Op��o indispon�vel!"
    desvia @SelecionaMusica
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
fun��o input(pergunta)
  local linha

  toca "C:\winvox\som\voxnews\EF_NEOQUE.WAV"
  escreve pergunta
  le linha
    toca "C:\winvox\som\METROVOX\EFEITOS\BIP1.WAV"
  retorna linha
  fim fun��o


* ------------------------------------------------------------------------
fun��o ExecutaLink(link, modo)
  conecta ssl #1 "palcomp3.com" 443
  escreve #1 "GET " + link + " HTTP/1.0"
  escreve #1 "Host: palcomp3.com"
  escreve #1 "User-Agent: webvox 5.5"
  escreve #1 "UA-CPU: X86"
  escreve #1 ""
  le #1 linha
  se (pos("200", linha) = 0) ent�o
    escreve "Esta m�sica est� indispon�vel para download!"
    fecha #1
    retorna
    fim se

  texto := ""
  enquanto (pos("</html>", linha) = 0) fa�a
    texto := texto + linha
    le #1 linha
    fim enquanto
  fecha #1

  converte texto de UTF8
  nome := texto[pos("<title>", texto) .. tamanho(texto)]
  nome := nome[8 .. pos("</title>", nome) - 1]
  nome := trim(nome[1 .. pos("-", nome) - 1])
  texto := texto[pos("</title>", texto) .. tamanho(texto)]
  url := pos(": """ + nome, texto)
  se (url = 0) ent�o
    escreve "O link para esta m�sica est� indispon�vel!"
    retorna
    fim se

  texto := texto[url .. tamanho(texto)]
  texto := texto[pos("duration", texto) .. tamanho(texto)]
  dura��o := texto[pos(":", texto) + 2 .. tamanho(texto)]
  dura��o := dura��o[2 .. pos(",", dura��o) - 2]
  substitui dura��o "PT" ""
  substitui dura��o "M" " minutos e "
  substitui dura��o "S" " segundos"
  url := texto[pos("audio", texto) .. tamanho(texto)]
  url := url[pos(": ", url) + 2 .. tamanho(texto)]
  url := url[2 .. pos(",",url) - 2]
  url := "http:" + url

  escreve
  escreve "Dados da m�sica:"
  escreve "M�sica: " + nome
  escreve "Dura��o: " + dura��o
  escreve
  se (modo = 1) ent�o
    escreve "Reproduzindo a m�sica com o media player, por favor aguarde..."
    executa ("wmplayer " + url)
  sen�o se (modo = 2) ent�o
    escreve "Baixando a m�sica, por favor aguarde..."
    arquivo :=  nome + ".mp3"
    substitui url "http://" ""
    baixa url arquivo x
  sen�o
    executa url
    fim se
  fim fun��o
