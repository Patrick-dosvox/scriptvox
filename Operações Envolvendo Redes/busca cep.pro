; Script: Busca CEP
; Autor: Gustavo Fernandes
; Descri��o: Busca e informa o endere�o de um determinado CEP
; Em: Quin 30/03/2017

; Vari�veis globais
ARQUIVO_TMP = "busca-cep.$$$"

; In�cio do programa
escreve "Busca CEP - Vers�o 1.0"
escreve "Buscador de endere�os a partir de um CEP na internet"
escreve mudo "AUTOR: Gustavo Fernandes <gt.fernandes16@gmail.com>"
escreve
inicia_programa()

; Desenvolvimento
fun��o inicia_programa()
  sair = falso
  enquanto (sair = falso) fa�a
    tela limpa
    escreve "Informe o CEP: " &
    le cep
    se (cep = "") ent�o
      escreve "Fim do programa."
    sair = verdadeiro
    sen�o
    resultado = busca_cep(cep)
    se (resultado = indefinido) ent�o
      escreve "N�o foi poss�vel encontrar o endere�o do CEP informado!"
      continua
      fim se
      mostra_cep(resultado)
      fim se
    fim enquanto
  fim fun��o

; ------------------------------------------------------------------------

fun��o busca_cep(cep)
  conecta #1 "viacep.com.br" 80
  escreve #1 "GET http://viacep.com.br/ws/" + cep + "/json/ HTTP/1.0"
  escreve #1 "Host: viacep.com.br"
  escreve #1 "UA-CPU: X86"
  escreve #1 "User-Agent: Webvox 5.5"
  escreve #1 "Accept-Language: pt-br"
  escreve #1 ""
  le #1 linha
  se (pos("200", linha) = 0) ent�o
    fecha #1
    retorna indefinido
    fim se

  resposta = ""
  le #1 linha
  checa fim_pagina
  enquanto (fim_pagina = 0) fa�a
    resposta = resposta + linha
    le #1 linha
    checa fim_pagina
    fim enquanto
  fecha #1

  se (pos("{", resposta) = 0) ent�o retorna indefinido
  se (pos("erro", resposta) > 0) ent�o retorna indefinido
  resposta = resposta[pos("{", resposta) .. tamanho(resposta)]
  converte resposta de UTF8
  remove ARQUIVO_TMP &
  abre #1 ARQUIVO_TMP &
  escreve #1 resposta
  fecha #1

  resultado = conteudo(ARQUIVO_TMP, "JSON")
   remove ARQUIVO_TMP

  retorna resultado
  fim fun��o

; ------------------------------------------------------------------------
fun��o mostra_cep(json)
  escreve "Dados do CEP:"
  form cria
  para chave em chaves(json) fa�a
    form campo chave json[chave]
    fim para
  form visualiza
  fim fun��o
