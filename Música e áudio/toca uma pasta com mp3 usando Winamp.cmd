*Programa para acionar o Winamp;
*Autor: Edson Junior;
*Em 29 de dezembro de 2001;

escreve "Acionador do Winamp para tocar diret�rios completos."

@inicio
escreve "Informe o nome do diret�rio a tocar:"
le d
se d = "" desvia @fim
seja w "c:\arquiv~1\winamp\winamp "
escreve "Tocando o diret�rio" &
escreve d
escreve "Tecle alt+F4 para sair"
concatena w d
executa w

@tocaoutro
escreve "Deseja tocar outro diret�rio?"
le r &
se r <> "n" desvia @inicio

@fim
escreve "OK"
termina tudo
