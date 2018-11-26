* N�merologia - N�meros Quentes - Jean Marie Wamser
* Script criado por: Tiago Melo Casal
* Script criado em: 01/10/2002



escreve "            N�meros Quentes"

*** Pede dados, verifica se estar correto e transforma ***

@Come�o
Tela Limpa
Escreve Mudo "            N�meros Quentes"
escreve

@DigiteNome
escreve "Digite o seu nome completo. Por favor, digite o nome que"
escreve "consta na certid�o de nascimento, para que o resultado seja o"
escreve "mais exato poss�vel."
l� s
se s="" chama @Desiste
se s="" desvia @DigiteNome

*** Retira os acentos e o lixo ***

Seja x Maiusc s

Substitui x " " ""
Substitui x "!" ""
Substitui x "#" ""
Substitui x "$" ""
Substitui x "%" ""
Substitui x "&" ""
Substitui x "'" ""
Substitui x "(" ""
Substitui x ")" ""
Substitui x "*" ""
Substitui x "+" ""
Substitui x "," ""
Substitui x "-" ""
Substitui x "." ""
Substitui x "/" ""
Substitui x ":" ""
Substitui x ";" ""
Substitui x "<" ""
Substitui x "=" ""
Substitui x ">" ""
Substitui x "?" ""
Substitui x "@" ""
Substitui x "�" "A"
Substitui x "�" "A"
Substitui x "�" "A"
Substitui x "�" "A"
Substitui x "�" "A"
Substitui x "�" "C"
Substitui x "�" "E"
Substitui x "�" "E"
Substitui x "�" "E"
Substitui x "�" "E"
Substitui x "�" ""
Substitui x "�" "I"
Substitui x "�" "I"
Substitui x "�" "I"
Substitui x "�" "I"
Substitui x "�" "N"
Substitui x "�" "O"
Substitui x "�" "O"
Substitui x "�" "O"
Substitui x "�" "O"
Substitui x "�" "O"
Substitui x "�" "U"
Substitui x "�" "U"
Substitui x "�" "U"
Substitui x "�" "U"
Substitui x "[" ""
Substitui x "]" ""
Substitui x "^" ""
Substitui x "_" ""
Substitui x "`" ""
Substitui x "{" ""
Substitui x "}" ""
Substitui x "~" ""
Substitui x "�" ""
Substitui x "�" ""
Substitui x "�" ""
Substitui x "�" ""
Substitui x "�" ""
Substitui x "�" ""
Substitui x "�" ""

*** Transforma letras em n�meros correspondentes e separa em vari�veis *
* vogais, consoantes e todas as letras ***

Seja t x

Substitui t "A" "1"
Substitui t "B" "2"
Substitui t "C" "3"
Substitui t "D" "4"
Substitui t "E" "5"
Substitui t "F" "6"
Substitui t "G" "7"
Substitui t "H" "8"
Substitui t "I" "9"
Substitui t "J" "1"
Substitui t "K" "2"
Substitui t "L" "3"
Substitui t "M" "4"
Substitui t "N" "5"
Substitui t "O" "6"
Substitui t "P" "7"
Substitui t "Q" "8"
Substitui t "R" "9"
Substitui t "S" "1"
Substitui t "T" "2"
Substitui t "U" "3"
Substitui t "V" "4"
Substitui t "W" "5"
Substitui t "X" "6"
Substitui t "Y" "7"
Substitui t "Z" "8"

Seja c Tamanho t
Repete v c
Copia z t v v
Substitui z "1" ""
Substitui z "2" ""
Substitui z "3" ""
Substitui z "4" ""
Substitui z "5" ""
Substitui z "6" ""
Substitui z "7" ""
Substitui z "8" ""
Substitui z "9" ""
Seja s Tamanho z
Se s <> 0 Escreve "Nomes com letras n�o aceitas. Por favor, n�o use"
Se s <> 0 Escreve "letras acentuadas nem letras internacionais."
Se s <> 0 Desvia @DigiteNome
Fim Repete

Seja c x
Seja v x

Substitui c "A" ""
Substitui c "B" "2"
Substitui c "C" "3"
Substitui c "D" "4"
Substitui c "E" ""
Substitui c "F" "6"
Substitui c "G" "7"
Substitui c "H" "8"
Substitui c "I" ""
Substitui c "J" "1"
Substitui c "K" "2"
Substitui c "L" "3"
Substitui c "M" "4"
Substitui c "N" "5"
Substitui c "O" ""
Substitui c "P" "7"
Substitui c "Q" "8"
Substitui c "R" "9"
Substitui c "S" "1"
Substitui c "T" "2"
Substitui c "U" ""
Substitui c "V" "4"
Substitui c "W" "5"
Substitui c "X" "6"
Substitui c "Y" "7"
Substitui c "Z" "8"

Substitui v "A" "1"
Substitui v "B" ""
Substitui v "C" ""
Substitui v "D" ""
Substitui v "E" "5"
Substitui v "F" ""
Substitui v "G" ""
Substitui v "H" ""
Substitui v "I" "9"
Substitui v "J" ""
Substitui v "K" ""
Substitui v "L" ""
Substitui v "M" ""
Substitui v "N" ""
Substitui v "O" "6"
Substitui v "P" ""
Substitui v "Q" ""
Substitui v "R" ""
Substitui v "S" ""
Substitui v "T" ""
Substitui v "U" "3"
Substitui v "V" ""
Substitui v "W" ""
Substitui v "X" ""
Substitui v "Y" ""
Substitui v "Z" ""

*** Pede data e data atual ***

@DigiteData
escreve "Digite a sua data de nascimento. Use o formato dd/mm/aaaa"
l� n
se n="" chama @Desiste
se n="" desvia @DigiteData
Seja o Trim n
Seja n Tamanho o
Se n <> "10" Escreve "Data inv�lida."
Se n <> "10" Desvia @DigiteData
Se o="00/00/0000" Escreve "Data inexistente."
Se o="00/00/0000" Desvia @DigiteData
Copia n o 1 2
Se n="00" Escreve "Data do dia de nascimento inexistente."
Se n="00" Desvia @DigiteData
Copia n o 4 5
Se n="00" Escreve "M�s de nascimento inexistente."
Se n="00" Desvia @DigiteData
Seja n o
Substitui n "/" ""
Seja s Tamanho n
Se s <> 8 Escreve "Data inv�lida."
Se s <> 8 Desvia @DigiteData
Repete r 8
Copia z n r r
Substitui z "0" ""
Substitui z "1" ""
Substitui z "2" ""
Substitui z "3" ""
Substitui z "4" ""
Substitui z "5" ""
Substitui z "6" ""
Substitui z "7" ""
Substitui z "8" ""
Substitui z "9" ""
Seja s Tamanho z
Se s <> 0 Escreve "Data com caracteres n�o aceitos."
Se s <> 0 Desvia @DigiteData
Fim Repete
Seja n o

Seja b Data
Escreve "A data atual �: " &
Escreve b
Escreve "A data est� correta e no formato dd/mm/aaaa?"
L� e &
Se e="s" Desvia @Continua
@DigiteDataAtual
Escreve "Digite a data atual no formato DD/MM/AAAA"
L� b
se b="" chama @Desiste
se b="" desvia @DigiteDataAtual
Seja o Trim b
Seja b Tamanho o
Se b <> "10" Escreve "Data inv�lida."
Se b <> "10" Desvia @DigiteDataAtual
Se o="00/00/0000" Escreve "Data inexistente."
Se o="00/00/0000" Desvia @DigiteDataAtual
Copia b o 1 2
Se b="00" Escreve "Data do dia atual inexistente."
Se b="00" Desvia @DigiteDataAtual
Copia b o 4 5
Se b="00" Escreve "M�s atual inexistente."
Se b="00" Desvia @DigiteDataAtual
Seja b o
Substitui b "/" ""
Seja s Tamanho b
Se s <> 8 Escreve "Data inv�lida."
Se s <> 8 Desvia @DigiteData
Repete r 8
Copia z b r r
Substitui z "0" ""
Substitui z "1" ""
Substitui z "2" ""
Substitui z "3" ""
Substitui z "4" ""
Substitui z "5" ""
Substitui z "6" ""
Substitui z "7" ""
Substitui z "8" ""
Substitui z "9" ""
Seja s Tamanho z
Se s <> 0 Escreve "Data com caracteres n�o aceitos."
Se s <> 0 Desvia @DigiteDataAtual
Fim Repete
Seja b o

@Continua

*** Separa em vari�veis o dia, m�s e ano ***

Seja h b
Seja i Tamanho h
Chama @SeparaData
Seja d k
Seja h m
Seja i Tamanho h
Chama @SeparaData
Seja e k
Seja f m
Seja h n
Seja i Tamanho h
Chama @SeparaData
Seja g k
Seja h m
Seja i Tamanho h
Chama @SeparaData
Seja h k
Seja i m

*** Calcula o n�mero do nome ***

Espera 1
Seja u t
Chama @SomaEReduz
Escreve "    Nome" &
Escreve q &
Escreve " significa:"
Se q=1
Escreve "  Um(a) l�der com esp�rito de pioneirismo, energia,"
Escreve "  independ�ncia e determina��o."
Sen�o
Se q=2
Escreve "  Um(a) diplomata e amante da paz, t�o sens�vel ao sentimento"
Escreve "  dos outros quanto aos pr�prios."
Sen�o
Se q=3
Escreve "  Um(a) mestre(a) das palavras, eternamente jovem, que cria"
Escreve "  muitos projetos e se torna mais autoconfiante com a idade."
Sen�o
Se q=4
Escreve "  Um(a) trabalhador(a) eficiente, com senso pr�tico, paciente"
Escreve "  e minucioso(a)."
Sen�o
Se q=5
Escreve "  Um(a) viajante, amante da liberdade, bem-sucedido(a) nas"
Escreve "  varia��es e mudan�as, capaz de fazer muitas coisas ao mesmo"
Escreve "  tempo."
Sen�o
Se q=6
Escreve "  Um(a) harmonizador(a), que sabe valorizar a paz no lar e na"
Escreve "  fam�lia, ama as coisas boas e encara suas responsabilidades"
Escreve "  com seriedade."
Sen�o
Se q=7
Escreve "  Um(a) analista, que sabiamente encontra tempo para ficar s�,"
Escreve "  lendo, escrevendo e observando a floresta - apesar da"
Escreve "  presen�a das �rvores."
Sen�o
Se q=8
Escreve "  Um(a) organizador(a), que alcan�a o poder e o sucesso quando"
Escreve "  consegue controlar seu pr�prio destino."
Sen�o
Se q=9
Escreve "  Um(a) humanit�rio(a), amante da arte, da m�sica e das"
Escreve "  viagens, que sabe dar com generosidade e aprecia o"
Escreve "  reconhecimento de seus atos."
Fim Se

*** Calcula o n�mero da personalidade ***

Bipa
Seja u c
Chama @SomaEReduz
Escreve "    Personalidade" &
Escreve q &
Escreve " significa (Os outros o(a) acham...):"
Se q=1
Escreve "  Ousado(a), independente, original, com for�a de vontade e"
Escreve "  esp�rito competitivo."
Sen�o
Se q=2
Escreve "  Receptivo(a), sens�vel, simp�tico(a), cooperador(a) e"
Escreve "  diplomata."
Sen�o
Se q=3
Escreve "  Amigo(a), otimista, muito falante, despreocupado(a) e"
Escreve "  divertido(a)."
Sen�o
Se q=4
Escreve "  Disciplinado(a), pr�tico(a), trabalhador(a), leal e de"
Escreve "  confian�a."
Sen�o
Se q=5
Escreve "  Sempre alerta, ativo(a), com personalidade de muitas"
Escreve "  facetas, atualizado(a) e com esp�rito de aventura."
Sen�o
Se q=6
Escreve "  Amoroso(a), adapt�vel, am�vel, respons�vel e franco(a)."
Sen�o
Se q=7
Escreve "  Reservado(a), equilibrado(a), perspicaz, anal�tico(a),"
Escreve "  confi�vel."
Sen�o
Se q=8
Escreve "  Auto-suficiente, organizado(a), eficiente, poderoso(a) e"
Escreve "  bem-sucedido(a)."
Sen�o
Se q=9
Escreve "  Cort�s, generoso(a), prestativo(a), caridoso(a) e influente."
Fim Se

*** Calcula o n�mero do cora��o ***

Bipa
Seja u v
Chama @SomaEReduz
Escreve "    Cora��o" &
Escreve q &
Escreve " significa (Seus sentimentos �ntimos e aptid�es o(a) levam a...):"
Se q=1
Escreve "  Liderar e dirigir, usando suas pr�prias id�ias."
Sen�o
Se q=2
Escreve "  Cooperar e agradar os outros, usando a sensibilidade e a"
Escreve "  habilidade diplom�tica que lhe s�o inatas."
Sen�o
Se q=3
Escreve "  Expressar seu otimismo e sua habilidade criativa."
Sen�o
Se q=4
Escreve "  Fazer sacrif�cios para obter resultados tang�veis com planos"
Escreve "  pr�ticos."
Sen�o
Se q=5
Escreve "  Procurar aventuras e viajar em altas velocidades."
Sen�o
Se q=6
Escreve "  Criar uma atmosfera pac�fica e harmoniosa."
Sen�o
Se q=7
Escreve "  Procurar ficar a s�s para encontrar a verdade e contemplar o"
Escreve "  lado tranq�ilo da vida."
Sen�o
Se q=8
Escreve "  Ter responsabilidade e organizar seus esfor�os para obter"
Escreve "  dinheiro, poder e sucesso."
Sen�o
Se q=9
Escreve "  Distribuir seus conhecimentos e sua compaix�o em benef�cio"
Escreve "  do mundo."
Fim Se

*** Cauculando o n�mero da li��o ***

Bipa
Seja u n
Substitui u "/" ""
Chama @SomaEReduz
Escreve "    Li��o" &
Escreve q &
Escreve " significa:"
Se q=1
Escreve "  Aprenda a manter um bom padr�o. Seja forte e independente."
Sen�o
Se q=2
Escreve "  Aprenda a cooperar. Seja diplomata, trabalhe com os outros e"
Escreve "  n�o leve as coisas pelo lado pessoal."
Sen�o
Se q=3
Escreve "  Aprenda a conviver com os outros e empregar bem as palavras."
Escreve "  Seja criativo e desenvolva a autoconfian�a."
Sen�o
Se q=4
Escreve "  Aprenda a trabalhar, atenha-se aos detalhes e seja paciente."
Escreve "  Tenha esp�rito pr�tico e termine tudo o que come�ar."
Sen�o
Se q=5
Escreve "  Aprenda a ser mais flex�vel e a receber bem as mudan�as."
Escreve "  Seja mais espont�neo e aja no entusiasmo do momento."
Sen�o
Se q=6
Escreve "  Aprenda a ser um conciliador. Se outros discutirem, procure"
Escreve "  acalmar os �nimos. Seja am�vel e respons�vel."
Sen�o
Se q=7
Escreve "  Aprenda a ficar s�, sem sentir solid�o. Procure analisar e"
Escreve "  conhecer melhor o lado tranq�ilo e m�stico da vida."
Sen�o
Se q=8
Escreve "  Aprenda a ser organizado, a lidar com dinheiro e a"
Escreve "  equilibrar suas emo��es. Cuide da sa�de, fa�a dieta e"
Escreve "  exerc�cios."
Sen�o
Se q=9
Escreve "  Aprenda a estender a m�o aos outros e se preocupar com seu"
Escreve "  bem-estar. D� sem esperar nada em troca."
Fim Se

*** Caucula o n�mero do ano pessoal ***

Bipa
Seja x e
Seja y h
Se x > y
Seja j g
Concatena j h
Concatena j f
Desvia @AnoContinua
Fim Se
Se x < y
Seja j g
Concatena j h
Seja k f
Subtrai k 1
Concatena j k
Desvia @AnoContinua
Fim Se
Seja x d
Seja y g
Se x >= y
Seja j g
Concatena j h
Concatena j f
Desvia @AnoContinua
Fim Se
Seja j g
Concatena j h
Seja k f
Subtrai k 1
Concatena j k
@AnoContinua
Seja u j
Chama @SomaEReduz
Escreve "    Ano" &
Escreve q &
Escreve " significa:"
Se q=1
Escreve "  Este � o come�o que voc� esperava. O caminho j� foi"
Escreve "  preparado para um in�cio promissor. As sementes que plantar"
Escreve "  agora determinar�o sua pr�xima colheita."
Sen�o
Se q=2
Escreve "  Uni�o e sociedade fazem parte de seus planos. N�o seja t�o"
Escreve "  sens�vel, nem leve as coisas para o lado pessoal. Talvez"
Escreve "  este seja um tempo de espera. Procure concentrar-se em algo"
Escreve "  interessante."
Sen�o
Se q=3
Escreve "  Um ano para ampliar atividades sociais, criar, comunicar,"
Escreve "  colher as sementes que plantou. Existe uma infinidade de"
Escreve "  pequenas tarefas a fazer e voc� pode ficar confuso. Neste"
Escreve "  per�odo de expans�o, � preciso jogo de cintura!"
Sen�o
Se q=4
Escreve "  Um ano de trabalho duro, no qual poder� sentir-se limitado"
Escreve "  e entediado. Cohtinue trabalhando firme e estabele�a bases"
Escreve "  s�lidas para o futuro."
Sen�o
Se q=5
Escreve "  Mantenha as malas prontas e aguarde o inesperado. Um ano de"
Escreve "  divertimentos, liberdade, sexo, mudan�as e viagens. Saia da"
Escreve "  rotina e divirta-se."
Sen�o
Se q=6
Escreve "  Um ano que exigir� responsabilidades e adapta��es e ser�
Escreve "  influenciado pelo amor, pelo lar e pela fam�lia. Voc� pode"
Escreve "  melhorar a pr�pria apar�ncia e a do ambiente que o rodeia."
Escreve "  Seja um �m� e atraia as pessoas."
Sen�o
Se q=7
Escreve "  Reserve tempo para voc� este ano. Aproveite os prazeres da"
Escreve "  leitura ou comunique-se com a natureza. Pense em onde voc�"
Escreve "  tem estado e para onde est� indo. Analise a situa��o."
Sen�o
Se q=8
Escreve "  Toda a for�a no motor! Tempo prop�cio para obter dinheiro,"
Escreve "  poder, sucesso. Cuide da sa�de e fa�a dietas. Organize-se."
Escreve "  Procure atingir o equil�brio f�sico e mental."
Sen�o
Se q=9
Escreve "  Este � um bom ano para organizar seu jardim e dispor daquilo"
Escreve "  que n�o tem mais utilidade. Compartilhe o que possui e pense"
Escreve "  nos outros. Se uma porta se fechar, procure outra, que"
Escreve "  certamente se abrir� no pr�ximo ano."
Fim Se
Seja m q

*** Caucula o n�mero do m�s pessoal ***

Bipa
Seja x d
Seja y g
Se x >= y
Seja r e
Concatena r m
Desvia @M�sContinua
Fim Se
Se e="01"
Seja r "12"
Concatena r m
Desvia @M�sContinua
Fim Se
Seja r e
Subtrai r 1
Concatena r m
@M�sContinua
Seja u r
Chama @SomaEReduz
Escreve "    M�s" &
Escreve q &
Escreve " significa:"
Se q=1
Escreve "  Tempo de ser ativo e independente; planeje algo novo."
Sen�o
Se q=2
Escreve "  Tempo de uni�o e paci�ncia; fa�a um resumo dos"
Escreve "  acontecimentos."
Sen�o
Se q=3
Escreve "  Tempo de usar as palavras, ser criativo e divertir os"
Escreve "  outros."
Sen�o
Se q=4
Escreve "  Tempo de descansar, ser pr�tico, fazer as coisas que foram"
Escreve "  negligenciadas."
Sen�o
Se q=5
Escreve "  Tempo de se divertir, manter a mala pronta e aguardar o"
Escreve "  inesperado."
Sen�o
Se q=6
Escreve "  Tempo de se ajustar, ser am�vel e respons�vel."
Sen�o
Se q=7
Escreve "  Tempo de analisar suas metas e refletir sobre seu progresso."
Sen�o
Se q=8
Escreve "  Tempo de organizar seus atos e escolher o caminho a seguir."
Sen�o
Se q=9
Escreve "  Tempo de completar os projetos, procurar outras pessoas e"
Escreve "  viajar."
Fim Se

*** Caucular o n�mero pessoal do dia ***

Bipa
Seja s d
Concatena s e
Concatena s m
Seja u s
Chama @SomaEReduz
Escreve "    Dia" &
Escreve q &
Escreve " significa:"
Se q=1
Escreve "  Corra atr�s daquilo que quer!"
Sen�o
Se q=2
Escreve "  Sente-se e pense no que deseja!"
Sen�o
Se q=3
Escreve "  Explique bem o que quer!"
Sen�o
Se q=4
Escreve "  Trabalhe para atingir suas metas!"
Sen�o
Se q=5
Escreve "  Persiga o que almeja!"
Sen�o
Se q=6
Escreve "  Ame o que quer!"
Sen�o
Se q=7
Escreve "  Pense naquilo a que aspira!"
Sen�o
Se q=8
Escreve "  Organize os fatos!"
Sen�o
Se q=9
Escreve "  Divida o que conseguir!"
Fim Se

*** Conclus�o ***

Espera 1
Escreve "   Deseja realizar outra consulta?"
L� p &
Se p="s" Desvia @Come�o
Desvia @Termina

*** Separa Data ***

@SeparaData
Seja j Pos "/" h
Se j <= "1" Escreve "Data inv�lida"
Se j <= "1" Retorna
Subtrai j 1
Copia k h 1 j
Seja l j
Soma l 2
Copia m h l i
Retorna

*** Soma e reduz a um algarismo ***

@SomaEReduz
Seja q 0
Seja y 0
Seja z Tamanho u
Repete w z
Copia y u w w
Soma q y
Fim Repete
Seja z Tamanho q
Enquanto z >= "2"
Copia w q 1 1
Copia y q 2 z
Soma w y
Seja q w
Seja z Tamanho q
Fim Enquanto
Retorna

*** Finaliza ou n�o o script ***

@Desiste
escreve "Quer desistir?"
l� g &
se g="s"
@Termina
escreve "O servi�o f�cio e r�pido dos N�meros Quentes, est�o ao seu" &
escreve " dispor."
escreve "Boa Sorte!"
Bipa
Escreve "   Script escrito por Tiago Melo Casal."
Bipa 1
Escreve "   Dados numerol�gicos adaptado do livro N�MEROS QUENTES de ean Sim son"
Bipa 1
Escreve "   Tradu��o de LIA CAYRES"
Bipa 1
Escreve "   EDITORA BEST SELLER"
termina mudo
fim se
se g="n" retorna
