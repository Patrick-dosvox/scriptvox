* Script que remove linhas em branco de um arquivo
* Autor: Tiago Melo Casal
* Em: 19/02/2002



escreve "Apagador de linhas em branco"
bipa
@op��o
escreve
escreve "Qual a op��o? " &
@op��oMudo
l� o &
se o="a" escreve mudo o
se o="m" escreve mudo o
se o="u" escreve mudo o
se o="#27" seja o "escape"
se o="escape" escreve mudo o
se o="#0#59" seja o "f1"
se o="f1" escreve mudo o
se o="#0#66" seja o "f8"
se o="f8" escreve mudo o
se o="#0#101" seja o "Control+f8"
se o="Control+f8" escreve mudo o
se o="a" chama @abreArquivos
se o="a" desvia @op��o
se o="m" chama @abreArquivos
se o="m" desvia @op��o
se o="u" chama @abreArquivos
se o="u" desvia @op��o
se o="escape"
repete r 2
bipa
fim repete
escreve "Fim"
termina mudo
fim se
se o="f8" chama @f8
se o="f8" desvia @op��oMudo
se o="Control+f8" chama @Controlf8
se o="Control+f8" desvia @op��oMudo
se o="f1" desvia @f1
se o="#13" desvia @op��o
escreve "Op��o inv�lida."
escreve "Aperte F1 para ajuda."
desvia @op��o
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
escreve "Informe o nome do arquivo original"
l� a
se a="" retorna
escreve "Informe o nome do arquivo destino (diferente do original)"
l� b
se b="" retorna
abre #1 a
remove b &
abre #2 b &
seja n 0
se o="a" desvia @op��oA
se o="m" desvia @op��oM
se o="u" desvia @op��oU


@op��oA
l� #1 l
checa c
se c <> 0 desvia @fim
seja k trim l
se k <> "" escreve #2 l
se k <> "" desvia @op��oA
soma n 1
desvia @op��oA


@op��oM
seja e 0
@maisUm1
l� #1 l
checa c
se c <> 0 desvia @fim
@olhar1
seja k trim l
se k <> "" escreve #2
se k <> "" escreve #2 l
se k <> "" desvia @maisUm1
@olhar2
se k="" soma e 1
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
seja k trim l
se k <> "" subtrai e 1
se k <> "" desvia @olhar1
@encontrei
soma e 1
l� #1 l
checa c
se c <> 0 desvia @fim
seja k trim l
se k=""
desvia @encontrei
sen�o
desvia @olhar2
fim se


@op��oU
seja e 0
l� #1 l
checa c
se c <> 0 desvia @fim
seja k trim l
se k <> "" escreve #2 l
se k <> "" desvia @op��oU
@maisUm2
soma e 1
l� #1 l
checa c
se c <> 0 desvia @fim
seja k trim l
se k="" desvia @maisUm2
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
