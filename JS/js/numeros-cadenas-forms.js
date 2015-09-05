//DECLARACIÓN DE OBJETOS Y VARIABLES
var btnCalificacion = document.querySelector("#calificacion");
var btnAdivina = document.querySelector("#adivina");
var btnEscribe = document.querySelector("#escribe");

var frmRFC = document.querySelector("#rfc");
var nombre = document.querySelector("#nombre");
var apaterno = document.querySelector("#apaterno");
var amaterno = document.querySelector("#amaterno");
var nacimiento = document.querySelector("#nacimiento");
var homoclave = document.querySelector("#homoclave");
var enviar = document.querySelector("#enviar");
var respuesta = document.querySelector("#respuesta");

//http://es.wikipedia.org/wiki/Expresi%C3%B3n_regular
var expRegNombre = /^[A-Za-zÑñÁáÉéÍíÓóÚúÜü\s]+$/;
var expRegFecha = /^(0?[1-9]|[12][0-9]|3[01])[\-](0?[1-9]|1[012])[\-](19|20)\d{2}$/;
var expRegClave = /^[\w][\w][\w]$/;

//DECLARACIÓN DE FUNCIONES
function obtenerCalificacion()
{
	//alert("calificación");
	var calificacion = prompt("¿Cuál es tu calificación?");

	if(isNaN(calificacion))
	{
		alert("No me engañes, esa no es una calificación");
	}
	else
	{
		var redondear = Math.round(calificacion);
		alert("Tu calificación es "+redondear);
	}
}

function adivinarNumero()
{
	//alert("adivina");
	var numero = prompt("¿Adivina un número entre 0 y 10?");
	var aleatorio, siAdivine, noAdivine,adivina;

	if(isNaN(numero))
	{
		alert("No me engañes, eso no es un número");
	}
	else
	{
		//aleatorio = Math.random();
		//aleatorio = Math.randMath.random()*10om()*10;
		aleatorio = Math.round(Math.random()*10);

		siAdivine = "¡Felicidades Adivinaste!, el número es "+aleatorio;
		noAdivine = "¡Suerte para la próxima!, el número es "+aleatorio+" y tú elegiste "+numero;

		adivina = (aleatorio==numero)?siAdivine:noAdivine;
		alert(adivina);
	}
}

function cadenaTexto()
{
	var cadena = prompt("Escribe algo");

	var longitud = cadena.length;
	var mayusculas = cadena.toUpperCase();
	var minusculas = cadena.toLowerCase();

	alert("Cadena original: '"+cadena+"'\nLongitud: "+longitud+"\n"+mayusculas+"\n"+minusculas);
}

function generarRFC(evento)
{
	/*
	RFC: 13 caracteres
		1)Primeros 2 caracteres del Apellido Paterno
		2)Primer caracter del Apellido Materno
		3)Primer caracter del Nombre
		4)Fecha de Nacimiento formato aammdd
		5)Homoclave 3 caracteres
	*/
	evento.preventDefault();
	//alert("He prevenido el evento submit del formularioEnviando formulario");

	var rfc = apaterno.value.substring(0,2);
	rfc += amaterno.value.charAt(0);
	rfc += nombre.value.charAt(0);
	rfc += nacimiento.value.substring(8);
	rfc += nacimiento.value.substring(3,5);
	rfc += nacimiento.value.substring(0,2);
	rfc += homoclave.value;
	
	respuesta.style.fontSize = "32px";
	respuesta.innerHTML = "Tu RFC es "+rfc.toUpperCase();
}

function validarDatos(evento)
{
	//alert("probando blur");
	//console.log(evento.target);
	var queCaja = evento.target,
		validado = true,
		color;

	if(queCaja.id == "nombre" || queCaja.id == "apaterno" || queCaja.id == "amaterno")
	{
		if(!expRegNombre.exec(queCaja.value))
		{
			alert("El campo "+queCaja.placeholder+" sólo acepta letras y espacios en blanco");
			validado = false;
			queCaja.focus();
		}
	}
	else if(queCaja.id == "nacimiento")
	{
		if(!expRegFecha.exec(queCaja.value))
		{
			alert("El campo fecha de nacimiento no es válido, el formato debe ser: "+queCaja.placeholder);
			validado = false;
			queCaja.focus();
		}	
	}
	else if(queCaja.id == "homoclave")
	{
		if(!expRegClave.exec(queCaja.value))
		{
			alert("La homoclave "+queCaja.placeholder);
			validado = false;
			queCaja.focus();
		}	
	}

	color = (validado)?"green":"red";
	queCaja.style.outline = "thin solid "+color;
}

function cargaDocumento()
{
	btnCalificacion.addEventListener("click",obtenerCalificacion);
	btnAdivina.addEventListener("click",adivinarNumero);
	btnEscribe.addEventListener("click",cadenaTexto);

	frmRFC.addEventListener("submit",generarRFC);

	nombre.addEventListener("blur",validarDatos);
	apaterno.addEventListener("blur",validarDatos);
	amaterno.addEventListener("blur",validarDatos);
	nacimiento.addEventListener("blur",validarDatos);
	homoclave.addEventListener("blur",validarDatos);
}

//ASIGNACIÓN DE EVENTOS
window.addEventListener("load",cargaDocumento);