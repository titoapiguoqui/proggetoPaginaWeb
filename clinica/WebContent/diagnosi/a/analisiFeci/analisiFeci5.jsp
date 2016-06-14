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

<title>Risultati analisi delle feci</title>

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
						src="../../../images/diagnosi/a/analisiFeci/analisiFeci5.jpg">
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
			<h2>Risultati delle analisi delle feci</h2>
			<p class="text-justify">
				<big>I <b>risultati delle analisi delle feci</b> possono
					comprendere i seguenti parametri:
				</big>
			</p>
			<ul>
				<li class="text-justify"><big><b>Composizione: </b>anomalie
						sono rilevate nella percentuale dei componenti del feci. Le
						percentuali non sono precisi e facilmente variano da campione a
						campione.</big></li>
				<ul>
					<li class="text-justify"><big>Proteine: 2-3%. La
							maggiore presenza di proteine nelle feci può essere correlata
							alla dieta o cattiva digestione delle proteine. È legato alla <b>costipazione</b>.
					</big></li>
					<li class="text-justify"><big>Grassi: 10-20%. Quando la
							percentuale di grasso supera il 20% può parlare di <b>steatorrea</b>.
							È a causa di cattiva digestione o malassorbimento dei grassi nel
							tratto digestivo. Si riferisce alla <b>diarrea</b>.
					</big></li>
					<li class="text-justify"><big><b>Minerali:</b> 10-20%.
							Essi non sono molto importante nello studio delle feci.
							Malassorbimento di loro è meglio studiato in <b>esami del
								sangue</b>. </big></li>
					<li class="text-justify"><big>Resti indigeribili (fibra)
							30%. Esso dipende direttamente dalla dieta, non è importante in
							qualsiasi malattia.</big></li>
					<li class="text-justify"><big>Batteri 30%. La
							percentuale è di solito abbastanza stabile. Più importanti sono
							le caratteristiche di questi microrganismi sono studiati con la
							cultura delle feci.</big></li>
				</ul>
				<li class="text-justify"><big><b>Rilevamento di
							enzimi: </b>enzimi coinvolti nel tratto digestivo vengono secreti
						dallo <b>stomaco</b> e il <b>pancreas</b> principalmente. Ci sono
						anche altri agendo d'parete intestinale, ma sono fissi e non
						possono essere studiate in un campione di feci. I più importanti
						sono:</big></li>
				<ul>
					<li class="text-justify"><big><b>Peptidasi:</b> secreto
							nello stomaco digerisce peptidi. E di solito non ha studiato
							nelle feci.</big></li>
					<li class="text-justify"><big><b>Lipasi:</b> secreto dal
							pancreas digerisce i lipidi.</big></li>
					<li class="text-justify"><big>Triptasi: secreto nel
							pancreas digerisce alcune proteine.</big></li>
					<li class="text-justify"><big>Elastasi: anche secreto
							nel pancreas, raccolte di proteine elastiche.</big></li>
				</ul>
				<p class="text-justify">
					<big>Lo studio di questi enzimi è semplicemente quello di
						rilevare la presenza o meno. Quando non si può essere dovuta a
						insufficienza pancreatica esocrina (che è legato alla <b>pancreatite
							cronica</b>) o una ostruzione del fondo dotto biliare (<b>calcoli
							biliari</b>, per esempio).
					</big>
				</p>
				<li class="text-justify"><big><b>Esame in fresco: </b>con
						visualizzazione diretta di feci disciolti nel siero in grado di
						separare gli elementi più grandi di feci e di osservare le
						seguenti strutture:</big></li>
				<ul>
					<li class="text-justify"><big>Fibre: è ciò che è più, la
							loro presenza è normale.</big></li>
					<li class="text-justify"><big><b>Parassiti:</b> è facile
							vedere amebe o Giardia quando stanno invadendo il tratto
							intestinale.</big></li>
					<li class="text-justify"><big>Cisti: di solito entrambe
							le amebe e Giardia sono osservati sotto forma di cisti in questo
							tipo di esame. Possono resistere passaggio attraverso l'ano.</big></li>
					<li class="text-justify"><big>Uova: alcuni parassiti
							sono troppo grandi e non passare attraverso l'ano, ma così fanno
							le loro uova. Questo è il caso di vermi intestinali tipo
							Strongyloides, nematodi, ecc</big></li>
				</ul>
				<li class="text-justify"><big><b>Coprocultivo: </b>si può
						studiare i diversi ceppi di batteri che sono presenti nelle feci.
						Tipicamente trovare batteri commensali dell'intestino crasso, ma
						in situazioni come l'infezione da salmonella o Shigella patogeno
						aggressivo osservato.</big></li>
			</ul>

			<hr>

			<p class="pull-left">
				<a class="btn btn-default btn-lg btn-block"
					href="<c:url value="analisiFeci4.jsp"/>" role="button"><span
					class="glyphicon glyphicon-menu-left"></span> Procedimento</a>
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