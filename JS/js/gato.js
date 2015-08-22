var d = document,
	w = window,
	gato = new Array(9),
	//celdas = d.getElementsByTagName('td')
	celdas = d.getElementsByClassName('gato')

//console.log(celdas,celdas.length,celdas[8])

function juegoGato(evento)
{
	var celda = evento.target,
		idCelda = celda.id
	
	alert(idCelda)
}

function alCargarDocumento()
{
	//for es un ciclo y tiene 3 partes:iniciaización, condición, incremento/decremento

	for( var n=0 ; n < celdas.length; n++ )
	{
		celdas[n].addEventListener( 'click', juegoGato )
	}
}

w.addEventListener( 'load', alCargarDocumento )