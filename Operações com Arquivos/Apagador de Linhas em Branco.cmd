* Script que remove linhas em branco de um arquivo
* Autor: Tiago Melo Casal
* Em: 19/02/2002
* Atualizado em: 15/03/2004



escreve "Apagador de linhas em branco"
bipa
@op��o
escreve
escreve "Qual a op��o? " &
@op��oMudo
l� o &
se o="a" chama @abreArquivos
se o="a" desvia @op��o
se o="m" chama @abreArquivos
se o="m" desvia @op��o
se o="u" chama @abreArquivos
se o="u" desvia @op��o
se o="#27"
bipa
bipa
escreve "Fim"
termina mudo
fim se
se o="#0#66" chama @f8
se o="#0#66" desvia @op��oMudo
se o="#0#101" chama @Controlf8
se o="#0#101" desvia @op��oMudo
se o="#0#59" desvia @f1
se o="#13" desvia @op��o
se o="#0#67" Desvia @Menu
se o="#0#72" Desvia @Menu
se o="#0#80" Desvia @Menu
escreve "Op��o inv�lida."
escreve "Aperte F1 para ajuda."
desvia @op��o
@Menu
Tela Limpa
Menu Cria 1 1 59 3
Menu Adiciona "a - Remove todas as linhas em branco"
Menu Adiciona "m - Substitui mais de uma linha em branco, pela sua metade"
Menu Adiciona "u - Substitui v�rias linhas em branco, por uma s�"
menu Executa x y z
Menu Termina
Seja o y
se o="a" chama @abreArquivos
se o="a" desvia @op��o
se o="m" chama @abreArquivos
se o="m" desvia @op��o
se o="u" chama @abreArquivos
se o="u" desvia @op��o
Se o="Enter" Desvia @Enter
Se o="Esc" Desvia @Op��o
Desvia @Menu
@Enter
Seja o x
se o="1" Seja o "a"
se o="a" chama @abreArquivos
se o="a" desvia @op��o
se o="2" Seja o "b"
se o="b" chama @abreArquivos
se o="b" desvia @op��o
se o="3" Seja o "c"
se o="c" chama @abreArquivos
se o="c" desvia @op��o
Desvia @Menu
@f1
escreve "As op��es s�o:"
escreve
escreve "a - Remove todas as linhas em branco"
escreve "m - Substitui mais de uma linha em branco, pela sua metade"
escreve "u - Substitui v�rias linhas em branco, por uma s�"
escreve "esc - Fim"
escreve
desvia @op��o

@abreArquivos
Tela Limpa
escreve "Informe o nome do arquivo original"
l� a
se a="" retorna
escreve "Informe o nome do arquivo destino. Enter, mant�m o mesmo nome:"
Escreve a
l� b
se b="" Seja b a
Abre #1 a
@QuantasLinhas
    l� #1 l
    checa c
    se c <> 0 Fecha #1
Se c=0 Soma z 1
Se c=0 Desvia @QuantasLinhas
abre #1 a
Se N�o a=b
remove b &
abre #2 b &
Sen�o
Se a=b
Remove "C:\$$$.$$$" &
Abre #2 "C:\$$$.$$$" &
Fim Se
seja n 0
Seja x 0
Seja y 0
se o="a" Chama @op��oA
se o="m" Chama @op��oM
se o="u" Chama @op��oU


@op��oA
se x>="500" bipa 1
se x>="500" seja x 0
Observa Teclado t
Se t <> 0
L� &
Escreve y &
Escreve " de " &
Escreve z &
Escreve " Linhas"
Fim Se
l� #1 l
checa c
se c <> 0 desvia @fim
Soma x 1
Soma y 1
se l <> "" escreve #2 l
se l <> "" desvia @op��oA
soma n 1
desvia @op��oA


@op��oM
seja e 0
@maisUm1
se x>="500" bipa 1
se x>="500" seja x 0
Observa Teclado t
Se t <> 0
L� &
Escreve y &
Escreve " de " &
Escreve z &
Escreve " Linhas"
Fim Se
l� #1 l
checa c
se c <> 0 desvia @fim
Soma x 1
Soma y 1
@olhar1
se l <> "" escreve #2 l
se l <> "" desvia @maisUm1
@olhar2
se l="" soma e 1
se e="1" desvia @igual1
se e > "1" seja f e
se e > "1" seja g e
se e > "1" divide f 2
se e > "1" multiplica f 2
se f = g seja h "0"
se f <> g seja h "1"
se e > "1" divide e 2
repete r e
escreve #2
fim repete
escreve #2 l
soma n e
se h="0"
desvia @op��oM
sen�o
soma n h
desvia @op��oM
fim se

@igual1
l� #1 l
checa c
se c <> 0 desvia @fim
se l <> "" subtrai e 1
se l <> "" desvia @olhar1
@encontrei
soma e 1
l� #1 l
checa c
se c <> 0 desvia @fim
se l=""
desvia @encontrei
sen�o
desvia @olhar2
fim se


@op��oU
seja e 0
se x>="500" bipa 1
se x>="500" seja x 0
Observa Teclado t
Se t <> 0
L� &
Escreve y &
Escreve " de " &
Escreve z &
Escreve " Linhas"
Fim Se
l� #1 l
checa c
se c <> 0 desvia @fim
Soma x 1
Soma y 1
se l <> "" escreve #2 l
se l <> "" desvia @op��oU
@maisUm2
soma e 1
l� #1 l
checa c
se c <> 0 desvia @fim
se l="" desvia @maisUm2
se e > "1"
subtrai e 1
escreve #2
escreve #2 l
soma n e
sen�o
escreve #2
escreve #2 l
fim se
desvia @op��oU


@fim
    fecha #1
    fecha #2
Se a=b Remove a &
Se a=b Renomeia "C:\$$$.$$$" b
escreve "N�mero de linhas removidas: " &
escreve n
tela limpa
escreve mudo "Apagador de linhas em branco"
bipa
retorna


@f8
seja s hora
copia h s 1 2
concatena h " horas e "
copia m s 4 5
concatena m "minutos"
concatena h m
escreve h
retorna

@Controlf8
seja d dia
seja t data
concatena d "  "
copia r t 1 2
concatena r " de "
concatena d r
copia m t 4 5
substitui m "01" "janeiro de "
substitui m "02" "fevereiro de "
substitui m "03" "mar�o de "
substitui m "04" "abril de "
substitui m "05" "maio de "
substitui m "06" "junho de "
substitui m "07" "julho de "
substitui m "08" "agosto de "
substitui m "09" "setembro de "
substitui m "10" "outubro de "
substitui m "11" "novembro de "
substitui m "12" "dezembro de "
concatena d m
copia a t 7 10
concatena d a
escreve d
retorna
