* Compara dois caracteres se s�o iguais
* Autor: Tiago Melo Casal
* Em: 08/05/2004



Escreve "Compara caracteres"
@In�cio
Escreve "Digite o primeiro caractere: " &
L� p &
@SegundoCaractere
Escreve "Digite o segundo caractere: " &
L� s &
Se p = s
Escreve "O caractere " p &
Escreve " � igual ao caractere " s
Sen�o
Escreve "O caractere " p &
Escreve " � diferente do caractere " s
Fim Se
Escreve "Deseja continuar? " &
L� c &
Se c <> "s" Termina Mudo
Se p = s Desvia @In�cio
Desvia @SegundoCaractere
