'use strict';

// 'este archivo lee catalogo en google docs y dibuja pagina web'
let storeEndPoint = "https://sheets.googleapis.com/v4/spreadsheets/18KN5GpC7U6kI1S1qYV9sZFw2VDd4wqHDN7iTyT43p9Y/values/A2:K100?key=AIzaSyCAKdRs-6tVZSBhO-4hMmJJq8mcss0VEt4&majorDimension=DIMENSION_UNSPECIFIED";

//https://developers.google.com/sheets/api/samples/reading
// https://developers.google.com/sheets/api/reference/rest/v4/spreadsheets.values/get?apix=true&apix_params=%7B%22spreadsheetId%22%3A%2218KN5GpC7U6kI1S1qYV9sZFw2VDd4wqHDN7iTyT43p9Y%22%2C%22range%22%3A%22a1%3Ag100%22%7D
// flex css : https://dev.solteq.com/2016/12/02/building-a-responsive-product-grid-with-css-flexbox/
// https://css-tricks.com/designing-a-product-page-layout-with-flexbox/

fetch(storeEndPoint)
	.then(response => response.json())
	.then(data => manageData(data));


function manageData(data) {
	const datos = data.values;
	let cont = [], cols = 3;

	[...datos].forEach((el, index) => {
		let idx = index + 1;

		cont += `
			<div class="item">
				<section>
				<img src="${el[7]}" alt="${el[2]}" />
				<h2>${el[0]}</h2>
				<p>${el[2]}</p>
				<p>${el[5]} ${el[3]}</p>
				<aside>
					<ul>
						<li>${el[9]}</li>
						<li>${el[10]}</li>
					</ul>
					<button id="${el[0]}" class="btn">A&ntilde;adir a mi carrito!</button>
				</aside>
			</section>
			</div>	
		`;
	});
	gridCatalog.innerHTML = cont;
}

// accion boton comprar 
window.addEventListener('click', (ev) => {
	if (ev.target.matches('.btn')) {
		//alert(`Bravo, compraste ${ev.target.id} `);	
		modal.style.display = 'block';
	}
}, {capture:true, positive:true});
