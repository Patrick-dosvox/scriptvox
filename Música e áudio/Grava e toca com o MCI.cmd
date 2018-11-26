* Script que usa o MCI para tocar, gravar sons, etc
* Autor: Tiago Melo Casal
* Em: 25/02/2003



Escreve "MCI Script"
Escreve
@OQueDeseja
Escreve "O que deseja?"
L� p &
Se p="g" Desvia @Gravar
Se p="t" Desvia @Tocar
Se p="#27" Termina Mudo
Desvia @OQueDeseja

@Gravar
Escreve "As op��es de grava��o s�o:"
Escreve "C - Grava de CD para MP3"
Escreve "G - Grava um som qualquer"
Escreve "Que op��o de grava��o?"
L� p &
Se P="C" Desvia @CdMp3
Se p="g" Desvia @GravaUmSom
Se P="#27" Desvia @OQueDeseja
Desvia @Gravar

@CdMp3
MCI m "Open CDAudio"
Se m < "1" MCI m "Open CDAudio"
Se m < "1"
Escreve "N�o foi poss�vel abrir o Dispositivo CDAudio"
Desvia @Gravar
Fim Se
Escreve "Coloque o CD e tecle Enter"
L�
MCI m "Set CDAudio Door Closed"
MCI m "status cdaudio Ready"
Se m="false" MCI v "Status CDAudio Media Present"
Se v="true" Escreve "Erro na leitura do CDAudio"
Se v="false" Escreve "N�o h� CD no driver"
Se m="false" Desvia @Gravar
Escreve "Gravo em que arquivo?"
L� a
Se a="" Desvia @Gravar
MCI m "Status CDAudio Number of Tracks"
Seja n m
Escreve "H� " &
Escreve n &
Escreve " faixas, no CD-�udio presente."
Escreve "Come�o a gravar apartir de qual faixa?"
L� i
Se i="" Escreve "Desistiu."
Se i="" Desvia @Gravar
MCI m "Set CDAudio Time Format TMSF"
Seja t "Play CDAudio "
Concatena t "From "
Se i=n Concatena t i
Se i=n Desvia @In�cioDaGrava��o
Escreve "r - Grava o restante das faixas, ou S - somente essa?"
L� p &
Se p="s"
Concatena t i
Concatena t " To "
Soma i 1
Concatena t i
Sen�o
Se p="r"
Concatena t i
Fim Se
@In�cioDaGrava��o
MCI m "Status CDAudio Mode"
Se m="paused"
MCI m "Stop CDAudio"
MCI m "Status CDAudio Mode"
Sen�o
Se m="plaing"
MCI m "Stop CDAudio"
MCI m "Status CDAudio Mode"
Sen�o
Se m <> "stopped"
MCI m "Stop CDAudio"
MCI m "Status CDAudio Mode"
Fim Se
Se m <> "stopped"
Escreve "Erro: N�o conseguir parar o CDAudio. Retorno: " &
Escreve m
Escreve "N�o irei prosseguir."
Desvia @Gravar
Fim Se
MCI m "Open New Type WaveAudio Alias MeuSom"
Se m < "1" Escreve "N�o conseguir criar alias MeuSom para WaveAudio"
Se m < "1" Desvia @Gravar
MCI m "set MeuSom time format ms bitspersample 16 channels 2 samplespersec 40100"
MCI m "Record MeuSom"
MCI m t
@ObservaTeclado
Observa Teclado t
Se t="0" Desvia @ObservaTeclado
L� p &
Se p="#27" Desvia @FinalizaGrava��o
Se P="#13" Desvia @FinalizaGrava��o
Desvia @ObservaTeclado
@FinalizaGrava��o
MCI m "Stop MeuSom"
MCI m "Stop CDAudio"
Seja s "Save MeuSom "
Concatena s a
MCI m s
MCI m "Close CDAudio"
MCI m "Close MeuSom"
Termina Mudo


@GravaUmSom
Escreve "Gravo em que arquivo?"
L� a
Se a="" Desvia @Gravar
MCI m "Open New Type WaveAudio Alias MeuSom"
Se m < "1" Escreve "N�o conseguir criar alias MeuSom para WaveAudio"
Se m < "1" Desvia @Gravar
MCI m "set MeuSom time format ms bitspersample 16 channels 2 samplespersec 40100"
Escreve "Precione I - para Iniciar a grava��o, P - Para Pausar,"
Escreve "F - Para Finalizar e ESC - Cancela"
@IPF
Observa Teclado t
Se t="0" Desvia @IPF
L� p &
Se p="i" MCI m "Record MeuSom"
Se p="p" Mci m "Pause MeuSom"
Se p="f" Desvia @GravaArquivo
Se p="#27" MCI m "Stop MeuSom"
Se p="#27" MCI m "Close MeuSom"
Se p="#27" Desvia @Gravar
Desvia @IPF
@GravaArquivo
MCI m "Stop MeuSom"
Seja s "Save MeuSom "
Concatena s a
MCI m s
MCI m "Close MeuSom"
Termina Mudo


@Tocar
Escreve "As op��es para tocar s�o:"
Escreve "D - Toca todo um diret�rio"
Escreve "Que op��o para tocar?"
L� p &
Se P="d" Desvia @Diret�rio
Se P="#27" Desvia @OQueDeseja
Desvia @Tocar
@Diret�rio
Escreve "Digite o caminho do diret�rio, o qual ser� tocado os sons:"
L� d
Se d="" Desvia @Tocar
Busca a Dir
Dir Troca d
remove "C:\Windows\Temp\bmwms.tmp" &
Abre #1 "C:\Windows\Temp\bmwms.tmp" &
Busca b "*.*"
Enquanto b <> ""
Se b *=".mid" Escreve #1 b
Se b *= ".mp3" Escreve #1 b
Se b *= ".wav" Escreve #1 b
Busca b Proximo
Fim Enquanto
@FechaArq
Fecha #1
@Play
Abre #1 "C:\Windows\Temp\bmwms.tmp"
L� #1 l
Seja t """
Concatena t d
Concatena t "\"
Concatena t l
Concatena t """
Seja o "Open "
Concatena o t
MCI m o
Seja p "Play "
Concatena p t
Mci m p
L�
Seja s "Stop "
Concatena s t
Mci m s
Seja c "Close "
Concatena c t
Mci m c
@FimTocar
Fecha #1
Remove "C:\Windows\Temp\bmwms.tmp" &
Dir Troca a
Termina Mudo
