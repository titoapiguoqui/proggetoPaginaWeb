<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="it">
<head>
<meta charset="utf-8; ">
<meta http-equiv="Content-Type; X-UA-Compatible"
	content="text/html; charset=ISO-8859-1; IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../images/favicon.ico">

<title>Menu utente</title>

<!-- Bootstrap core CSS -->
<link href="../../css/bootstrap.css" rel="stylesheet">

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<link href="../../css/ie10-viewport-bug-workaround.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="../../css/offcanvas.css" rel="stylesheet">

<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
<script src="../../js/ie-emulation-modes-warning.js"></script>
</head>
<body>
	<!-- Fixed navbar -->
	<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="<c:url value="../../index.jsp"/>">Clinica
				MR</a>
		</div>
	</div>
	<!-- /.container --> </nav>
	<!-- /.navbar -->

	<!-- Begin page content -->
	<div class="container">
		<a href="../../index.jsp">Clinica</a> | <strong>Menu utente</strong>
		<div class="jumbotron container">
			<div class="row">
				<div class="col-lg-4 col-lg-offset-4">
					<h2>Menu utente</h2>
				</div>
				<div class="container">
					<div class="col-lg-2 col-xs-offset-2">
						<br> <img class="img-responsive" width="200" height="200"
							alt="logo menu" src="../../images/loghiMenu/logomenu.png">
					</div>
					<div class="col-lg-5">
						<h3>Consulta</h3>
						<ul>
							<li><a
								href="/clinica/menu/menuUtente/consulta/consultaRisultatiEsami.jsp">Risultati
									degli esami</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>

		<hr>

		<!-- Begin page footer -->
		<div class="container">
			<footer class="footer">
			<p class="text-muted">&copy; 2016 UR3, Inc.</p>
			<p class="text-muted">Creato per studente UR3</p>
			<p class="text-muted">Template per Bootstrap Templates</p>
			</footer>
			<!-- /.footer -->
		</div>
	</div>
	<!-- /.container -->

	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="../../js/vendor/jquery.min.js"><\/script>')
	</script>
	<script src="../../js/bootstrap.min.js"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="../../js/ie10-viewport-bug-workaround.js"></script>
	<script src="../../js/offcanvas.js"></script>
	<script src="../../js/loadbutton.js"></script>
</body>
</html>