***
* Programa que retira acentos
* Adaptador: Glauco Ferius
* Em 18/8/2001

escreve "Removedor de acentos"
escreve "Informe o nome do arquivo a remover"
le a

abre #1 a
remove "c:\$$$.$$$" &
abre #2 "c:\$$$.$$$" &

@loop
    le #1 l
    checa s
    se s <> 0 desvia @acabou

    chama @trocaTudo
    escreve #2 l

    desvia @loop

@acabou
fecha #1
fecha #2

abre #2 "c:\$$$.$$$"
remove a &
abre #1 a &

@loop2
    le #2 l
    checa s
    se s <> 0 desvia @acabou2
    escreve #1 l
    desvia @loop2
@acabou2

fecha #1
fecha #2

remove "c:\$$$.$$$" &
escreve "Acentos foram removidos"
termina mudo

******************************************

@trocaTudo
substitui l "�" "a"
substitui l "�" "o"
substitui l "�" "u"
substitui l "�" "n"
substitui l "�" "a."
substitui l "�" "o."
substitui l "�" "A"
substitui l "�" "A"
substitui l "�" "A"
substitui l "�" "A"
substitui l "�" "A"
substitui l "�" "a"
substitui l "�" "C"
substitui l "�" "E"
substitui l "�" "E"
substitui l "�" "E"
substitui l "�" "I"
substitui l "�" "I"
substitui l "�" "I"
substitui l "�" "I"
substitui l "�" "N"
substitui l "�" "O"
substitui l "�" "O"
substitui l "�" "O"
substitui l "�" "O"
substitui l "�" "I"
substitui l "�" "U"
substitui l "�" "U"
substitui l "�" "U"
substitui l "�" "U"
substitui l "�" "�"
substitui l "�" "a"
substitui l "�" "a"
substitui l "�" "a"
substitui l "�" "a"
substitui l "�" "c"
substitui l "�" "e"
substitui l "�" "e"
substitui l "�" "e"
substitui l "�" "e"
substitui l "�" "i"
substitui l "�" "i"
substitui l "�" "i"
substitui l "�" "i"
substitui l "�" "n"
substitui l "�" "o"
substitui l "�" "o"
substitui l "�" "o"
substitui l "�" "o"
substitui l "�" "o"
substitui l "�" "u"
substitui l "�" "u"
substitui l "�" "u"
substitui l "�" "u"
retorna
