function validate() {
	var f = document.getElementById("payment");
	var hasNameError = validateName(f);
	var hasMonthError = validateMonth(f);
	var hasYearError = validateYear(f);
	var hasCodeError = validateCode(f);
	var hasNumberError = validateNumber(f);
	
	if (hasNameError || hasMonthError || hasYearError || hasCodeError || hasNumberError) {
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
		error.innerHTML = "Name cannot be empty";
	}
	
	return error.innerHTML !== "";
}

function validateNumber(form) {
	var error = document.getElementById("numberError");
	
	var number = form["number"].value;
	
	error.innerHTML = "";	
	
	
	if (number === null || number.length === 0) {
		error.innerHTML = "Card number cannot be empty";
	}
	else if (isNaN(number)) {
		error.innerHTML = "Card number must be a numeric value";
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
		error.innerHTML = "CVV Code cannot be empty";
	}
	else if (isNaN(code)) {
		error.innerHTML = "CVV Code must be a numeric value";
	}
	else if (code.length > 3 || code.length < 3) {
		error.innerHTML = "CVV Code should be of 3 digits";
	}
	
	return error.innerHTML !== "";
}

function validateMonth(form) {
	var error = document.getElementById("monthError");
	
	var month = form["month"].value;
	
	error.innerHTML = "";
	
	if (month === null || month.length === 0) {
		error.innerHTML = "Month cannot be empty";
	}
	else if (isNaN(month)) {
		error.innerHTML = "Month must be a numeric value";
	}
	else if (parseInt(month) <= 0 || parseInt(month) >= 13) {
		error.innerHTML = "Month number should be between 01 and 12";
	}
	
	
	return error.innerHTML !== "";
}

function validateYear(form) {
	var error = document.getElementById("yearError");
	
	var year = form["year"].value;
	
	error.innerHTML = "";
	
	if (year === null || year.length === 0) {
		error.innerHTML = "Year cannot be empty";
	}
	else if (isNaN(year)) {
		error.innerHTML = "Year must be a numeric value";
	}
	else if (parseInt(year) < 2020) {
		error.innerHTML = "Year number should be more than or equal to 2020";
	}
	
	
	return error.innerHTML !== "";
}