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
<link rel="icon" href="../images/favicon.ico">

<title>Tipologie di esami</title>

<!-- Bootstrap core CSS -->
<link href="../css/bootstrap.css" rel="stylesheet">

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<link href="../css/ie10-viewport-bug-workaround.css" rel="stylesheet">

<!-- Custom styles for this template -->

<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
<script src="../js/ie-emulation-modes-warning.js"></script>
</head>
<body>
	<a name="supra"></a>
	<!-- Fixed navbar -->
	<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="<c:url value="../index.jsp"/>">Clinica
				MR</a>
		</div>
	</div>
	<!-- /.container --> </nav>
	<!-- /.navbar -->

	<div class="container">
		<div class="page-header">
			<br> <a href="../index.jsp">Clinica</a> | <strong>Esami</strong>
			<div class="jumbotron">
				<h1>Tipologie di esami</h1>
				<h2>Consulta tutti gli esami diagnostici</h2>
			</div>
		</div>

		<code>
			<p>
				<a href="#centro" class="text-right">Andare alla parte centrale</a>
			</p>
			<p>
				<a href="#sotto">Andare al fondo</a>
			</p>
		</code>

		<hr>

		<div class="row">
			<div class="col-xs-4">
				<h3>A</h3>
				<p>
					<a href="a/amniocentesi/amniocentesi1.jsp">Amniocentesi</a>
				</p>
				<p>
					<a href="a/analisiFeci/analisiFeci1.jsp">Analisi delle feci</a>
				</p>
				<p>
					<a href="a/analisiPSA/analisiPSA1.jsp">Analisi del PSA</a>
				</p>
				<p>
					<a href="a/analisiUrine/analisiUrine1.jsp">Analisi delle urine</a>
				</p>
				<p>
					<a href="a/angiografia/angiografia1.jsp">Angiografia</a>
				</p>
				<p>
					<a href="a/anoscopia/anoscopia1.jsp">Anoscopia</a>
				</p>
				<p>
					<a href="a/artroscopia/artroscopia1.jsp">Artroscopia</a>
				</p>
				<p>
					<a href="a/audiometria/audiometria1.jsp">Audiometria</a>
				</p>
				<h3>B</h3>
				<p>
					<a href="b/biopsiaCutanea/biopsiaCutanea1.jsp">Biopsia cutanea</a>
				</p>
				<p>
					<a href="b/biopsiaEpatica/biopsiaEpatica1.jsp">Biopsia epatica</a>
				</p>
				<p>
					<a href="b/biopsiaMidolloOsseo/biopsiaMidolloOsseo1.jsp">Biopsia
						del midollo osseo</a>
				</p>
				<p>
					<a href="b/breathTest/breathTest1.jsp">Breath test</a>
				</p>
				<p>
					<a href="b/broncoscopia/broncoscopia1.jsp">Broncoscopia</a>
				</p>
				<h3>C</h3>
				<p>
					<a href="c/cateterismo/cateterismo1.jsp">Cateterismo</a>
				</p>
				<p>
					<a href="c/cistoscopia/cistoscopia1.jsp">Cistoscopia</a>
				</p>
				<p>
					<a href="c/citologiaCervicale/citologiaCervicale1.jsp">Citologia
						cervicale</a>
				</p>
				<p>
					<a href="c/clismaOpaco/clismaOpaco1.jsp">clisma opaco</a>
				</p>
				<p>
					<a href="c/CPRE/CPRE1.jsp">Colangiopancreatografia retrograda
						endoscopica (CPRE)</a>
				</p>
				<p>
					<a href="c/colonoscopia/colonoscopia1.jsp">Colonoscopia</a>
				</p>
				<p>
					<a href="c/colorazioneGram/colorazioneGram1.jsp">Colorazione di
						Gram</a>
				</p>
				<p>
					<a href="c/colposcopia/colposcopia1.jsp">Colposcopia</a>
				</p>
				<p>
					<a href="c/cropEspettorato/cropEspettorato1.jsp">Crop di
						espettorato</a>
				</p>
				<h3>D</h3>
				<p>
					<a href="d/densitometriaOssea/densitometriaOssea1.jsp">Densitometria
						ossea</a>
				</p>
				<p>
					<a href="d/dermatoscopiaDigitale/dermatoscopiaDigitale1.jsp">Dermatoscopia
						digitale</a>
				</p>
				<h3>E</h3>
				<p>
					<a href="e/ecocardiogramma/ecocardiogramma1.jsp">Ecocardiogramma</a>
				</p>
				<p>
					<a href="e/ecografiaAddominale/ecografiaAddominale1.jsp">Ecografia
						addominale</a>
				</p>
				<p>
					<a href="e/ecogradiaDoppler/ecogradiaDoppler1.jsp">Ecografia
						Doppler</a>
				</p>
				<p>
					<a href="e/elettrocardiogramma/elettrocardiogramma1.jsp">Elettrocardiogramma</a>
				</p>
				<p>
					<a href="e/EEG/EEG1.jsp">Elettroencefalogramma (EEG)</a>
				</p>
			</div>
			<div class="col-xs-4">
				<p>
					<a href="e/elettromiografia/elettromiografia1.jsp">Elettromiografia</a>
				</p>
				<p>
					<a href="e/ELISA/ELISA1.jsp">ELISA</a>
				</p>
				<p>
					<a href="e/ergometria/ergometria1.jsp">Ergometria</a>
				</p>
				<p>
					<a href="e/esameFondoOcchio/esameFondoOcchio1.jsp">Esame del
						fondo del occhio</a>
				</p>
				<p>
					<a href="e/esamePelvico/esamePelvico1.jsp">Esame pelvico</a>
				</p>
				<p>
					<a href="e/esameSangue/esameSangue1.jsp">Esame di sangue</a>
				</p>
				<p>
					<a href="e/DRE/DRE1.jsp">Esplorazione rettale (DRE)</a>
				</p>
				<h3>F</h3>
				<h3>G</h3>
				<p>
					<a href="g/gasometria/gasometria1.jsp">Gasometria</a>
				</p>
				<p>
					<a href="g/gastroscopia/gastroscopia1.jsp">Gastroscopia</a>
				</p>
				<h3>H</h3>
				<p>
					<a href="h/holter/holter1.jsp">Holter</a>
				</p>
				<h3>I</h3>
				<p>
					<a href="i/isterosalpingografia/isterosalpingografia1.jsp">Isterosalpingografia</a>
				</p>
				<h3>J</h3>
				<a name="centro"></a>
				<h3>K</h3>
				<h3>L</h3>
				<p>
					<a href="l/laparoscopia/laparoscopia1.jsp">Laparoscopia</a>
				</p>
				<p>
					<a href="l/laringoscopia/laringoscopia1.jsp">Laringoscopia</a>
				</p>
				<p>
					<a href="l/lavandaGastrica/lavandaGastrica1.jsp">Lavanda
						gastrica</a>
				</p>
				<h3>M</h3>
				<p>
					<a href="m/mammografia/mammografia1.jsp">Mammografia</a>
				</p>
				<p>
					<a href="m/mantoux/mantoux1.jsp">Mantoux</a>
				</p>
				<h3>N</h3>
				<h3>O</h3>
				<p>
					<a href="o/otoscopia/otoscopia1.jsp">Otoscopia</a>
				</p>
				<h3>P</h3>
				<p>
					<a href="p/PCR/PCR1.jsp">PCR (Polymerase Chain Reaction)</a>
				</p>
				<p>
					<a href="p/polisonnografia/polisonnografia1.jsp">Polisonnografia</a>
				</p>
				<p>
					<a href="p/prickTest/prickTest1.jsp">Prick test: prove
						allergiche</a>
				</p>
			</div>
			<div class="col-xs-4">
				<p>
					<a href="p/pulsossimetria/pulsossimetria1.jsp">Pulsossimetria</a>
				</p>
				<p>
					<a href="p/punturaFNA/punturaFNA1.jsp">Puntura FNA</a>
				</p>
				<h3>Q</h3>
				<h3>R</h3>
				<p>
					<a href="r/radiografiaTorace/radiografiaTorace1.jsp">Radiografia
						del torace</a>
				</p>
				<p>
					<a href="r/RMN/RMN1.jsp">Risonanza Magnetica Nucleare (RMN)</a>
				</p>
				<h3>S</h3>
				<p>
					<a href="s/scintigrafia/scintigrafia1.jsp">Scintigrafia</a>
				</p>
				<p>
					<a href="s/seminogramma/seminogramma1.jsp">Seminogramma (esame
						dello sperma)</a>
				</p>
				<p>
					<a href="s/sfigmomanometria/sfigmomanometria1.jsp">Sfigmomanometria</a>
				</p>
				<p>
					<a href="s/sigmoidoscopia/sigmoidoscopia1.jsp">Sigmoidoscopia</a>
				</p>
				<p>
					<a href="s/spirometria/spirometria1.jsp">Spirometria</a>
				</p>
				<h3>T</h3>
				<p>
					<a href="t/tabellaInclinazione/tabellaInclinazione1.jsp">Tabella
						di inclinazione</a>
				</p>
				<p>
					<a href="t/TAC/TAC1.jsp">Tomografia assiale computerizzata
						(TAC)</a>
				</p>
				<p>
					<a href="t/TACPET/TACPET1.jsp">Tomografia ad emissione di
						positroni (PET)</a>
				</p>
				<p>
					<a href="t/testGenetico/testGenetico1.jsp">Test genetico</a>
				</p>
				<p>
					<a
						href="t/testLavaggioCapillareModificata/testLavaggioCapillareModificata1.jsp">Test
						lavaggio capillare modificato</a>
				</p>
				<p>
					<a href="t/testOSullivan/testOSullivan1.jsp">Test di O'Sullivan</a>
				</p>
				<p>
					<a href="t/testPaternita/testPaternita1.jsp">Test di paternità</a>
				</p>
				<p>
					<a href="t/testPotenzialeEvocato/testPotenzialeEvocato1.jsp">Test
						potenziale evocato</a>
				</p>
				<p>
					<a href="t/testSnellen/testSnellen1.jsp">Test Snellen</a>
				</p>
				<p>
					<a href="t/toracoscopia/toracoscopia1.jsp">Toracoscopia</a>
				</p>
				<p>
					<a href="t/tricogrammaCapillare1.jsp">Tricogramma capillare </a>
				</p>
				<h3>U</h3>
				<p>
					<a href="u/urografia/urografia1.jsp">Urografia</a>
				</p>
				<h3>V</h3>
				<h3>W</h3>
				<h3>X</h3>
				<h3>Y</h3>
				<h3>Z</h3>
			</div>
			<!--/.col-lg-4-->
		</div>
		<!--/row-->

		<hr>

		<code>
			<p class="text-right">
				<a href="#supra">Andare alla cima</a>
			</p>
			<p class="text-right">
				<a href="#centro">Andare alla parte centrale</a>
			</p>
			<a name="sotto"></a>
		</code>

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