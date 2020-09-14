#!/bin/perl
# Autor: Damian Matuz

use warnings;
use strict;

# Dibujando un rombo de caracteres inclompleto
if (!@ARGV)
{
	print "perl dibujo.pl (#)\n";
}
else
{
	#Recibo la longitud de la línea media del rombo
	my $num = $ARGV[0];
	#Cálculo el número de espacios que necesito para 
	#posicionar la mitad superio derecha del rombo
	my $espacios = $num / 2;
	#Creo y asigno mi variable que contendra el caracter a usar
	my $caracter = '@';
	#Variable que me ayudara a almacenar las lineas de caracteres
	#que formarán el rombo
	my $aco;
	#Variable contador
	my $c = 1;
	#Creo y asigno mi variable que contendra los espacios a usar
	my $esp='';
	#Ciclo para almacenar los espacios que necesito
	for (1..$espacios){
		#Concateno los espacios
		$esp .= ' ';
	}


	#Ciclo para ir formando la parte superior derecha
	do
	{	
		#Identifico el número de lineas que necesito antes 
		#de imprimir la línea media, para ello se que la cantidad
		#de lineas antes de la línea media es el número de espacios
		# -1
		if ($c < $espacios)
		{
			#Concateno los catacteres
			$aco .= $caracter;
			#Imprimo las lineas que van antes de la linea media
			# y sus respectivos espacios
			print $esp . $aco."\n";
		}
		elsif($c == $num)
		{
			#llegue a la línea media
			$aco .= $caracter;
			#la imprimo completa sin espacios
			print $aco."\n";
		}
		else
		{
			#Almaceno los caracteres restantes para llager a
			#completar la linea media
			$aco .= $caracter;
		}
		$c ++;
	}while($c != $num+1);

	#Reasigno variables para crear la parte de abajo de la linea media
	$c = 1;
	$esp='';
	#Variable ciclo para saber cuantos caracteres necesitan las
	#siguientes lineas debajo de la linea media
	my $Ciclo = $num; 
	#Ciclo que forma la parte baja del rombo
	do
	{
		$aco = "";
		#A cada iteracion concateno un espacio para cada línea
		$esp .= ' ';
		#cada nueva linea de caracteres tiene 2 menos
		$Ciclo = $Ciclo - 2;
		for (1..$Ciclo)
		{	
			#Concatena el número de caracteres de acuerdo al 
			#número del ciclo
			$aco .= $caracter;
		}
		#Imprimo la linea con su espacio correspondiente
		print $esp.$aco."\n";

		$c ++;
	}while ($c<=$espacios);
}

