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

<title>Procedimento: Come è fatta una amniocentesi</title>

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
						src="../../../images/diagnosi/a/amniocentesi/amniocentesi3.jpg">
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
			<h2>Procedimento: Come è fatta una amniocentesi</h2>
			<p class="text-justify"><big>Durante l'esecuzione l'amniocentesi che
				il paziente giace su un tavolo a faccia in su. Si ottiene un gel
				speciale nell'addome che facilita svolgono una ecografia per
				individuare il liquido amniotico. una sostanza antisettica viene
				applicato al sito di puntura. Si può mettere un po 'di sostanza
				anestetico nella zona della puntura anche se non sempre fatto perché
				l'ago è molto sottile e appena percettibile. la puntura è fatta
				nell'addome guidata da ultrasuoni e una piccola quantità di liquido
				amniotico viene rimosso con una siringa. La quantità di liquido
				dipende dal motivo per condurre il test è presa. Dopo l'estrazione
				del liquido l'ago viene rimosso e collocato una piccola zona
				spogliatoio puntura.</big></p>

			<h3>Dopo l'amniocentesi</h3>
			<p class="text-justify"><big>Dopo la prova, si raccomanda di riposare
				e di evitare lo sforzo fisico come il sollevamento. Di solito il
				giorno dopo e si può fare una vita normale. Si può avere un po 'di
				lievi disturbi addominali dopo l'amniocentesi. Se, dopo la prova,
				come crampi dolori addominali, perdita di liquido dalla vagina,
				sanguinamento vaginale, febbre o malessere che La riguardano si
				dovrebbe consultare un medico esperto in fretta. La piccola quantità
				di liquido estratto naturalmente rifornito rapidamente.</big></p>

			<hr>

			<p class="pull-left">
				<a class="btn btn-default btn-lg btn-block"
					href="<c:url value="amniocentesi2.jsp"/>" role="button"><span
					class="glyphicon glyphicon-menu-left"></span> Preparazione</a>
			</p>
			<p class="pull-right">
				<a class="btn btn-default btn-lg btn-block"
					href="<c:url value="amniocentesi4.jsp"/>" role="button">Complicazioni
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