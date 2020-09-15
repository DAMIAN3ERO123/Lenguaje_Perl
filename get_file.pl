#!/bin/perl
#Autor: Damian Matuz Cristino

use warnings;
use strict;
use LWP::Simple;

#Script para obtener el archivo de una url y actualizar este archivo 
#descargandolo cada 5mn aproximadamente

for (my $c = 1;$c < 2; $c--){ 
	getstore("<https://pagina.com/archivo.txt>","paginas.txt") || die "No pude descargar el archivo";
	sleep (300);
	print "\nSe actualizo el documento\n";
	print scalar localtime(); 
}




