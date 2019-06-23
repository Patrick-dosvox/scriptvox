*Script Despertador Musical
*Autor: Edson Junior (Montanha)
*Em 18 de outubro de 2003
*Convers�o para scripvox 6.4 por Patrick Barboza
*Em 21/11/2018

escreve "Bem-vindo ao despertador musical!"

@pegahora
escreve "Informe a hora para ser despertado no formato hora:minuto, com dois d�gitos cada:"
le h
se h = "" termina "Programa cancelado."
copia x h 1 2
copia y h 4 5
se x < 10
copia k h 2 2
fim se
se y < 10
copia z h 5 5
fim se
escreve "Programando para" &
se x < 10
escreve k &
sen�o
escreve x &
fim se
escreve "horas" &
escreve "e" &
se y < 10
escreve z &
sen�o
escreve y &
fim se
escreve "minutos."
escreve "Confirma hora?"
le o &
se o <> "n" desvia @programa
desvia @pegahora

@programa
escreve "Informe o nome completo do arquivo a tocar:"
le m
se m = "" desvia @programa
busca a m
se a = ""
escreve "Arquivo n�o existe."
desvia @programa
fim se
escreve "OK, hora programada."

@checahora
t := HORA
copia t t 1 5
se h = t desvia @desperta
espera 1
desvia @checahora

@desperta
c := "c:\winvox\midiavox "
c := c + """"
c := c + m
c := c + """"
executa c
termina mudo
