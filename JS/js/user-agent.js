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

function detectarNavegador()
{

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