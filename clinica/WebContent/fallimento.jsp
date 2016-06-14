<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="it">
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type; X-UA-Compatible"
	content="text/html; charset=ISO-8859-1; IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="images/favicon.ico">

<title>Login</title>

<!-- Bootstrap core CSS -->
<link href="css/bootstrap.css" rel="stylesheet">

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<link href="css/ie10-viewport-bug-workaround.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="signin.css" rel="stylesheet">
<link href="css/offcanvas.css" rel="stylesheet">

<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
<script src="js/ie-emulation-modes-warning.js"></script>
</head>

<body>
	<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="<c:url value="index.jsp"/>">Clinica
				MR</a>
		</div>
		<!--/.nav-collapse -->
	</div>
	<!-- /.container --> </nav>
	<!-- /.navbar -->

	<div class="container">
		<form class="form-signin col-xs-4 col-xs-offset-4 has-error has-feedback" action="controllerUtente" method="post">
			<h2 class="form-signin-heading">Accede per favore</h2>
			
			<div class="form-group has-error has-feedback">
				<input type="text" class="form-control" name="nomeUtente" id="nomeUtente" aria-describedby="inputError2Status" placeholder="Nome utente" required autofocus>
				<span class="glyphicon glyphicon-remove form-control-feedback" aria-hidden="true"></span> 
				<span id="inputError2Status" class="sr-only">(error)</span>
			</div>
			
			<div class="form-group has-error has-feedback">
				<input type="password" class="form-control" name="pass" id="pass" aria-describedby="inputError2Status" placeholder="Password" required>
				<span class="glyphicon glyphicon-remove form-control-feedback" aria-hidden="true"></span> 
				<span id="inputError2Status" class="sr-only">(error)</span>
			</div>
			
			<span id="helpBlock2" class="help-block"> 
				<% if (request.getAttribute("errore") != null)
 						out.print("<label class=\"control-label text-danger\">" + request.getAttribute("errore") + "</label>");
 				%>
 			</span>
 			
			<button class="btn btn-lg btn-primary btn-block" type="submit">Accede</button>
		</form>
	</div>
	<!-- /container -->

	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="js/ie10-viewport-bug-workaround.js"></script>
	<script src="js/offcanvas.js"></script>
</body>
</html>
