'use strict';

let storeEndPoint = "https://sheets.googleapis.com/v4/spreadsheets/?key=&ranges=A1:G100";

fetch(storeEndPoint)
	.then(response => response.json())
	.then(data => manageData(data));


function manageData(response) {
	let cont = [];

	cont += `<div>${response.spreadsheetId} - ${response.properties.title}</div>`;

	divTest.innerHTML = cont;
}
