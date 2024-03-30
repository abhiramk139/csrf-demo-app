<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<title>Login</title>
<!-- <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
	integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7"
	crossorigin="anonymous"> -->

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">


<!--
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
-->

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- <link rel="stylesheet" href="../../styles/styles.css" type="text/css"> -->

<style>
	/* Space out content a bit */
body {
	padding-top: 20px;
	padding-bottom: 20px;
}

/* Everything but the jumbotron gets side spacing for mobile first views */
.header, .marketing, .footer {
	padding-right: 15px;
	padding-left: 15px;
}

/* Custom page header */
.header {
	padding-bottom: 20px;
	border-bottom: 1px solid #e5e5e5;
}
/* Make the masthead heading the same height as the navigation */
.header h3 {
	margin-top: 0;
	margin-bottom: 0;
	line-height: 40px;
}

/* Customize container */
.container-narrow>hr {
	margin: 30px 0;
}

/* Supporting marketing content */
.marketing {
	margin: 40px 0;
}

.marketing p+h4 {
	margin-top: 28px;
}

* {
	padding: 0;
	margin: 0;
	box-sizing: border-box;
}

body {
	background-color: #f1f5f9;
	padding: 48px 60px;
}

.full {
	max-width: 1500px;
}

h1 {
	margin-left: 18%;
	font-size: 48px;
	font-family: "Roboto", sans-serif;
	color: #71717a;
	margin-bottom: 18px;
}

.main {
	text-align: center;
	max-width: 800px;
	margin: 0 auto;
	background-color: #f8fafc;
	border-radius: 0 0 30px 30px;
	box-shadow: 0 8px 10px -12px;
}

.img {
	mix-blend-mode: multiply;
	margin-bottom: 18px;
}

.center {
	font-family: "Roboto", sans-serif;
	color: #71717a;
	margin-bottom: 28px;
	font-size: 25px;
}

h2 {
	font-weight: 400;
	margin-bottom: 12px;
}

h4 {
	font-weight: 400;
}

.form input {
	box-shadow: 0 8px 10px -12px;
	border-radius: 5px;
	border: 1px solid #e5e5e5;
	max-width: 100%;
	/* padding: 12px 48px; */
	margin-bottom: 18px;
	width: 250px;
	padding-top: 10px;
	padding-left: 30px;
	padding-bottom: 10px;
}

.translate-user-icon {
	/* transform: translate3d(265px, 15px, 0px) !important; */
	/* You can replace this with margin left and margin top */
	margin-left: 17% !important;
}

.form input::placeholder {
	color: #9ca3af;
	font-family: "Roboto", sans-serif;
	font-weight: 300;
	font-size: 14px;
}

.user {
	
}

.password {
	
}

.cornerlink {
	color: #9ca3af;
	font-family: "Roboto", sans-serif;
	text-decoration: none;
	margin-left: 180px;
}

.btn {
	background-color: #d00000;
	padding: 6px 68px;
	margin-top: 18px;
	border-radius: 5px;
	border: none;
	color: #f8fafc;
	cursor: pointer;
	font-size: 10px;
}

.btn:hover {
	background-color: #c1121f;
	transition: 0.3s;
	transform: scale(105%);
	color: #f1f5f9;
}

.downtext {
	color: #9ca3af;
	font-family: "Roboto", sans-serif;
	display: inline-block;
	margin-top: 18px;
	margin-bottom: 24px;
	font-size: 18px;
}

.link {
	color: #d00000;
	font-family: "Roboto", sans-serif;
	font-size: 18px;
}

.fa-user {
	position: absolute;
	margin-left: 20px;
	transform: translateY(19px);
	pointer-events: none;
}

.fa-lock {
	position: absolute;
	margin-left: 20px;
	transform: translateY(19px);
	pointer-events: none;
}

@media screen and (max-device-width: 480px) and (orientation: portrait)
	{
	.translate-user-icon {
		/* transform: translate3d(-125px, 15px, 0px) !important; */
		/* You can replace this with margin left and margin top */
		margin-left: -28% !important;
	}
}
</style>

</head>
<body onload="document.f.username.focus();">
	<main class="full">

	<h1>Sign In</h1>

	<div class="main">
		<div class="img">
			<img src="../../images/project.jpg"
				style="max-width: 100%; max-height: 100%;">
		</div>
		<div class="center">
			<h2>Welcome back</h2>

			<h4>We love to see you again</h4>
		</div>


		<div class="container">
			<div class="content">
				<c:if test="${param.logout}">
					<p class="alert">You have been logged out</p>
				</c:if>
				<c:if test="${param.error}">
					<p class="alert alert-error">There was an error, please try
						again</p>
				</c:if>

				<h2>Login with Username and Password</h2>

				<c:url var="postUrl" value="/login" />
				<form name="form" class="form" action="${login}" method="POST">
					<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}" />
					<div class="container">
						<div class="row">
							<div class="col-md-1">
								<i class="fa fa-regular fa-user translate-user-icon"></i>
							</div>
							<div class="col-md-11">
								<input name="username" class="user" type="text"
									placeholder="Username or Email address">
							</div>
						</div>

						<div class="row">
							<div class="col-md-1">
								<i
									class="fa fa-regular fa-lock 
                    translate-user-icon"></i>
							</div>
							<div class="col-md-11">
								<input name="password" class="password" type="password"
									placeholder="Password">
							</div>
						</div>
					</div>

					<!-- <fieldset>
						<input type="text" name="username" value="" placeholder="Username" />
						<input type="password" name="password" placeholder="Password" />
					</fieldset> -->
					<input type="submit" id="login" value="Login"
						class="btn btn-primary" />
				</form>
			</div>
		</div>
		<a class="cornerlink" href="">Forgot password</a> <br>
		<button class="btn">
			<i class="fa fa-thin fa-arrow-right"></i>
		</button>

		<aside class="down">
			<p class="downtext">Don't have an account?</p>

			<a class="link" href="">Sign Up</a>
		</aside>
	</div>

	</main>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>


</body>
</html>