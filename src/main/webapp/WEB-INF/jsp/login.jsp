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
    <link rel="stylesheet" href="../../styles/styles.css" type="text/css">


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