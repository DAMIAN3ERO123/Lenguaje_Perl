#!/bin/perl
#Autor: Damian Matuz

use warnings;
use strict;
use LWP::Simple;

#Obtener el código fuente de cinco sitios activos y buscar la palabra
# phishing en ellos 

#Saber cuantos sitios activos tiene el documento
my $num_pag = 1;
open (ACTIVOS,'<','sitios_activos.txt');
for (<ACTIVOS>){
	$num_pag ++;
}

#Obtener el número de 5 sitios aleatoriamente y asignarlos a una lista
my @numeros;
my $cont = 0;
for (1..5){
	@numeros[$cont] = int(rand($num_pag));
	$cont ++;
}



$cont = 1;
#Recorremos los sitios activos y cuando sea el mimo número que el
#random obtenemos el código de la pagina y buscamos la palabra 
#phishing
open (ACTIVOS,'<','sitios_activos.txt');
for my $sitio (<ACTIVOS>){

	for my $numero (@numeros)
	{
		print "$cont = $numero\n";
		if  ($cont == $numero)
		{
			my $page = get($sitio);
			if ($page =~ "phishing")
			{
				print "El sitio $sitio contiene la palabra phishing \n";
			}
		}
	}

	$cont ++;

}