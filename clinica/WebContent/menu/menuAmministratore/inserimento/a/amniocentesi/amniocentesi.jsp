<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="model.*"%>

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

<title>Inserimento dei resultati de un esame</title>

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
			<a class="navbar-brand"
				href="<c:url value="../../../index.jsp"/>">Clinica MR</a>
		</div>
	</div>
	<!-- /.container --> </nav>
	<!-- /.navbar -->

	<!-- Begin page content -->
	<div class="container">
		<a href="../../../index.jsp">Clinica</a> | <a
			href="../../menuAmministratore/menu.jsp">Menu amministrativo</a> |
		<strong>Inserimento risultati</strong>
		<div class="jumbotron container">
			<div class="row">
				<div class="col-lg-4">
					<img alt="logo risultati"
						src="../../../images/loghiMenu/logorisultati.png"
						width="200" height="200">
				</div>
				<h3>Inserimento dei resultati</h3>
				<div class="col-lg-5">
					<!-- Form inserimento -->
					<form name="risultati" method="post">
						<label>ESAMI</label> <select name="porta"
							onchange="location.href=risultati.porta.value;">
							<option value="inserimentoRisultatiEsame.jsp">Sceglie
								un'opzione</option>
							<optgroup label="A">
								<option value="a/amniocentesi/amniocentesi.jsp">Amniocentesi</option>
								<option value="a/analisiFeci/analisiFeci.jsp">Analisi
									delle feci</option>
								<option value="a/analisiUrine/analisiUrine.jsp">Analisi
									delle urine</option>
								<option value="a/analisiPSA/analisiPSA.jsp">Analisi del
									PSA</option>
								<option value="a/angiografia/angiografia.jsp">Angiografia</option>
								<option value="a/anoscopia/anoscopia.jsp">Anoscopia</option>
								<option value="a/artroscopia/artroscopia.jsp">Artroscopia</option>
								<option value="a/audiometria/audiometria.jsp">Audiometria</option>
							</optgroup>
							<optgroup label="B">
								<option value="b/biopsiaCutanea/biopsiaCutanea.jsp">Biopsia
									cutanea</option>
								<option value="b/biopsiaMidolloOsseo/biopsiaMidolloOsseo.jsp">Biopsia
									del midollo osseo</option>
								<option value="b/biopsiaEpatica/biopsiaEpatica.jsp">Biopsia
									epatica</option>
								<option value="b/breathTest/breathTest.jsp">Breath test</option>
								<option value="b/broncoscopia/broncoscopia.jsp">Broncoscopia</option>
							</optgroup>
							<optgroup label="C">
								<option value="c/cistoscopia/cistoscopia.jsp">Cistoscopia</option>
								<option value="c/citologiaCervicale/citologiaCervicale.jsp">Citologia
									cervicale</option>
								<option value="c/CPRE/CPRE-jsp">Colangiopancreatografia
									retrogradaendoscopica (CPRE)</option>
								<option value="c/colonscopia/colonscopia.jsp">Colonscopia</option>
								<option value="c/colorazioneGram/colorazioneGram.jsp">Colorazione
									di Gram</option>
								<option value="c/clismaOpaco/clismaOpaco.jsp">Clisma
									opaco</option>
								<option value="c/cropEspettorato/cropEspettorato.jsp">Crop
									diespettorato</option>
							</optgroup>
							<optgroup label="D">
								<option value="d/densitometriaOssea/densitometriaOssea.jsp">Densitometria
									ossea</option>
								<option
									value="d/dermatoscopiaDigitale/dermatoscopiaDigitale.jsp">Dermatoscopia
									digitale</option>
							</optgroup>
							<optgroup label="E">
								<option value="e/ecocardiogramma/ecocardiogramma.jsp">Ecocardiogramma</option>
								<option value="e/ecografiaAddominale/ecografiaAddominale.jsp">Ecografia
									addominale</option>
								<option value="e/ecografiaDOPPLER/ecografiaDOPPLER.jsp">Ecografia
									DOPPLER</option>
								<option value="e/elettrocardiogramma/elettrocardiogramma.jsp">Elettrocardiogramma</option>
								<option value="e/EEG/EEG.jsp">Elettroencefalogramma
									(EEG)</option>
								<option value="e/elettromiografia/elettromiografia.jsp">Elettromiografia</option>
								<option value="e/ELISA/ELISA.jsp">ELISA</option>
								<option value="e/ergometria/ergometria.jsp">Ergometria</option>
								<option value="e/esameFondoOcchio/esameFondoOcchio.jsp">Esame
									del fondo del occhio</option>
								<option value="e/esamePelvico/esamePelvico.jsp">esamePelvico</option>
								<option value="e/esameSangue/esameSangue.jsp">Esame di
									sangue</option>
								<option value="e/DRE/DRE.jsp">DRE</option>
							</optgroup>
							<optgroup label="G">
								<option value="g/gastroscopia/gastroscopia.jsp">Gastroscopia</option>
								<option value="g/gasometria/gasometria.jsp">Gasometria</option>
							</optgroup>
							<optgroup label="H">
								<option value="h/holter/holter.jsp">Holter</option>
							</optgroup>
							<optgroup label="I">
								<option value="i/isterosalpingografia/isterosalpingografia.jsp">Isterosalpingografia</option>
							</optgroup>
							<optgroup label="L">
								<option value="l/laparoscopia/laparoscopia.jsp">Laparoscopia</option>
								<option value="l/laringoscopia/laringoscopia.jsp">Laringoscopia</option>
								<option value="l/lavandaGastrica/lavandaGastrica.jsp">Lavanda
									gastrica</option>
							</optgroup>
							<optgroup label="M">
								<option value="m/mammografia/mammografia.jsp">Mammografia</option>
								<option value="m/mantoux/mantoux.jsp">Mantoux</option>
							</optgroup>
							<optgroup label="O">
								<option value="o/otoscopia/otoscopia.jsp">Otoscopia</option>
							</optgroup>
							<optgroup label="P">
								<option value="p/PCR/PCR.jsp">PCR (Polymerase Chain
									Reaction)</option>
								<option value="p/polisonnografia/polisonnografia.jsp">Polisonnografia</option>
								<option value="p/prickTest/prickTest.jsp">Prick test:
									test cutanei allergici</option>
								<option value="p/pulsossimetria/pulsossimetria.jsp">Pulsossimetria</option>
								<option value="p/punturaLombare/punturaLombare.jsp">Puntura
									lombare</option>
								<option value="f/punturaFNA/punturaFNA.jsp">Puntura FNA</option>
							</optgroup>
							<optgroup label="R">
								<option value="r/radiografiaTorace/radiografiaTorace.jsp">Radiografia
									del torace</option>
								<option value="r/RMN/RMN.jsp">Risonanza Magnetica
									Nucleare (RMN)</option>
							</optgroup>
							<optgroup label="S">
								<option value="s/sfigmomanometro/sfigmomanometro.jsp">Sfigmomanometro</option>
								<option value="s/spirometria/spirometria.jsp">Spirometria</option>
								<option value="s/scintigrafia/scintigrafia.jsp">Scintigrafia</option>
								<option value="s/seminogramma/seminogramma.jsp">Seminogramma
									Esame dello sperma)</option>
								<option value="s/sigmoidoscopia/sigmoidoscopia.jsp">Sigmoidoscopia</option>
							</optgroup>
							<optgroup label="T">
								<option value="t/tabellaInclinazione/tabellaInclinazione.jsp">Tabella
									di inclinazione</option>
								<option value="t/TAC/TAC.jsp">Tomografia Axiale
									Computerizzata (TAC)</option>
								<option value="t/TACPET/TACPET.jsp">Tomografia ad
									Emissione di Positroni (PET)</option>
								<option value="t/testGenetico/testGenetico.jsp">Test
									genetico</option>
								<option
									value="t/testLavaggioCapillareModificato/testLavaggioCapillareModificato.jsp">Test
									lavaggio capillare modificato</option>
								<option value="t/testOSullivan/testOSullivan.jsp">Test
									di O'Sullivan</option>
								<option value="t/testPaternita/testPaternita.jsp">Test
									di paternità</option>
								<option value="t/testSnellen/testSnellen.jsp">Test di
									Snellen</option>
								<option
									value="t/testPotenzialeEvocato/testPotenzialeEvocato.jsp">Test
									potenziale evocato</option>
								<option value="t/toracoscopia/toracoscopia.jsp">Toracoscopia</option>
								<option value="t/tricogrammaCapillare/tricogrammaCapillare.jsp">Tricogramma
									capillare</option>
							</optgroup>
							<optgroup label="U">
								<option value="u/urografia/urografia.jsp">Urografia</option>
							</optgroup>
							<optgroup label="V">
								<option value="v/villocentesi/villocentesi.jsp">Villocentesi</option>
							</optgroup>
						</select>
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
						.write('<script src="../../../js/vendor/jquery.min.js"><\/script>')
	</script>
	<script src="../../../js/bootstrap.min.js"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="../../../js/ie10-viewport-bug-workaround.js"></script>
	<script src="../../../js/offcanvas.js"></script>
	<script src="../../../js/loadbutton.js"></script>
</body>
</html>