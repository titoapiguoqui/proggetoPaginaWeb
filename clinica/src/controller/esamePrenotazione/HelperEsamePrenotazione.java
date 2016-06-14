package controller.esamePrenotazione;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Facade;

public class HelperEsamePrenotazione {
	public boolean validate(HttpServletRequest request, HttpServletResponse response) {
		Facade facade = new Facade();
		boolean corretto = true;

		// ESAME: parametri
		String codice = request.getParameter("codice");
		String codiceTipoEsame = request.getParameter("codiceTipoEsame");
		String idPaziente = request.getParameter("idPaziente");

		String cod = facade.getPrimaryKeyE(codice);
		String codTE = facade.getPrimaryKeyT(codiceTipoEsame);
		String id = facade.getPrimaryKeyP(idPaziente);

		// ESAME: verifica dei dati
		if (codice == null || codice.equals("")) {
			request.setAttribute("codiceErrore", "Codice: Campo obbligatorio");
			corretto = false;
		} else {
			if (codice.equalsIgnoreCase(cod)) {
				request.setAttribute("codiceErroreC", "Il codice è duplicato");
				corretto = false;
			} 
		}

		if (codiceTipoEsame == null || codiceTipoEsame.equals("")) {
			request.setAttribute("codiceTipoEsameErrore", "Codice tipo esame: Campo obbligatorio");
			corretto = false;
		} else {
			if (!codiceTipoEsame.equals(codTE)) {
				request.setAttribute("codiceTipoEsameErroreN", "Il codice " + codiceTipoEsame + " non esiste");
				corretto = false;
			}
		}

		if (idPaziente == null || idPaziente.equals("")) {
			request.setAttribute("idPazienteErrore", "Identificatore paziente: Campo obbligatorio");
			corretto = false;
		} else {
			if (!idPaziente.equals(id)) {
				request.setAttribute("idPazienteErroreN", "La id " + idPaziente + " non esiste");
				corretto = false;
			}
		}

		return corretto;
	}
}
