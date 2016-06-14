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

<title>Complicazioni o effetti collaterali dell'amniocentesi</title>

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
				href="../../esami.jsp">Esami</a> | <strong>Amniocentesi</strong>
			<div class="jumbotron">
				<h1>Amniocentesi</h1>
				<p>Scopri quando e come è fatto e come prepararsi per questo
					test diagnostico in cui una piccola quantità di liquido amniotico
					viene estratto al fine di studiare possibili disturbi fetali.</p>
			</div>
		</div>
		
		<div class="container">
			<div class="row col-lg-offset-2">
				<div class="span10">
					<img class="pull-left text-center" alt="image amniocentesi"
						src="../../../images/diagnosi/a/amniocentesi/amniocentesi4.jpg">
				</div>
				<div class="span2">
					<br> <br>
					<div class="btn-group-vertical text-left col-lg-offset-1">
						<p>
							<a class="btn btn-info btn-lg btn-block"
								href="<c:url value="amniocentesi1.jsp"/>" role="button"><span
								class="glyphicon glyphicon-question-sign"> Definizione</span></a>
						</p>
						<p>
							<a class="btn btn-info btn-lg btn-block"
								href="<c:url value="amniocentesi2.jsp"/>" role="button"><span
								class="glyphicon glyphicon-user"> Prepazarione</span></a>
						</p>
						<p>
							<a class="btn btn-info btn-lg btn-block"
								href="<c:url value="amniocentesi3.jsp"/>" role="button"><span
								class="glyphicon glyphicon-option-horizontal">
									Procedimento</span></a>
						</p>
						<p>
							<a class="btn btn-info btn-lg btn-block"
								href="<c:url value="amniocentesi4.jsp"/>" role="button"><span
								class="glyphicon glyphicon-exclamation-sign">
									Complicazioni</span></a>
						</p>
						<p>
							<a class="btn btn-info btn-lg btn-block"
								href="<c:url value="amniocentesi5.jsp"/>" role="button"><span
								class="glyphicon glyphicon-list"> Risultati</span></a>
						</p>
					</div>
				</div>
			</div>
		</div>

		<hr>

		<div class="container">
			<h2>Complicazioni o effetti collaterali dell'amniocentesi</h2>
			<p class="text-justify"><big>L'amniocentesi è una tecnica molto
				sicuro. Si può notare un leggero dolore nel sito di puntura e alcuni
				dolori addominali quando l'ago passa attraverso l'utero.</big></p>
			<p class="text-justify"><big>La principale complicanza della
				amniocentesi è il rischio di <b>aborto</b>. Se fatto durante il secondo
				trimestre, si stima che un aborto si verifica in 1 ogni 300-500
				amniocentesi.</big></p>
			<p class="text-justify"><big>Molto raramente, se il feto si muove
				durante il test si può sufir una foratura mentre si sta entrando
				l'ago. Gravi forature fetali sono estremamente rari.</big></p>
			<p class="text-justify"><big>Inoltre non è raro per le perdite di
				liquido amniotico avviene attraverso la vagina, che di solito si
				risolve spontaneamente.</big></p>
			<p class="text-justify"><big>Se la madre è Rh negativo e il feto è Rh
				positivi problemi potrebbero essere generati dalla <b>mancanza di
				compatibilità Rh</b> prevenibili con la somministrazione di un vaccino.</big></p>
			<p class="text-justify"><big>Il rischio di infezione uterina è molto
				basso.</big></p>
			<p class="text-justify"><big>E 'possibile la trasmissione
				dell'infezione dalla madre al feto come l'<b>HIV</b> o l'<b>epatite</b> C.
				Pertanto, in caso di amniocentesi madre infezioni croniche è
				controindicato.</big></p>

			<hr>

			<p class="pull-left">
				<a class="btn btn-default btn-lg btn-block"
					href="<c:url value="amniocentesi3.jsp"/>" role="button"><span
					class="glyphicon glyphicon-menu-left"></span> Procedimento</a>
			</p>
			<p class="pull-right">
				<a class="btn btn-default btn-lg btn-block"
					href="<c:url value="amniocentesi5.jsp"/>" role="button">Risultati
					<span class="glyphicon glyphicon-menu-right"></span>
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