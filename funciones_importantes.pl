#!/bib/perl
# Autor:Damian Matuz

use warnings;
use strict;

#Funciones que se usan con regularidad:

#chop($string): Elimina el último caracter de una cadena de texto
my $cadena = 'Damian';
chop($cadena);
print $cadena."\n";

#chomp($string): Elimina el último caracter de la variable si es una 
#salto de línea
print "Escribe un número\n";
my $entrada = <STDIN>;
print "Tiene salto de línea, mira: \n";
print $entrada;
chomp($entrada);
print "Ya no tiene salto de línea, mira:\n";
print $entrada;

#length($string): Indica la cantidad de caracteres en una cadena
print "\nTamaño de la cadena: ";
print length($cadena);

#Index(cadena, subcadena): busca la subcadena en la cadena
my $nombre = 'Damian Matuz';
my $apellido = 'Matuz';
my $posic = index($nombre, $apellido);
print "\nEl apellido empieza en la posición $posic \n";

#Rindex(cadena,subcadena): busca la posición de el últomo match de la subcadena en la cadena
my $frase = "Las rosas son rojas como rojas son la heridas";
my $palabra = "rojas";
my $donde = rindex($frase,$palabra);
print "La última aparicion de la palabra $palabra empieza en la posición $donde\n";

#Substr(cadena, indice, tamaño): Obtiene una subcadena de una cadena
my $pos = 7;
my $tam = 5;
print substr($nombre,$pos,$tam)."\n";

#uc(string) convierte la cadena en mayúsculas
print uc($nombre)."\n";
#lc(strig) convierte la cadena en minúsculas
print lc($nombre)."\n";
#ucfirst(string) Convierte la primera letra de la cadena en mayúscula
print ucfirst("damian matuz") ."\n";
#lcfirst(string) Convierte la primera letra de la cadena en minúscula
print lcfirst("DAMIAN MATUZ")."\n";

#split Separa una cadena en subcadenas de acuerdoa un patrón
#split (/patron/cadena\limite)
#Regrasa un arreglo @
print split(/\t/,"test\tsepara\t\tstrigs\t");
print "\n";

#join Une una lista de cadenas (separadas por comas o con qw())
#usando el primer argumento como separador.
print join('+','Las','rosas','son','rojas') . "\n";

#reverse: recibe una lista y la devuelve en orden invertido
print reverse('Las','rosas','son','rojas') . "\n";

#sort Ordena una lista
print sort(4,5,8,2,3,7,5);
print "\n";

#sort {$a <=> $b} (@array); Ordena numericamente ascendente
#sort {$b <=> $a} (@array); Ordena numericamente descendente
#sort {$b cmp $a} @array; Ordena alfabeticamente descendente