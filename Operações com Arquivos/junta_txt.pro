**Juntador de arquivos txt
*Autor:  Gabriel Benhur Schuck
*Em 27/08/2017
busca diretorio_default dir "*.*"
folder:=""
escreve "Juntador de arquivos txt"
escreve mudo "Desenvolvido por:  Gabriel Benhur Schuck"
busca diretorio_default dir "*.*"
inicio()

fun��o inicio()
@passo1
escreve "Digite o caminho completo do diret�rio onde est�o os arquivos:"
le pasta
se checar_pasta()=falso
escreve "Esta pasta n�o existe"
desvia @passo1
fim se
se checar_arquivos_txt()=falso
escreve "Nenhum arquivo txt dentro desta pasta"
desvia @passo1
fim se
@passo2
escreve "Digite o nome do arquivo resultante:"
le arquivo
se arquivo=""
escreve "Terminado"
termina mudo
fim se
se n�o arquivo*="txt"
concatena arquivo ".txt"
fim se
escreve "Aguarde um momento por favor..."
juntar_txt()
pergunta ("Deseja juntar mais arquivos?")
fim fun��o

fun��o juntar_txt()
total:=0
linhas:=indefinido
ignorados:=0
conteudo_arquivo:=indefinido
dir troca diretorio_default
abre #1 arquivo &
dir troca pasta
busca arquivos "*.txt"
@passo3
enquanto arquivos<>""
conteudo_arquivo=conteudo(arquivos)
linhas=|conteudo_arquivo|
se linhas=0
escreve "O arquivo " arquivos " est� vazio. Deseja continuar mesmo assim?"
le o &
se o ="s"
busca arquivos pr�ximo
ignorados=ignorados+1
desvia @passo3
sen�o
fecha #1
desvia @fim
termina mudo
fim se
sen�o
contador:=0
enquanto contador <linhas
escreve #1 conteudo_arquivo[contador]
contador=contador+1
fim enquanto
escreve #1
escreve #1
total=total+1
busca arquivos pr�ximo
se arquivos=arquivo quebra
fim se
fim enquanto
fecha #1
@fim
escreve "Opera��o conclu�da!"
escreve total "arquivos adicionados, " ignorados " ignorados"

fim fun��o

fun��o  checar_pasta()
se pasta=""
busca folder dir
sen�o
busca folder dir pasta
se folder=""
retorna falso
sen�o
dir troca pasta
retorna verdadeiro
fim se
fim se
fim fun��o


fun��o checar_arquivos_txt()
busca arquivos "*.txt"
se arquivos=""
retorna falso
sen�o
retorna verdadeiro
fim se
fim fun��o

fun��o pergunta(pergunta)
escreve pergunta
le o &
se o ="s" inicio()
escreve "Obrigado. at� mais!"
termina mudo
fim fun��o
