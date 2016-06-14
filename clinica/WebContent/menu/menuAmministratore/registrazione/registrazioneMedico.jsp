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
<link rel="icon" href="../../../images/favicon.ico">

<title>Inserimento di un medico</title>

<!-- Bootstrap core CSS -->
<link href="../../../css/bootstrap.css" rel="stylesheet">

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<link href="../../../css/ie10-viewport-bug-workaround.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="../../../css/offcanvas.css" rel="stylesheet">

<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
<script src="../../../js/ie-emulation-modes-warning.js"></script>
</head>
<body>
	<!-- Fixed navbar -->
	<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="<c:url value="../../../index.jsp"/>">Clinica
				MR</a>
		</div>
	</div>
	<!-- /.container --> </nav>
	<!-- /.navbar -->

	<!-- Begin page content -->
	<div class="container">
		<a href="../../../index.jsp">Clinica</a> | <a href="../menu.jsp">Menu
			amministrativo</a> | <strong>Inserimento medico</strong>
		<div class="jumbotron container">
			<div class="row">
				<div class="col-lg-4">
					<br> <br> <br> <br> <img alt="logo medici"
						src="../../../images/loghiMenu/logomedici.png">
				</div>
				<h3>Inserimento di un nuovo medico</h3>
				<div class="col-lg-6">
					<!-- Form inserimento -->
					<form action="controllerMedico" method="get">
						<label>Nome</label>
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Nome"
								name="nome"
								value="<%if (request.getParameter("nome") != null)
				out.print(request.getParameter("nome"));%>">
							<%
								if (request.getAttribute("nomeErrore") != null)
									out.print("<label class=\"control-label text-warning\">" + request.getAttribute("nomeErrore")
											+ "</label>");
								if (request.getAttribute("nomeErroreD") != null)
									out.print("<label class=\"control-label text-danger\">" + request.getAttribute("nomeErroreD")
											+ "</label>");
							%>
						</div>
						<label>Cognome</label>
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Cognome"
								name="cognome"
								value="<%if (request.getParameter("cognome") != null)
				out.print(request.getParameter("cognome"));%>">
							<%
								if (request.getAttribute("cognomeErrore") != null)
									out.print("<label class=\"control-label text-warning\">" + request.getAttribute("cognomeErrore")
											+ "</label>");
								if (request.getAttribute("cognomeErroreD") != null)
									out.print("<label class=\"control-label text-danger\">" + request.getAttribute("cognomeErroreD")
											+ "</label>");
							%>
						</div>
						<label>Specializzazione</label>
						<div class="form-group">
							<input type="text" class="form-control"
								placeholder="Specializzazione" name="specializzazione"
								value="<%if (request.getParameter("specializzazione") != null)
				out.print(request.getParameter("specializzazione"));%>">
							<%
								if (request.getAttribute("specializzazioneErrore") != null)
									out.print("<label class=\"control-label text-warning\">"
											+ request.getAttribute("specializzazioneErrore") + "</label>");
							%>
						</div>
						<button type="submit" name="submit" id="myButton"
							data-loading-text="Caricando..." class="btn btn-primary"
							autocomplete="off" role="button">Conferma</button>
						<a class="btn btn-success" id="myButton"
							data-loading-text="Caricando..." autocomplete="off"
							href="<c:url value="registrazioneMedico.jsp"/>" role="button">Cambiamento</a>
					</form>
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
						.write('<script src="../js/vendor/jquery.min.js"><\/script>')
	</script>
	<script src="../../../js/bootstrap.min.js"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="../../../js/ie10-viewport-bug-workaround.js"></script>
	<script src="../../../js/offcanvas.js"></script>
	<script src="../../../js/loadbutton.js"></script>
</body>
</html>