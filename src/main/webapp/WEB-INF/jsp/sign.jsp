<jsp:include page="include/header.jsp"/>
<body style = "font-weight: bolder;background: url("https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.lastbestskiandpaddle.com%2F&psig=AOvVaw2o_YY0PXc5Lu-0BaNzpvgu&ust=1650751261044000&source=images&cd=vfe&ved=0CAwQjRxqFwoTCNiiruzVqPcCFQAAAAAdAAAAABAY")"
<h1 style="padding: 0px;">User Registration</h1>

<form id="registrationForm" onsubmit="return validate()">
    <label for="firstName">First Name: </label>
    <input type="text" name="firstName" id="firstName" placeholder="First Name"><br>
    <p id="error1">First Name required</p>

    <label for="lastName">Last Name: </label>
    <input type="text" name="lastName" id="lastName" placeholder="Last Name"><br>
    <p id="error2">Last Name required</p>

    <label for="email">Email: </label>
    <input type="text" name="email" id="email" placeholder="email@domain.com"><br>
    <p id="error3">Email required</p>

    <label for="password">Password:</label>
    <input type="password" name="password" id="password"><br>
    <p id="error4">Password required</p>
    <p id="error6">Password must be between 8 and 20 characters long.</p>
    <p id="error8">Password must contain letters and numbers</p>

    <label for="confirmPassword">Confirm Password:</label>
    <input type="password" name="confirmPassword" id="confirmPassword"><br>
    <p id="error5">Confirm Password required</p>
    <p id="error7">Passwords do not match</p>


    <button type="submit">Submit</button>
</form>