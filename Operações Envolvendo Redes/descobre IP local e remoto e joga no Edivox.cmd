*Descobre endere�o local e remoto de uma conex�o
*Autor: Cleverson Casarin Uliana
*Em: 10 de Mar�o de 2005

internet inicia
escreve "informe o s�tio que quer acessar"
l� s
conecta #1 s 80
abre #2 "\ip.tmp"&
ip local #1 l
escreve #2 "ip local="&
escreve #2 l
ip remoto #1 r
escreve #2 "IP remoto="&
escreve #2 r
fecha #2
fecha #1
internet termina
executa "\winvox\edivox \ip.tmp"&
termina
