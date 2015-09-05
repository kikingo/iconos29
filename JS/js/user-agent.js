var agente = navigator.userAgent.toLowerCase(),
	moviles = /iphone|ipod|ipad|android|blackberry|opera mini|iemobile|mobile/,
	plataforma,
	navegador

function detectarDispositivo()
{
	console.log(
		agente,
		agente.search(moviles)
	)

	var aDondeVoy

	if( agente.search(moviles) > -1 )
	{
		aDondeVoy = 'mobile.html'
	}
	else
	{
		aDondeVoy = 'desktop.html'
	}

	window.location.href = aDondeVoy
}

function detectarIE()
{
	var posicionIE = agente.indexOf('msie'),
		versionIE = agente.substring( posicionIE+5, posicionIE+8 )

	//alert(posicionIE+versionIE)

	if( agente.indexOf('rv:11') >  -1 )
	{
		navegador = 'IE 11'
	}
	else if( versionIE == '10.' )
	{
		navegador = 'IE 10'
	}
	else if( versionIE == '9.0' )
	{
		navegador = 'IE 9'
	}
	else if( versionIE == '8.0' )
	{
		navegador = 'IE 8'
	}
	else if( versionIE == '7.0' )
	{
		navegador = 'IE 7'
	}
	else if( versionIE == '6.0' )
	{
		navegador = 'IE 6'
	}
	else
	{
		navegador = 'IE menor al 6'
	}

	return navegador
}

function detectarNavegador()
{
	if( agente.indexOf('chrome') > -1 )
	{
		navegador = ( agente.search(moviles) > -1 )?'Chrome Mobile':'Chrome'
	}
	else if( agente.indexOf('firefox') > -1 )
	{
		navegador = ( agente.search(moviles) > -1 )?'Firefox Mobile':'Firefox'
	}
	else if( agente.indexOf('safari') > -1 )
	{
		navegador = ( agente.search(moviles) > -1 )?'Safari  Mobile':'Safari'
	}
	else if( agente.indexOf('opera') > -1 )
	{
		navegador = ( agente.search(moviles) > -1 )?'Opera  Mini':'Opera'
	}
	else if( agente.indexOf('trident') > -1 )
	{
		detectarIE()
	}
	else
	{
		navegador = 'Navegador Desconocido'
	}

	document.getElementById('navegador').innerHTML = navegador
}

function detectarPlataforma()
{
	if( agente.indexOf('win') > -1 )
	{
		plataforma = ( agente.search(moviles) > -1 )?'Windows Phone':'Windows NT'
	}
	else if( agente.indexOf('mac') > -1 )
	{
		plataforma = ( agente.search(moviles) > -1 )?'iOS':'Os X'
	}
	else if( agente.indexOf('linux') > -1 )
	{
		plataforma = ( agente.search(moviles) > -1 )?'Android':'Linux'
	}
	else
	{
		plataforma = 'Plataforma Desconocida'
	}

	document.getElementById('plataforma').innerHTML = plataforma
}

function detectarUsuario()
{
	detectarPlataforma()
	detectarNavegador()
	document.getElementById('user-agent').innerHTML = agente
}