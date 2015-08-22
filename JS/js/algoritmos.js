/*
Orden del código en Programación:
	1.Importacioneso Requerimientos de otros archivos
	2.Definición de Constantes
	3.Definición de variables y objetos
	4.Definición de funciones
	5.Asignación de eventos y estados iniciales
*/

var d = document,
	w = window,
	numero = d.getElementById('numero'),
	saluda = d.getElementById('saluda')

function parImpar()
{
	var numero = prompt( 'Ingresa un número' ),
		modulo = numero%2

	if( !isNaN(numero) )
	{
		if(modulo == 0)
		{
			alert('el número '+numero+' es par')
		}
		else
		{
			alert('el número '+numero+' es impar')	
		}
	}
	else
	{
		alert('no me jodas, eso no es un número ¬_¬')
	}
}

function saludar()
{
	var fecha = new Date(),
		hora = fecha.getHours()

	//if(hora < 6)
	if( hora <= 5 )
	{
		alert('No me jodas')
	}
	else if( hora >= 6 && hora <= 11 )
	{
		alert('Buenos días')
	}
	else if( hora >= 12 && hora <= 18 )
	{
		alert('Buenas tardes')
	}
	else
	{
		alert('Buenas noches')
	}
}

function alCargarDocumento()
{
	numero.addEventListener('click', parImpar)
	saluda.addEventListener('click', saludar)
}

w.onload = alCargarDocumento