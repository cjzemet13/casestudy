function validate() {
    console.log("--validating!--");

    let firstName = $("#firstName").val();
    let lastName = $("#lastName").val();
    let email = $("#email").val();
    let password = $("#password").val();
    let confirmPassword = $("#confirmPassword").val();
    let validationFail = false;

    if (!firstName || !lastName || !email || !password || !confirmPassword) {
        console.log("All fields must be filled.");
        validationFail = true;
        document.getElementById("error1").style.visibility = "visible";
        document.getElementById("error2",).style.visibility = "visible";
        document.getElementById("error3").style.visibility = "visible";
        document.getElementById("error4").style.visibility = "visible";
    }

    if (password.length < 8 || password.length > 20) {
        console.log("Password must be between 8 and 20 characters long.");
        validationFail = true;
        document.getElementById("error6").style.visibility = "visible";
    }

    if (password != confirmPassword) {
        console.log("Passwords do not match.");
        validationFail = true;
        document.getElementById("error7").style.visibility = "visible";
    }

    let regex = /^(?=.*[a-zA-Z])(?=.*[0-9])/;
    if (!password.match(regex)) {
        console.log("Password must contain letters and numbers.");
        validationFail = true;
        document.getElementById("error8").style.visibility = "visible";
    }

    if (validationFail) {
        return false;
    }

    return true;

}


$(document).ready(function () {
    console.log("==ready!==");
});