* Converte um arquivo documento do word em texto puro
* Utiliza Word 7.0
* Juliano dos Santos

escreve "Conversor de documentos do word para texto"
* P�e o texto entre aspas na tela, falando-o.
espera 1
* D� um pequeno intervalo (um segundo), para ficar mais compreens�vel
escreve "Digite o nome do arquivo:"
*o usu�rio poder� digitar, se for precisso, um caminho longo, pois ter�
* uma linha completa na tela.
le n
* L� o valor digitado para a vari�vel n
se n="" desvia @fim
* Se a vari�vel n estiver vazia (o usu�rio teclou enter), o script tem
* fim.
escreve "Chamando o Word 7.0"
seja w "winword "
* Atribui o valor "winword " � vari�vel w
concatena w n
* adiciona a vari�vel N � direita da vari�vel w
* Fica a linha completa para o winword...
executa w &
* Chama o word
toca "\WINVOX\SOM\CLOCKVOX\CKTEC.wav"
espera 1
toca "\WINVOX\SOM\CLOCKVOX\CKTEC.wav"
espera 1
toca "\WINVOX\SOM\CLOCKVOX\CKTEC.wav"
espera 1
toca "\WINVOX\SOM\CLOCKVOX\CKTEC.wav"
espera 1
toca "\WINVOX\SOM\CLOCKVOX\CKTEC.wav"
* D� um intervalo, para que a janela do word seja ativada

escreve "convertendo para txt"
aciona "alt+a"
toca "\WINVOX\SOM\CLOCKVOX\CKTEC.wav"
espera 1
toca "\WINVOX\SOM\CLOCKVOX\CKTEC.wav"
digita "c"
espera 1
toca "\WINVOX\SOM\CLOCKVOX\CKTEC.wav"
espera 1
toca "\WINVOX\SOM\CLOCKVOX\CKTEC.wav"
aciona "alt+r"
aciona "alt+down"
aciona "down"
aciona "down"
aciona "down"
aciona "down"
aciona "alt+s"
* S�o comandos que robotizam a tarefa que seria feita manualmente no
* word

toca "\WINVOX\SOM\CLOCKVOX\CKTEC.wav"
espera 1
toca "\WINVOX\SOM\CLOCKVOX\CKTEC.wav"
espera 1
* um tempo para que o arquivo seja gravado no formato txt...

aciona "ctrl+f4"
*Fecha o arquivo texto.
aciona "s"
toca "\WINVOX\SOM\CLOCKVOX\CKTEC.wav"
*Caso o word abra alguma janela de pergunta

aciona "alt+f4"
* Fecha o word

desvia @fim

@fim
escreve "Ok, fim do script"
termina
