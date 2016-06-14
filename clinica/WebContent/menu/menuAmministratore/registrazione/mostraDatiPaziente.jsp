<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

<title>Mostra dati di un paziente</title>

<!-- Bootstrap core CSS -->
<link href="../../../css/bootstrap.css" rel="stylesheet">

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<link href="../../../css/ie10-viewport-bug-workaround.css"
	rel="stylesheet">

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
			amministrativo</a> | <strong>Mostra dati paziente</strong>
		<div class="jumbotron container">
			<div class="row">
				<div class="col-lg-4">
					<br> <br> <br> <br> <img alt="logo pazienti"
						src="../../../images/loghiMenu/logopazienti.png">
				</div>
				<div class="col-lg-8">
					<!-- Form inserimento -->
					<form>
						<h3>Inserimento di un nuovo paziente</h3>
						<div class="form-group">
							<ul>
								<div>
									<p>
										Paziente con identificatore: <b>${paziente.id}</b>
									</p>
								</div>
								<p>Dati del paziente:</p>
								<ul>
									<div>
										<p>
											<b><u>Nome:</u></b> ${(paziente.nome).toUpperCase()}
										</p>
									</div>
									<div>
										<p>
											<b><u>Cognome:</u></b> ${(paziente.cognome).toUpperCase()}
										</p>
									</div>
									<div>
										<p>
											<b><u>Data di nascita:</u></b> ${paziente.dataNascita}
										</p>
									</div>
									<div>
										<p>
											<u>Gruppo Sanguineo:</u>
											${(paziente.gruppoSang).toUpperCase()}
										</p>
									</div>
									<div>
										<p>
											<u>Email:</u>< ${(paziente.email).toLowerCase()}
										</p>
									</div>
								</ul>
							</ul>
							<a class="btn btn-primary" id="myButton"
								data-loading-text="Caricando..." autocomplete="off"
								href="<c:url value="../menu.jsp"/>">Menu amministrativo</a> <a
								class="btn btn-success" id="myButton"
								data-loading-text="Caricando..." autocomplete="off"
								href="<c:url value="registrazionePaziente.jsp"/>" role="button">Inserire
								paziente</a>
						</div>
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

	<div class="modal fade" id="mostrarmodal" tabindex="-1" role="dialog"
		aria-labelledby="basicModal" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h3>Finestra informativa</h3>
				</div>
				<div class="modal-body">
					<h4>
						Il paziente <b>${(paziente.cognome).toUpperCase()}</b><br>
						con numero identificatore <b>${paziente.id}</b> <br>è stato <u>aggiunto</u>
						nella <u>base di dati</u>
					</h4>
				</div>
				<div class="modal-footer">
					<a href="#" data-dismiss="modal" class="btn btn-danger">Cerrar</a>
				</div>
			</div>
		</div>
	</div>

	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<!-- <script src="https://code.jquery.com/jquery-1.12.0.min.js"></script> -->
	<script>
		window.jQuery
				|| document
						.write('<script src="../js/vendor/jquery.min.js"><\/script>')
	</script>
	<script>
		$(document).ready(function() {
			$("#mostrarmodal").modal("show");
		});
	</script>
	<script src="../../../js/bootstrap.min.js"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="../../../js/ie10-viewport-bug-workaround.js"></script>
	<script src="../../../js/offcanvas.js"></script>
	<script src="../../../js/loadbutton.js"></script>
</body>
</html>
