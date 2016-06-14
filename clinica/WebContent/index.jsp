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

<title>Informazione generale</title>

<!-- Bootstrap core CSS -->
<link href="css/bootstrap.css" rel="stylesheet">

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<link href="css/ie10-viewport-bug-workaround.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/offcanvas.css" rel="stylesheet">
<link href="css/signin.css" rel="stylesheet">

<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
<script src="js/ie-emulation-modes-warning.js"></script>
</head>
<body>
	<!-- Fixed navbar -->
	<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<!-- <button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar" aria-expanded="false"
				aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button> -->
			<a class="navbar-brand" href="<c:url value="index.jsp"/>">Clinica
				MR</a>
		</div>
		<div id="navbar" class="collapse navbar-collapse">
			<ul class="nav navbar-nav">
				<li><a href="login.jsp">Login</a></li>
			</ul>
		</div>
		<!--/.nav-collapse -->
	</div>
	<!-- /.container --> </nav>
	<!-- /.navbar -->

	<!-- Begin page content -->
	<div class="container">

		<!-- row off canvas-->
		<div class="row row-offcanvas row-offcanvas-right">

			<!-- .col-xs-12.col-sm-9-->
			<div class="col-xs-12 col-sm-9">
				<hr>
				<p class="pull-right visible-xs">
					<button type="button" class="btn btn-primary btn-xs"
						data-toggle="offcanvas">Toggle nav</button>
				</p>

				<div class="jumbotron">
					<h1 class="text-center">
						<img src="images/loghi/logo1.png" width=178 heigth=180
							alt="Logo Salud">Clinica MR!
					</h1>
					<p class="text-justify">La clinica offre tutti i tipi di esami
						medici per i loro pazienti. Per ulteriori informazioni è possibile
						visualizzare i dettagli di ogni esamen. Inoltre offre la
						possibilità di visualizzare i propri esami medici</p>
				</div>
				<div class="row">
					<div class="col-xs-6 col-lg-5">
						<h2>Analisi delle feci</h2>
						<p class="text-justify">L'analisi delle feci-resti di cibo che
							non sono stati in grado di digerire o absorber- è un test
							semplice ed economico in grado di rilevare malattie dell'intero
							tratto gastrointestinale e ghiandole associati.</p>
						<p>
							<a class="btn btn-default" href="diagnosi/a/analisiFeci/analisiFeci1.jsp"
								role="button">Vedere i detalli &raquo;</a>
						</p>
					</div>
					<!--/.col-xs-6.col-lg-5-->
					<div class="col-xs-6 col-lg-5">
						<h2>Colonoscopia</h2>
						<p class="text-justify">Note tutto quello che dovete sapere se
							sono practicarte una colonscopia, un esame medico infastidito ma
							sicuramente usato per diagnosticare e curare le malattie del
							colon (intestino crasso).</p>
						<p>
							<a class="btn btn-default" href="diagnosi/c/colonoscopia/colonoscopia1.jsp"
								role="button">Vedere i detalli &raquo;</a>
						</p>
					</div>
					<!--/.col-xs-6.col-lg-5-->
					<div class="col-xs-6 col-lg-5">
						<h2>EEG</h2>
						<p class="text-justify">L'elettroencefalogramma (EEG) è un
							test non invasivo che permette lo studio dell'attività elettrica
							cerebrale. Esso consente la diagnosi di malattie come l'epilessia
							in modo semplice e indolore.</p>
						<p>
							<a class="btn btn-default"
								href="diagnosi/e/elettroencefalogramma/elettroencefalogramma1.jsp" role="button">Vedere
								i detalli &raquo;</a>
						</p>
					</div>
					<!--/.col-xs-6.col-lg-5-->
					<div class="col-xs-6 col-lg-5">
						<h2>Esami di sangue</h2>
						<p class="text-justify">Quando riceviamo i risultati di una
							analisi molti di noi cinesi di dati audio. Spieghiamo cosa ogni
							mezzo, quali sono i livelli normali, e che indicano che qualcosa
							non va nel nostro corpo.</p>
						<p>
							<a class="btn btn-default" href="diagnosi/e/esamiSangue/esamiSangue1.jsp"
								role="button">Vedere i detalli &raquo;</a>
						</p>
					</div>
					<!--/.col-xs-6.col-lg-5-->
					<div class="col-xs-6 col-lg-5">
						<h2>RMN</h2>
						<p class="text-justify">La risonanza magnetica consente
							immagini dettagliate dall'interno del corpo da ogni punto di
							vista, fornendo informazioni sulle condizioni che non possono
							essere visti con TAC o ecografia.</p>
						<p>
							<a class="btn btn-default" href="diagnosi/r/RMN/RMN1.jsp"
								role="button">Vedere i detalli &raquo;</a>
						</p>
						<hr>
						<p>
							<a class="btn btn-success"
								href="<c:url value="/diagnosi/esami.jsp"/>" role="button">Vedere
								di più &raquo;</a>
						</p>
					</div>
					<!--/.col-xs-6.col-lg-4-->
					<div class="col-xs-6 col-lg-5">
						<h2>TAC</h2>
						<p class="text-justify">Tomografia computerizzata o TAC
							possono ottenere immagini all'interno del corpo, e quindi
							rilevare un tumore da una patologia ossea. Ecco quello che c'è da
							sapere su questo test.</p>
						<p>
							<a class="btn btn-default" href="diagnosi/t/TAC/TAC.jsp"
								role="button">Vedere i detalli &raquo;</a>
						</p>
					</div>
					<!--/.col-xs-6.col-lg-4-->
				</div>
				<!--/row-->
			</div>
			<!--/.col-xs-12.col-sm-9-->

			<hr>
			<hr>

			<div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="sidebar">
				<div class="list-group">
					<a href="diagnosi/a/analisiUrine/analisiUrine.jsp"
						class="list-group-item active">Analisi delle urine</a> <a
						href="diagnosi/b/broncoscopia/broncoscopia.jsp" class="list-group-item">Broncoscopia</a>
					<a href="diagnosi/e/elettrocardiogramma/elettrocardiogramma.jsp"
						class="list-group-item">Elettrocardiogramma</a> <a
						href="diagnosi/g/gastroscopia/gastroscopia.jsp" class="list-group-item">Gastroscopia</a>
					<a href="diagnosi/l/lavandaGastrica/lavandaGastrica.jsp" class="list-group-item">Lavanda
						gastrica</a> <a href="diagnosi/m/mammografia.jsp"
						class="list-group-item">Mammografia</a> <a
						href="diagnosi/p/prickTest/prickTest.jsp" class="list-group-item">Test
						cutanei allergici</a> <a href="diagnosi/t/tricogrammaCapillare.jsp"
						class="list-group-item">Tricogramma capillare</a> <a
						href="diagnosi/u/urografia/urografia.jsp" class="list-group-item">Urografia</a>

					<p>
						<a class="btn btn-success"
							href="<c:url value="/diagnosi/esami.jsp"/>" role="button">Vedere
							di più &raquo;</a>
					</p>

					<!-- form sing in -->
					<form class="form-signin" action="controllerUtente" method="post">
						<h2 class="form-signin-heading">Accede per favore</h2>
						
						<label for="nomeUtente" class="sr-only">Nome utente</label> 
						<input type="text" name="nomeUtente" id="nomeUtente" class="form-control" placeholder="Nome utente" required>
						
						<label for="pass" class="sr-only">Password</label> 
						<input type="password" name="pass" id="pass" class="form-control" placeholder="Password" required>
						
						<button class="btn btn-lg btn-primary btn-block" type="submit">Accede</button>
					</form>
					<!--/form-->

				</div>
				<!--/list-group-->

			</div>
			<!--/.sidebar-offcanvas-->

		</div>
		<!--/row offcanvas-->

		<hr>

		<!-- Begin page footer -->
		<footer class="footer">
		<div class="container">
			<p class="text-muted">&copy; 2016 UR3, Inc.</p>
			<p class="text-muted">Creato per studente UR3</p>
			<p class="text-muted">Template per Bootstrap Templates</p>
		</div>
		<!-- /.container --> </footer>
		<!-- /.footer -->
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
						.write('<script src="js/vendor/jquery.min.js"><\/script>')
	</script>
	<script src="js/bootstrap.min.js"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="js/ie10-viewport-bug-workaround.js"></script>
	<script src="js/offcanvas.js"></script>
</body>
</html>