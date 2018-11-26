*Script de modelo para execu��o de OCR omnipage11
*Autores: Renato Costa
*Data: 23-04-2002

*Vari�veis gen�ricas deste script:
*P = Programa OCR utilizado
*T = Tempo levado pelo scanner para copiar uma p�gina

@inicia

*Atribui a vari�vel P o caminho completo do OCR que ser� utilizado

seja p "c:\arquiv~1\scansoft\omnipa~1.0\omnipage.exe"

*Mensagem de boas vindas
escreve "Script para o omnipage 11"
termina mudo

@configOcr

*Atribui a vari�vel T o tempo levado pelo HP 3200 C para copiar uma p�gina
seja T 40
termina mudo

@carregaOcr

executa p &
espera 10
aciona "alt+p"
aciona "p"
aciona "alt+l"
espera 1
digita "text"
aciona "enter"
termina mudo

@primeiraPagina
aciona "Alt+p"
aciona "enter"
espera T
aciona "ESC"
termina mudo

@proximaPagina
janela maximiza "omnipage"
aciona "Alt+p"
aciona "ENTER"
espera 2
aciona "Alt+m"
espera T
aciona "ESC"
termina mudo

@ultimaPagina
aciona "ESC"
termina mudo

@salvaArq
espera 1
aciona "Alt+p"
aciona "enter"
espera 2
aciona "Alt+f"
espera 5
digita N
aciona "enter"
espera 1
espera 1
aciona "enter"
termina mudo

@fechaOcr
espera 2
aciona "alt+f4"
espera 1
aciona "n"
termina mudo
