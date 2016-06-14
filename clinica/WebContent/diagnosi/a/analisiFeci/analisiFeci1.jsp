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
<link rel="icon" href="../../../images/favicon.ico">

<title>Analisi delle feci</title>

<!-- Bootstrap core CSS -->
<link href="../../../css/bootstrap.css" rel="stylesheet">

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<link href="../../../css/ie10-viewport-bug-workaround.css"
	rel="stylesheet">

<!-- Custom styles for this template -->

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

	<div class="container">
		<div class="page-header">
			<br> <a href="../../../index.jsp">Clinica</a> | <a
				href="../../esami.jsp">Esami</a> | <strong>Analisi delle
				Feci</strong>
			<div class="jumbotron">
				<h1>Analisi delle Feci</h1>
				<p>L'analisi delle feci-resti di cibo che non sono stati in
					grado di digerire o absorber- è un test semplice ed economico in
					grado di rilevare malattie del tratto intestinale e ghiandole
					associate.</p>
			</div>
		</div>

		<div class="container">
			<div class="row col-lg-offset-2">
				<div class="span10">
					<img class="pull-left text-center" alt="image amniocentesi"
						src="../../../images/diagnosi/a/analisiFeci/analisiFeci1.jpg">
				</div>
				<div class="span2">
					<br> <br>
					<div class="btn-group-vertical text-left col-lg-offset-1">
						<p>
							<a class="btn btn-info btn-lg btn-block"
								href="<c:url value="analisiFeci1.jsp"/>" role="button"><span
								class="glyphicon glyphicon-question-sign"> Definizione</span></a>
						</p>
						<p>
							<a class="btn btn-info btn-lg btn-block"
								href="<c:url value="analisiFeci2.jsp"/>" role="button"><span
								class="glyphicon glyphicon-exclamation-sign"> Quando si
									deve fa</span></a>
						</p>
						<p>
							<a class="btn btn-info btn-lg btn-block"
								href="<c:url value="analisiFeci3.jsp"/>" role="button"><span
								class="glyphicon glyphicon-user"> Prepazarione</span></a>
						</p>
						<p>
							<a class="btn btn-info btn-lg btn-block"
								href="<c:url value="analisiFeci4.jsp"/>" role="button"><span
								class="glyphicon glyphicon-option-horizontal">
									Procedimento</span></a>
						</p>
						<p>
							<a class="btn btn-info btn-lg btn-block"
								href="<c:url value="analisiFeci5.jsp"/>" role="button"><span
								class="glyphicon glyphicon-list"> Risultati</span></a>
						</p>
					</div>
				</div>
			</div>
		</div>

		<hr>

		<div class="container">
			<h2>Analisi delle feci</h2>
			<p class="text-justify">
				<big><b>L'analisi delle feci</b> è un test diagnostico
					utilizzato in medicina per studiare dispositivo disturbi
					principalmente <b>digestivi</b>. È raccogliere una piccola quantità
					di feci per laboratori analisi successiva. Gli studi più comuni
					sono eseguite sulle feci sono:</big>
			</p>
			<ul>
				<li class="text-justify"><big><b>Studio fisico: </b>valuta
						la consistenza, densità, colore e odore delle feci. </big></li>
				<li class="text-justify"><big><b>Studio biochimico: </b>i
						componenti che formano le feci sono studiati. Tenete a mente che
						nelle feci normali sono il 70% di acqua e il 30% sono altri
						componenti come grassi, proteine, batteri e fibre, che non può
						essere digerito.</big></li>
				<li class="text-justify"><big><b>Prova Van Kamer: </b>è
						un test specifico per misurare la quantità di grasso nelle feci in
						modo più accurato di un studio biochimico. Hanno bisogno di
						raccogliere diversi campioni di feci.</big></li>
				<li class="text-justify"><big><b>Rilevamento di
							enzimi: </b>soprattutto la presenza di enzimi pancreatici nelle feci
						è studiato, che sono essenziali per la digestione.</big></li>
				<li class="text-justify"><big><b>Sangue fecale
							occulta: </b>grado di rilevare la presenza di piccole quantità di
						sangue mescolato con le feci. Attualmente si consiglia di quelli
						oltre i 50 anni, questo test è fatto ogni anno per aiutare a
						diagnosticare il cancro al colon (anche se per la diagnosi precoce
						di questo tipo di tumore il test più efficace è colonscopia), e
						può anche essere utilizzato per rilevare i tumori sconosciuti . In
						alcuni paesi si vendono strisce di carta nelle farmacie.</big></li>
				<li class="text-justify"><big><b>Esame in fresco: </b>è
						per diluire le feci e direttamente osservare al microscopio. In
						grado di rilevare i parassiti e le loro uova, e altri oggetti di
						grandi dimensioni.</big></li>
				<li class="text-justify"><big><b>Coprocultivo: </b>così
						come può essere isolato microrganismi nel sangue attraverso una
						cultura sangue o urina un'urinocoltura, si sgabello Una cultura
						feci può essere fatto per isolare patogeni.</big></li>
			</ul>

			<hr>

			<p class="pull-right">
				<a class="btn btn-default btn-lg btn-block"
					href="<c:url value="analisiFeci2.jsp"/>" role="button">Quando
					si deve fa <span class="glyphicon glyphicon-menu-right"></span>
				</a>
			</p>
		</div>

		<hr>

		<!-- Begin page footer -->
		<div class="container">
			<footer class="footer">
			<p class="text-muted">&copy; 2016 UR3, Inc.</p>
			<p class="text-muted">Powered per studente UR3</p>
			<p class="text-muted">Template per Bootstrap Templates</p>
			</footer>
			<!-- /.footer -->
		</div>
		<!-- /.container -->
	</div>
	<!-- /container -->
</body>
</html>