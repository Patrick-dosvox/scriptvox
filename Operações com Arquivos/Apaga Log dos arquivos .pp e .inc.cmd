* Apaga o Log dos arquivos .pp e .inc, do Free Pascal, para que sejam
* compilados pelo Delphi
* Em: 04/02/2003
* Autor: Tiago Melo Casal



@In�cio
Escreve "Qual arquivo deseja que seja apagado o Log?"
L� a
Se a="" Escreve "Ser� processado todos os arquivos do diret�rio atual."
Se a="" seja n 1
Se a > "" Seja n 0

@AbreArquivo
Se n=0
Abre #1 a
Remove "C:\$$$.$$$" &
Abre #2 "C:\$$$.$$$" &
Desvia @ProcuraLog
Fim Se
Busca a "*.*"
Se a="" Escreve "N�o existe neste diret�rio arquivos .pp e .inc"
Se a="" Termina Mudo
Se a *= ".inc"
Abre #1 a
Remove "C:\$$$.$$$" &
Abre #2 "C:\$$$.$$$" &
Bipa 1
Desvia @ProcuraLog
Sen�o
Se a *= ".pp"
Abre #1 a
Remove "C:\$$$.$$$" &
Abre #2 "C:\$$$.$$$" &
Bipa 1
Desvia @ProcuraLog
Fim Se
Desvia @AbreArquivo

@ProcuraLog
L� #1 l
Checa c
Se c <> 0 Desvia @FimDoArquivo
Seja p l
L� #1 l
Enquanto N�o l =* "  $Log:"
Escreve #2 p
Seja p l
L� #1 l
Checa c
Se c <> 0 Escreve #2 p
Se c <> 0 Desvia @FimDoArquivo
Fim Enquanto
Desvia @FimDoArquivo

@AbrePr�ximoArquivo
Busca a Proximo
Se a="" Escreve "Opera��o conclu�da."
Se a="" Termina Mudo
Se a *= ".inc"
Abre #1 a
Remove "C:\$$$.$$$" &
Abre #2 "C:\$$$.$$$" &
Bipa 1
Desvia @ProcuraLog
Sen�o
Se a *= ".pp"
Abre #1 a
Remove "C:\$$$.$$$" &
Abre #2 "C:\$$$.$$$" &
Bipa 1
Desvia @ProcuraLog
Fim Se
Desvia @AbrePr�ximoArquivo

@FimDoArquivo
Fecha #1
Fecha #2
Remove a &
Renomeia "C:\$$$.$$$" a
Se n="1" Bipa
Se n="1" Desvia @AbrePr�ximoArquivo
Escreve "Arquivo verificado."
Escreve "Deseja verificar outro arquivo?"
L� a &
Se a="s" Desvia @In�cio
Termina Mudo
