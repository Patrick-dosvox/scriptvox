* Script que abre um midi e pausa. Serve para deixar o midi aberto e
* pausado, para resolver o problema de gagueira e lentid�o dos drivers
* WDM das placas de som no Windows 98 SE. Usar na inicializa��o.
* Autor: Tiago Melo Casal
* Em: 06/09/2003



Seja a "C:\Winvox\Scripts\CANYON.MID"

Seja m "Open "
Concatena m a
MCI r m
Se r=""
Escreve "N�o foi poss�vel abrir o arquivo " &
Escreve a
Escreve "Inclua na Linha 9 entre as aspas, o caminho e nome de"
Escreve "um arquivo .mid"
Termina Mudo
Fim Se
Seja m "Play "
Concatena m a
MCI r m
Seja m "Pause "
Concatena m a
MCI r m
Escreve Mudo "Midi aberto e pausado"
Janela Minimiza "SCRIPTVOX"
L� &
Seja m "Close "
Concatena m a
MCI r m
Escreve "Ok!"
Termina mudo
