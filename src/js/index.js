 console.log('hoy es un lindo dia');

let m1 = document.getElementById('cat');
let m2 = document.getElementById('env');
let m3 = document.getElementById('pgo');
let m4 = document.getElementById('aus');
let m5 = document.getElementById('rcl');

m1.addEventListener('click', () => {
	alert('alerta,  hicieron click en catalogo');
});

m2.addEventListener('click', () => {
	alert('alerta,  hicieron click en envios');
});

m3.addEventListener('click', () => {
	alert('alerta,  hicieron click en pagos');
});

m4.addEventListener('click', () => {
	alert('alerta,  hicieron click en about us');
});

m5.addEventListener('click', () => {
	alert('alerta,  hicieron click en reclamos');
});
