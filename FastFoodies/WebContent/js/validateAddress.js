function validate() {
	var f = document.getElementById("shipping");
	var hasNameError = validateName(f);
	var hasAddressError = validateAddress(f);
	var hasCityError = validateCity(f);
	var hasStateError = validateState(f);
	var hasZipError = validateZip(f);
	
	if (hasNameError && hasAddressError && hasStateError && hasZipError && hasCityError) {
		return true;
	}
	else {
		return false;
	}
}

function validateName(form) {
	var error = document.getElementById("nameError");
	
	var name = form["name"].value;
	
	error.innerHTML = "";
	
	if (name === null || name.length === 0) {
		error.innerHTML = "Name cannot be empty";
	}
	
	return error.innerHTML === "";
}

function validateAddress(form) {
	var error = document.getElementById("addressError");
	
	var address = form["address"].value;
	
	error.innerHTML = "";
	
	if (address === null || address.length === 0) {
		error.innerHTML = "Address cannot be empty";
	}	
	
	return error.innerHTML === "";
}

function validateCity(form) {
	var error = document.getElementById("cityError");
	
	var city = form["city"].value;
	
	error.innerHTML = "";
	
	if (city === null || city.length === 0) {
		error.innerHTML = "City cannot be empty";
	}
	
	return error.innerHTML === "";
}

function validateState(form) {
	var error = document.getElementById("stateError");
	
	var state = form["state"].value;
	
	error.innerHTML = "";
	
	if (state === null || state.length === 0) {
		error.innerHTML = "State cannot be empty";
	}	
	
	return error.innerHTML === "";
}

function validateZip(form) {
	var error = document.getElementById("zipError");
	
	var zip = form["zip"].value;
	
	error.innerHTML = "";
	
	if (zip.length === null || zip.length === 0) {
		error.innerHTML = "Zip cannot be empty";
	}
	else if (isNaN(zip)) {
		error.innerHTML = "Zip code must be a numeric value";
	}
	else if (zip.length !== 5) {
		error.innerHTML = "Zip Code should be of 5 digits";
	}
	
	return error.innerHTML === "";
}