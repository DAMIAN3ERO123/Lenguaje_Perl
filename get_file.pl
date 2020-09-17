#!/bin/perl
#Autor: Damian Matuz Cristino

use warnings;
use strict;
use LWP::Simple;

#Script para obtener el archivo de una url y actualizar este archivo 
#descargandolo cada 5mn aproximadamente
#Saber si estan activos los sitios


for (my $c = 1;$c < 2; $c--){ 
	getstore("<https://openphish.com/feed.txt>","paginas.txt") || die "No pude descargar el archivo";
	
	print "\nSe actualizo el documento\n";
	print scalar localtime();
	print "\n"; 

	open (PAGINAS,'<','paginas.txt');
	open (ACTIVOS,'+>>','sitios_activos.txt');

	for my $elemento (<PAGINAS>){
		chomp($elemento);
		#print $elemento."\n";
		my $pagina=`curl --silent -I $elemento`;
		$pagina=`echo $pagina | head -n 1`; 
		#print $pagina."\n";
		if ($pagina =~ /200/ ){
			print ACTIVOS "$elemento\n";
			#print "Se agrego una dirección:\n";
			#print $elemento."\n";
			
		}
		next;
	}



	close (PAGINAS);
	close (ACTIVOS);
	print "Ya realice un análsis\n";
	sleep (300);
	system ('rm paginas.txt');
	next;
}




