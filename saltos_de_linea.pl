#!/bin/perl

use strict;
use warnings;


#Definir cadenas con multiples saltos de línea

# variable = << ETIQUETA;
# 	...
# ETIQUETA

my $cadena = <<FINAL;
hola,
mundo,
!,
FINAL

print $cadena;