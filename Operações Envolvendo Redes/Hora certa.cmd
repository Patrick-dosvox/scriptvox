* Script para acertar a hora do computador via Internet e informar a
*hora certa em diversas cidades do mundo
*Autores: Antonio Borges, Glauco F�rius, Fabiano Ferreira e Edson Junior
*Em 12 de julho de 2003
*atualizado em maio de 2014

escreve "Bem vindo ao Programa da Hora Certa!"

@inicio
seja $hora ""
seja $data ""

escreve "Tecle A, para acertar o rel�gio do seu computador pela hora oficial brasileira,"
escreve "ou h, para saber a hora certa em outras cidades do mundo:"
le e &
se e = "a" chama @acertahora
se e = "h" chama @horasdomundo
se e = "#27" chama @fim
desvia @inicio

*acerta o rel�gio do computador
@acertahora
chama @pegahora
chama @tratahora
seja $horaatual hora
seja $dataatual data

Escreve "Hora do seu computador: "$horaatual
Escreve "Hora on line: "$hora
Escreve "data do seu computador: "$dataatual
Escreve "data on line: "$data
Escreve "Modificando hora e data, aguarde."

seja $comando "cmd /c time "
concatena $comando $hora
executa $comando &
espera 3
seja $comando "cmd /c date "
concatena $comando $data
executa $comando
seja $hora hora
seja $data data
Escreve "A hora do seu computador agora �: "$hora
Escreve ""
Escreve "A data do seu computador agora �: "$data
retorna

*mostra a hora certa em diversas cidades do mundo
@horasdomundo
Escreve "Saiba aqui a hora certa em diversas cidades do mundo."
Escreve ""
Escreve "Selecione a cidade e pressione enter para saber a hora."
escreve "Aperte escape para sair do menu"


menu cria 1 1 174 40
menu adiciona "�frica do Sul Joanesburgo"
menu adiciona "�ustria Viena"
menu adiciona "�ndia Calcut�"
menu adiciona "Alb�nia Tirana"
menu adiciona "Alemanha Berlim"
menu adiciona "Andorra Andorra-a-Velha"
menu adiciona "Angola Luanda"
menu adiciona "Ant�gua e Barbuda Saint John's"
menu adiciona "Ar�bia Saudita Riad"
menu adiciona "Argentina Buenos �ires"
menu adiciona "Arg�lia Argel"
menu adiciona "Austr�lia Sidney"
menu adiciona "B�snia e Herzegovina Sarajevo"
menu adiciona "Bahamas Nassau"
menu adiciona "Bahrein Manama"
menu adiciona "Barbados Bridgetown"
menu adiciona "Belize Belmopan"
menu adiciona "Benim Porto-Novo"
menu adiciona "Bielorr�ssia Minsk"
menu adiciona "Bol�via La Paz"
menu adiciona "Botswana Gaborone"
menu adiciona "Brasil Manaus"
menu adiciona "Brasil Recife"
menu adiciona "Brasil S�o Paulo"
menu adiciona "Brunei Bandar Seri Begawan"
menu adiciona "Bulg�ria S�fia"
menu adiciona "Burkina Faso Uagadugu"
menu adiciona "Burundi Bujumbura"
menu adiciona "B�lgica Bruxelas"
menu adiciona "Camar�es Iaund�"
menu adiciona "Camboja Phnom Penh"
menu adiciona "Canad� Hor�rio Atl�ntico Halifax"
menu adiciona "Canad� Hor�rio Central Winnipeg"
menu adiciona "Canad� Hor�rio Oriental Ottawa, Montreal"
menu adiciona "Canad� Hor�rio Pac�fico Vancouver"
menu adiciona "Chade Ndjamena"
menu adiciona "Chile Ilha de P�scoa"
menu adiciona "Chile Santiago"
menu adiciona "China Hong Kong"
menu adiciona "China Pequim"
menu adiciona "Chipre Nic�sia"
menu adiciona "Col�mbia Bogot�"
menu adiciona "Coreia do Norte Pyongyang"
menu adiciona "Coreia do Sul Se�l"
menu adiciona "Costa do Marfim Abidjan"
menu adiciona "Costa Rica San Jos�"
menu adiciona "Cro�cia Zagreb"
menu adiciona "Cuba Havana"
menu adiciona "Dinamarca Copenhague"
menu adiciona "Egito Cairo"
menu adiciona "El Salvador S�o Salvador"
menu adiciona "Equador Quito"
menu adiciona "Eritreia Asmar�"
menu adiciona "Eslov�quia Bratislava"
menu adiciona "Eslov�nia Liubliana"
menu adiciona "Espanha Barcelona"
menu adiciona "Espanha Ilhas Can�rias"
menu adiciona "Espanha Madri"
menu adiciona "Est�nia Tallinn"
menu adiciona "Estados Unidos Chicago"
menu adiciona "Estados Unidos Fl�rida"
menu adiciona "Estados Unidos Los Angeles"
menu adiciona "Estados Unidos Nova Iorque"
menu adiciona "Eti�pia Addis Abeba"
menu adiciona "Filipinas Manila"
menu adiciona "Finl�ndia Helsinki"
menu adiciona "Fran�a Paris"
menu adiciona "Gab�o Libreville"
menu adiciona "Gana Acra"
menu adiciona "G�mbia Banjul"
menu adiciona "Granada Saint George's"
menu adiciona "Groel�ndia Nuuk"
menu adiciona "Groel�ndia Qaanaaq"
menu adiciona "Gr�cia Atenas"
menu adiciona "Guatemala Guatemala"
menu adiciona "Guiana Georgetown"
menu adiciona "Guin� Equatorial Malabo"
menu adiciona "Guin�-Bissau Bissau"
menu adiciona "Haiti Porto Pr�ncipe"
menu adiciona "Holanda Amsterd�o"
menu adiciona "Honduras Tegucigalpa"
menu adiciona "Hungria Budapeste"
menu adiciona "Indon�sia Hor�rio Ocidental Jacarta"
menu adiciona "Indon�sia Hor�rio Oriental Manokwari"
menu adiciona "Inglaterra Londres"
menu adiciona "Iraque Bagd�"
menu adiciona "Irlanda Dublim"
menu adiciona "Isl�ndia Reiquiavique"
menu adiciona "Israel Jerusal�m"
menu adiciona "It�lia Roma"
menu adiciona "I�men Sana"
menu adiciona "Jamaica Kingston"
menu adiciona "Jap�o T�quio"
menu adiciona "Jord�nia Am�"
menu adiciona "Kinshasa"
menu adiciona "Kuwait Al Kuwait"
menu adiciona "Laos Vietiname"
menu adiciona "Lesoto Maseru"
menu adiciona "Let�nia Riga"
menu adiciona "Lib�ria Monr�via"
menu adiciona "Liechtenstein Vaduz"
menu adiciona "Litu�nia Vilnius"
menu adiciona "Luxemburgo Luxemburgo"
menu adiciona "L�bano Beirute"
menu adiciona "L�bia Tr�poli"
menu adiciona "M�naco M�naco"
menu adiciona "Maced�nia Skopje"
menu adiciona "Madag�scar Antananarivo"
menu adiciona "Mal�sia Kuala Lumpur"
menu adiciona "Malawi Lilongwe"
menu adiciona "Malta La Valeta"
menu adiciona "Marrocos Rabat"
menu adiciona "Maurit�nia Nuakchott"
menu adiciona "Mold�via Chisinau"
menu adiciona "Mong�lia Ulaanbaatar"
menu adiciona "Montenegro Podgorica"
menu adiciona "Mo�ambique Maputo"
menu adiciona "M�xico Hor�rio Central"
menu adiciona "M�xico Hor�rio Noroeste Mexicali, Tijuana"
menu adiciona "Nam�bia Windhoek"
menu adiciona "Nicar�gua Man�gua"
menu adiciona "Nig�ria Abuja"
menu adiciona "Noruega Oslo"
menu adiciona "N�ger Niamei"
menu adiciona "Palau Melekeok"
menu adiciona "Panam� Panam�"
menu adiciona "Paraguai Assun��o"
menu adiciona "Peru Lima"
menu adiciona "Pol�nia Vars�via"
menu adiciona "Portugal Continental e Lisboa, Funchal"
menu adiciona "Qatar Doha"
menu adiciona "Qu�nia Nair�bi"
menu adiciona "R�ssia Irkutsk"
menu adiciona "R�ssia Kalingrado"
menu adiciona "R�ssia Krasnoyarsk"
menu adiciona "R�ssia Moscou"
menu adiciona "R�ssia Omsk"
menu adiciona "Reino Unido Londres"
menu adiciona "Rep�blica Centro-Africana Bangui"
menu adiciona "Rep�blica Checa Praga"
menu adiciona "Rep�blica do Congo Brazzaville"
menu adiciona "Rom�nia Bucareste"
menu adiciona "Ruanda Kigali"
menu adiciona "Saara Ocidental El Aai�n"
menu adiciona "Senegal Dacar"
menu adiciona "Senegal Dakar"
menu adiciona "Serra Leoa Freetown"
menu adiciona "Singapura Singapura"
menu adiciona "Som�lia Mogad�scio"
menu adiciona "S�o Tom� e Pr�ncipe"
menu adiciona "S�o Vicente e Granadinas Kingstown"
menu adiciona "Suazil�ndia Lobamba"
menu adiciona "Sud�o Cartum"
menu adiciona "Sud�o do Sul Juba"
menu adiciona "Suriname Paramaribo"
menu adiciona "Su�cia Estocolmo"
menu adiciona "Su��a Berna"
menu adiciona "S�rvia Belgrado"
menu adiciona "S�ria Damasco"
menu adiciona "Tail�ndia Bancoque"
menu adiciona "Tanz�nia Dodoma, Zanzibar"
menu adiciona "Timor Leste D�li"
menu adiciona "Togo Lom�"
menu adiciona "Trindade e Tobago Port of Spain"
menu adiciona "Tun�sia T�nis"
menu adiciona "Turquia Ankara, Istambul"
menu adiciona "Ucr�nia Kiev"
menu adiciona "Uganda Kampala"
menu adiciona "Uruguai Montevid�u"
menu adiciona "Vaticano"
menu adiciona "Vietname Han�i"
menu adiciona "Washington Hor�rio Oriental"
menu adiciona "Zimbabwe Harare"
menu adiciona "Z�mbia Lusaka"

@naofaznada
menu executa $numero $letra $texto
se $letra = "#13" chama @mostrahora
se $letra = "#0#66" chama @mostrahora
se $letra = "#0#65" chama @mostrahora
se $letra = "#27" retorna
desvia @naofaznada

*mostra a hora da cidade escolhida
@mostrahora
se $numero = 1 seja c "joanesburgo"
se $numero = 2 seja c "viena"
se $numero = 3 seja c "calcuta"
se $numero = 4 seja c "viena"
se $numero = 5 seja c "viena"
se $numero = 6 seja c "viena"
se $numero = 7 seja c "luanda"
se $numero = 8 seja c "buenos_aires"
se $numero = 9 seja c "dubai"
se $numero = 10 seja c "buenos_aires"
se $numero = 11 seja c "viena"
se $numero = 12 seja c "sidney"
se $numero = 13 seja c "viena"
se $numero = 14 seja c "manaus"
se $numero = 15 seja c "dubai"
se $numero = 16 seja c "buenos_aires"
se $numero = 17 seja c "chicago"
se $numero = 18 seja c "viena"
se $numero = 19 seja c "dubai"
se $numero = 20 seja c "manaus"
se $numero = 21 seja c "bagda"
se $numero = 22 seja c "manaus"
se $numero = 23 seja c "recife"
se $numero = 24 seja c "sao_paulo"
se $numero = 25 seja c "toquio"
se $numero = 26 seja c "bagda"
se $numero = 27 seja c "londres"
se $numero = 28 seja c "bagda"
se $numero = 29 seja c "viena"
se $numero = 30 seja c "viena"
se $numero = 31 seja c "hong-kong"
se $numero = 32 seja c "buenos_aires"
se $numero = 33 seja c "chicago"
se $numero = 34 seja c "manaus"
se $numero = 35 seja c "los_angeles"
se $numero = 36 seja c "viena"
se $numero = 37 seja c "chicago"
se $numero = 38 seja c "buenos_aires"
se $numero = 39 seja c "hong_kong"
se $numero = 40 seja c "toquio"
se $numero = 41 seja c "bagda"
se $numero = 42 seja c "manaus"
se $numero = 43 seja c "sidney"
se $numero = 44 seja c "sidney"
se $numero = 45 seja c "londres"
se $numero = 46 seja c "chicago"
se $numero = 47 seja c "viena"
se $numero = 48 seja c "manaus"
se $numero = 49 seja c "viena"
se $numero = 50 seja c "cairo"
se $numero = 51 seja c "chicago"
se $numero = 52 seja c "manaus"
se $numero = 53 seja c "dubai"
se $numero = 54 seja c "viena"
se $numero = 55 seja c "viena"
se $numero = 56 seja c "viena"
se $numero = 57 seja c "londres"
se $numero = 58 seja c "viena"
se $numero = 59 seja c "bagda"
se $numero = 60 seja c "chicago"
se $numero = 61 seja c "chicago"
se $numero = 62 seja c "los_angeles"
se $numero = 63 seja c "nova_iorque"
se $numero = 64 seja c "dubai"
se $numero = 65 seja c "toquio"
se $numero = 66 seja c "bagda"
se $numero = 67 seja c "paris"
se $numero = 68 seja c "viena"
se $numero = 69 seja c "londres"
se $numero = 70 seja c "londres"
se $numero = 71 seja c "buenos_aires"
se $numero = 72 seja c "sao_paulo"
se $numero = 73 seja c "buenos_aires"
se $numero = 74 seja c "atenas"
se $numero = 75 seja c "chicago"
se $numero = 76 seja c "buenos_aires"
se $numero = 77 seja c "viena"
se $numero = 78 seja c "londres"
se $numero = 79 seja c "manaus"
se $numero = 80 seja c "viena"
se $numero = 81 seja c "chicago"
se $numero = 82 seja c "viena"
se $numero = 83 seja c "hong-kong"
se $numero = 84 seja c "sidney"
se $numero = 85 seja c "londres"
se $numero = 86 seja c "bagda"
se $numero = 87 seja c "londres"
se $numero = 88 seja c "londres"
se $numero = 89 seja c "jerusalem"
se $numero = 90 seja c "viena"
se $numero = 91 seja c "dubai"
se $numero = 92 seja c "manaus"
se $numero = 93 seja c "toquio"
se $numero = 94 seja c "bagda"
se $numero = 95 seja c "viena"
se $numero = 96 seja c "dubai"
se $numero = 97 seja c "hong-kong"
se $numero = 98 seja c "bagda"
se $numero = 99 seja c "bagda"
se $numero = 100 seja c "londres"
se $numero = 101 seja c "viena"
se $numero = 102 seja c "bagda"
se $numero = 103 seja c "viena"
se $numero = 104 seja c "bagda"
se $numero = 105 seja c "viena"
se $numero = 106 seja c "viena"
se $numero = 107 seja c "viena"
se $numero = 108 seja c "dubai"
se $numero = 109 seja c "toquio"
se $numero = 110 seja c "bagda"
se $numero = 111 seja c "viena"
se $numero = 112 seja c "londres"
se $numero = 113 seja c "londres"
se $numero = 114 seja c "bagda"
se $numero = 115 seja c "toquio"
se $numero = 116 seja c "viena"
se $numero = 117 seja c "bagda"
se $numero = 118 seja c "chicago"
se $numero = 119 seja c "los_angeles"
se $numero = 120 seja c "viena"
se $numero = 121 seja c "chicago"
se $numero = 122 seja c "viena"
se $numero = 123 seja c "viena"
se $numero = 124 seja c "viena"
se $numero = 125 seja c "sidney"
se $numero = 126 seja c "manaus"
se $numero = 127 seja c "buenos_aires"
se $numero = 128 seja c "manaus"
se $numero = 129 seja c "viena"
se $numero = 130 seja c "lisboa"
se $numero = 131 seja c "dubai"
se $numero = 132 seja c "dubai"
se $numero = 133 seja c "sidney"
se $numero = 134 seja c "dubai"
se $numero = 135 seja c "toquio"
se $numero = 136 seja c "moscou"
se $numero = 137 seja c "hong-kong"
se $numero = 138 seja c "londres"
se $numero = 139 seja c "viena"
se $numero = 140 seja c "viena"
se $numero = 141 seja c "viena"
se $numero = 142 seja c "bagda"
se $numero = 143 seja c "bagda"
se $numero = 144 seja c "londres"
se $numero = 145 seja c "londres"
se $numero = 146 seja c "dakar"
se $numero = 147 seja c "londres"
se $numero = 148 seja c "toquio"
se $numero = 149 seja c "dubai"
se $numero = 150 seja c "londres"
se $numero = 151 seja c "buenos_aires"
se $numero = 152 seja c "bagda"
se $numero = 153 seja c "dubai"
se $numero = 154 seja c "dubai"
se $numero = 155 seja c "sao_paulo"
se $numero = 156 seja c "viena"
se $numero = 157 seja c "viena"
se $numero = 158 seja c "viena"
se $numero = 159 seja c "bagda"
se $numero = 160 seja c "hong-kong"
se $numero = 161 seja c "dubai"
se $numero = 162 seja c "sidney"
se $numero = 163 seja c "londres"
se $numero = 164 seja c "buenos_aires"
se $numero = 165 seja c "viena"
se $numero = 166 seja c "bagda"
se $numero = 167 seja c "bagda"
se $numero = 168 seja c "dubai"
se $numero = 169 seja c "sao_paulo"
se $numero = 170 seja c "viena"
se $numero = 171 seja c "hong-kong"
se $numero = 172 seja c "manaus"
se $numero = 173 seja c "bagda"
se $numero = 174 seja c "bagda"
chama @pegahora
chama @tratahora
se $letra = "#0#66"
Escreve $hora
sen�o
se $letra = "#0#65"
escreve $data
sen�o
escreve $hora
escreve $data
fim se
retorna

*obtem a hora on line
@pegahora
internet inicia
conecta #1 "www.horacerta.com.br" 80
se e = "a"
escreve #1 "GET / HTTP /1.1"
sen�o
seja $pagina "/index.php?city="
concatena $pagina c
escreve #1 "GET "$pagina" HTTP /1.1"
fim se
escreve #1 "User-agent: scripvox"
escreve #1 "Accept: */*"
escreve #1 "Host: www.horacerta.com.br"
escreve #1 "connection: Keep-Alive"
escreve #1 ""
le #1 $horadata
enquanto n�o $horadata *=* "name=""mostrador"""
le #1 $horadata
fim enquanto
fecha #1
internet termina
retorna

*trata a hora e a data obtida para aplica��o ou exibi��o
@tratahora
seja p pos "value" $horadata
soma p 7
seja t tamanho $horadata
copia $horadata $horadata p t
seja p pos """" $horadata
subtrai p 1
copia $horadata $horadata 1 p
seja p pos " " $horadata
subtrai p 1
copia $data $horadata 1 p

soma p 4

seja t tamanho $horadata
copia $hora $horadata p t
copia $hh $hora 1 2
se $hora *=* "PM"
se $hh < 12  soma $hh 12
fim se
se $hora *=* "AM"
se $hh = 12 seja $hh "00"
fim se
seja t tamanho $hora
subtrai t 3
copia $hora $hora 3 t
concatena $hh $hora
seja $hora $hh
retorna

*termina o programa
@fim
Escreve "Ok."
escreve "At� logo."
termina mudo
