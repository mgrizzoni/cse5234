function validate() {
	var f = document.getElementById("payment");
	var hasNameError = validateName(f);
	var hasDateError = validateDate(f);
	var hasCodeError = validateCode(f);
	var hasNumberError = validateNumber(f);
	
	if (hasNameError || hasDateError || hasCodeError || hasNumberError) {
		return false;
	}
	else {
		return true;
	}
}

function validateName(form) {
	var error = document.getElementById("nameError");
	
	var name = form["name"].value;
	
	error.innerHTML = "";
	
	if (name === null || name.length === 0) {
		error.innerHTML = "Invalid name";
	}
	
	return error.innerHTML !== "";
}

function validateNumber(form) {
	var error = document.getElementById("numberError");
	
	var number = form["number"].value;
	
	error.innerHTML = "";
	
	if (number === null || number.length === 0) {
		error.innerHTML = "Invalid number";
	}
	else if (number.length !== 16) {
		error.innerHTML = "Card number should be of 16 digits";
	}
	
	
	return error.innerHTML !== "";
}

function validateCode(form) {
	var error = document.getElementById("codeError");
	
	var code = form["code"].value;
	
	error.innerHTML = "";
	
	if (code === null || code.length === 0) {
		error.innerHTML = "Invalid CVV Code";
	}
	else if (code.length > 3 || code.length < 3) {
		error.innerHTML = "CVV Code should be of 3 digits";
	}
	
	return error.innerHTML !== "";
}

function validateDate(form) {
	var error = document.getElementById("dateError");
	
	var date = form["date"].value;
	
	error.innerHTML = "";
	
	if (date === null || date.length === 0) {
		error.innerHTML = "Invalid Date";
	}
	else if (date.length !== 5) {
		error.innerHTML = "Invalid Date format";
	}
	
	
	return error.innerHTML !== "";
}