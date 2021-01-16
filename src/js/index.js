'use strict';

let storeEndPoint = "https://sheets.googleapis.com/v4/spreadsheets/18KN5GpC7U6kI1S1qYV9sZFw2VDd4wqHDN7iTyT43p9Y/values/A2:K100?key=AIzaSyCAKdRs-6tVZSBhO-4hMmJJq8mcss0VEt4&majorDimension=DIMENSION_UNSPECIFIED";

//https://developers.google.com/sheets/api/samples/reading
// https://developers.google.com/sheets/api/reference/rest/v4/spreadsheets.values/get?apix=true&apix_params=%7B%22spreadsheetId%22%3A%2218KN5GpC7U6kI1S1qYV9sZFw2VDd4wqHDN7iTyT43p9Y%22%2C%22range%22%3A%22a1%3Ag100%22%7D


fetch(storeEndPoint)
	.then(response => response.json())
	.then(data => manageData(data));



function manageData(data) {
	const datos = data.values;
	let cont = [], cols = 4;
	[...datos].forEach((el, index) => {
		let idx = index + 1;

		cont += `
			${idx}	
			`;
		if ( idx  % cols === 0  ) {
			cont += `<br />`;
		}

	});

	divTest.innerHTML = cont;
}

