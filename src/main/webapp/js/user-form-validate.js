function validate(form) {
  var regularMail = /^\w+([\._\-]?\w+)*@\w+([\.\-]?\w+)*(\.\w+)+$/;
  var regularPassword =  /^[a-zA-Z 0-9 \@\._\!\?\-]{8,}$/;
  var isMailValid = form.userEmail.value.match(regularMail);
  var isPswValid = form.userPassword.value.match(regularPassword);
  var valid = true;

  if (form.name.localeCompare('registerForm') == 0) {
    var regularName = /^[a-zA-Z]+([\s\-]?[A-Za-z]+)*$/;
    var regularSurname = /^[A-Za-z]+([\s\'\-]?[A-Za-z]+)*$/;
    var regularPhone = /^[0-9]{10}$/;
    var isNameValid = form.userName.value.match(regularName);
    var isSurnameValid = form.userSurname.value.match(regularSurname);
    //var isPhoneValid = form.userPhone.value.match(regularPhone);

    if (!isNameValid) {
      document.getElementById("nameInvalid").style.visibility = "visible";
      form.userName.focus(); 
      valid = false;
    } else {
      document.getElementById("nameInvalid").style.visibility = "hidden";
    }
    if (!isSurnameValid) {
      document.getElementById("surnameInvalid").style.visibility = "visible";
      form.userSurname.focus();
      valid = false;
    } else {
      document.getElementById("surnameInvalid").style.visibility = "hidden";
    }
  }

  if (!isMailValid) { 
    document.getElementById("emailInvalid").style.visibility = "visible";
    form.userEmail.focus();
    valid = false;
  } else {
    document.getElementById("emailInvalid").style.visibility = "hidden";
  }
  if (!isPswValid) {
    document.getElementById("pswInvalid").style.visibility = "visible";
    form.userPassword.focus();
    valid = false;
  } else {
    document.getElementById("pswInvalid").style.visibility = "hidden";
  }

  return valid;
}
