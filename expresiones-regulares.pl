#!/bin/perl
#Autor:Damian Matuz

use warnings;
use strict;

#Uso de expresiones regulares

# '=~' usado para buscar patrones, delimitador por defecto '/'
#devuelve 1 si lo encuentra o 0 si no encuentra la palabra
my $palabra = "Donde esta Wall";
print $palabra =~ /Wall/;
print "\n";

# Para cambiar el delimitador se utiliza la letra 'm' [match]
#Si se utilizan las comillas simple o $ como delimitador
# se pierde la interpolación
print $palabra =~ m#Wall#;
print "\n";

#Sustición 's' busca y reemplaza
$palabra =~ s/Wall/Paco/;
print $palabra."\n";

#'tr' reemplaza los caracteres que indiquen por otros
$palabra =~ tr/" "/+/;
print $palabra."\n";
$palabra =~ tr/a-z/A-Z/;
print $palabra."\n";