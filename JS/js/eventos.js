function Perro(n,r,e,s,a,f,c)
{
	//Definición de mi objeto
	var o = this,
		imagen

	//Definir atributos
	o.nombre = n
	o.raza = r
	o.edad = e
	//Asignación ( 1 igual = )
	//Comparación ( 2 iguales == compara que los valores sean iguales )
	//Idéntico ( 3 iguales === compara que los valores y su tipo de dato sean idénticos )
	//operador ternario
	//variable = (condicion)?verdadero:falso
	o.sexo = (s==true)?'Macho':'Hembra'
	o.adiestrado = a
	o.foto = f
	console.log(typeof s, typeof e, typeof n)

	//Definición de métodos
	o.aparecer = function ()
	{
		//alert('El objeto aparece')
		//var imagen = document.createElement('img')
		imagen = document.createElement('img')
		imagen.src = o.foto
		imagen.alt = o.nombre
		imagen.title = o.nombre

		document.body.appendChild(imagen)
	}

	o.ladrar = function ()
	{
		//alert('gua gua')
		var audio = document.createElement('audio')
		audio.src = 'activos/guau.mp3'
		//audio.controls = true
		//document.body.appendChild(audio)
		return audio.play()
	}

	o.comer = function (c)
	{
		o.comida = c
		var queCome = alert(o.nombre+' comió '+o.comida)
		return queCome
	}

	o.mover = function ()
	{
		imagen.style.position = 'relative'
		imagen.style.left = '10em'
		imagen.style.borderRadius = '100%'
	}
}

var kenai = new Perro('kEnAi','Firefox',3,true,true,'activos/kenai.jpg')

function eventoClick(evento)
{
	alert('Has presionado el botón en el evento:'+evento.type+'el nombre de id de tu botón es:'+evento.target.id)
	evento.target.style.backgroundColor = 'magenta'
	console.log(evento)

	btnMultiple.removeEventListener('click',eventoClick)
}

var btnSemantico = document.getElementById('manejador-semantico')
var btnMultiple = document.getElementById('manejador-multiple')

//manejador semántico
btnSemantico.onclick = eventoClick;

//manejador multiple
btnMultiple.addEventListener('click',eventoClick)