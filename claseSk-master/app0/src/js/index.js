'use strict';

const nasaApiKey = "rygwqAMdjwlsTdMA4ksrAHiyOFtqX05nlXnxZfQv";
const nasaEndpoint = "https://api.nasa.gov/planetary/apod?api_key=";
const nasaUrl = nasaEndpoint + nasaApiKey;


window.addEventListener('click', (ev) => {

	if(ev.target.matches('#btnMh')) { // menu hamburguesa
		let mh = document.getElementById('divMenuham');
		return mh.style.width === '175px' ? mh.style.width = '0' : mh.style.width = '175px';
	} // Fri 25 Oct 2019 09:35:17 AM -05

	// elementos menu sidebar menu superior derecha.
	if(ev.target.matches('.menuAccion')) { // menu Inicio
		window.location.replace(ev.target.dataset.url);
	}

	if(ev.target.matches('#call')) { // menu hamburguesa
		alert('marcarle a '+ ev.target.dataset.user);
	}

	if(ev.target.matches('.url')) { // menu Inicio
		window.open(ev.target.dataset.url, '_blank' );
	}
}, {capture:true, passive:true});

//fetch.
	fetch(nasaUrl)
	.then(response => response.json())
	.then(data => representarDatos(data));

function representarDatos(data) {
	let dataContenedor = [];

		dataContenedor += `
			<div>${data.date} - ${data.explanation}</div>
			<div><img src="${data.url}" alt="" /></div>
		`;
	divData.innerHTML = dataContenedor;
}

function actMenuHam() {
	return modalMenuHam.style.width === '175px' ? modalMenuHam.style.width = '0' : modalMenuHam.style.width = '175px'; 
}


function captureNombre () {
	let nombre = prompt('Cual es tu nombre?');
	alertNombre(nombre);
}

function alertNombre(string) {
	string = stringToUppercase(string);
	alert('El nombre capturado es '+ string);
}

function stringToUppercase(string) {
	return string.toUpperCase();
} 


// JSON: Javascript Object Notation
let estado = [ 
	{
		"id": "155540",
		"usuario":"Jeronimo Morales Ardila",
		"status": 0,
		"twits":51,
		"likes":17,
		"foto": "/shell/img/pic/people1.png"
	},
	{
		"id": "155541",
		"usuario":"Daniela Ardila Lopez",
		"status": 1,
		"twits":154,
		"likes":39,
		"foto": "/shell/img/pic/people2.png"
	},
	{
		"id": "155542",
		"usuario":"Santiago Hernandez",
		"status": 1,
		"twits":890,
		"likes":197,
		"foto": "/shell/img/pic/people3.png"
	},
	{
		"id": "155543",
		"usuario":"Federico Gomez Diaz",
		"status": 1,
		"twits":75,
		"likes":215,
		"foto": "/shell/img/pic/people4.png"
	},
];


const dEstado = document.getElementById('dataEstadoApp');
let data = [];

estado.forEach((el, index) => {
	data += `
		<tr>
		<td class=""><img src="${el.foto}" alt="" class="avatar-list" /></td>
		<td class="">${el.usuario}</td>
		<td class="">${el.status}</td>
		<td class="">`;
	if(el.status == 1) {
		data += `
		<img src="/shell/img/ico/phone-call-green.svg" class="ico" alt="" id="call" data-user="${el.id}" /></td>
		`;
	} else if (el.status == 0) {
		data += `
		<img src="/shell/img/ico/phone-call-gray.svg" class="ico" alt="" /></td>
		`;
	}
	data += `
		</tr>
	`;	
});

dEstado.innerHTML = data;
