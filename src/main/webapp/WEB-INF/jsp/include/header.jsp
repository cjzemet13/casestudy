<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>W3.CSS Template</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <style>
        body,h1,h2,h3,h4,h5,h6 {font-family: "Lato", sans-serif;}
        body, html {
            height: 100%;
            color: #777;
            line-height: 1.8;
        }

        /* Create a Parallax Effect */
        .bgimg-1, .bgimg-2, .bgimg-3 {
            background-attachment: fixed;
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
        }

        /* First image (Logo. Full height) */
        .bgimg-1 {
            background-image: url("../../../pub/images/26trending-apps01-videoSixteenByNineJumbo1600.jpg");
            min-height: 100%;
        }

        /* Second image (Portfolio) */
        .bgimg-2 {
            background-image: url("../../../pub/images/2021-02-13-ja-su-001-jpg.webp");
            min-height: 400px;
        }

        /* Third image (Contact) */
        .bgimg-3 {
            background-image: url("../../../pub/images/download.jpg");
            min-height: 400px;
        }

        .w3-wide {letter-spacing: 10px;}
        .w3-hover-opacity {cursor: pointer;}

        /* Turn off parallax scrolling for tablets and phones */
        @media only screen and (max-device-width: 1600px) {
            .bgimg-1, .bgimg-2, .bgimg-3 {
                background-attachment: scroll;
                min-height: 400px;
            }
        }
    </style>
</head>
<body>

<!-- Navbar (sit on top) -->
<div class="w3-top">
    <div class="w3-bar" id="myNavbar">
        <a class="w3-bar-item w3-button w3-hover-black w3-hide-medium w3-hide-large w3-right" href="javascript:void(0);" onclick="toggleFunction()" title="Toggle Navigation Menu">
            <i class="fa fa-bars"></i>
        </a>
        <a href="/index" class="w3-bar-item w3-button">HOME</a>
        <a href="#about" class="w3-bar-item w3-button w3-hide-small"><i class="fa fa-user"></i> About</a>
        <a href="${"/services"}" class="w3-bar-item w3-button w3-hide-small"><i class="fa fa-th"></i> Services</a>
        <a href="#contact" class="w3-bar-item w3-button w3-hide-small"><i class="fa fa-envelope"></i> Contact</a>
        <a href="#" class="w3-bar-item w3-button w3-hide-small w3-right w3-hover-red">
            <sec:authorize access="!isAuthenticated()">
            <a href="${"/login/login"}" class="w3-bar-item w3-button w3-hide-small"><i class="fa fa-user"></i> Login</a>
            </sec:authorize>
            <sec:authorize access="isAuthenticated()">
            <a href="${"/login/logout"}" class="w3-bar-item w3-button w3-hide-small"><i class="fa fa-user"></i> Logout</a>
            </sec:authorize>
            <sec:authorize access="!isAuthenticated()">
            <a href="${"/user/register"}" class="w3-bar-item w3-button w3-hide-small"><i class="fa fa-user"></i> Sign Up</a>
            </sec:authorize>
            <sec:authorize access="hasAuthority('ADMIN')">
            <a href="${"/user/search"}" class="w3-bar-item w3-button w3-hide-small"><i class="fa fa-search"></i> Search</a>
            </sec:authorize>
            <sec:authorize access="isAuthenticated()">
            <c:set var="username">
                <sec:authentication property="principal.username"/>
            </c:set>
            <a href=/profile/${username} class="w3-bar-item w3-button w3-hide-small"><i class="fa fa-user"></i> ${username}</a>
            </sec:authorize>
        </a>
    </div>

    <!-- Navbar on small screens -->
    <div id="navDemo" class="w3-bar-block w3-white w3-hide w3-hide-large w3-hide-medium">
        <a href="#about" class="w3-bar-item w3-button" onclick="toggleFunction()">ABOUT</a>
        <a href="#portfolio" class="w3-bar-item w3-button" onclick="toggleFunction()">Services</a>
        <a href="#contact" class="w3-bar-item w3-button" onclick="toggleFunction()">CONTACT</a>
        <a href="#" class="w3-bar-item w3-button">SEARCH</a>
    </div>
</div>
