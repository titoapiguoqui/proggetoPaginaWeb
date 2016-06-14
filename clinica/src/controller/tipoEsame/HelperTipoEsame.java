package controller.tipoEsame;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Facade;

public class HelperTipoEsame {
	public boolean validate(HttpServletRequest request, HttpServletResponse response) {
		Facade facade = new Facade();
		boolean corretto = true;

		// TIPOESAME: parametri
		String codice = request.getParameter("codice");
		String nome = request.getParameter("nome");
		String descrizione = request.getParameter("descrizione");
		String costo = request.getParameter("costo");
//		String prerequisiti = request.getParameter("prerequisiti");
		String nomePrerequisiti = request.getParameter("nomePrerequisiti");
		String descrizionePrerequisiti = request.getParameter("descrizionePrerequisiti");
		
		String codiceTE = facade.getPrimaryKeyT(codice);

		// TIPOESAME: verifica dei dati
		if (codice == null || codice.equals("")) {
			request.setAttribute("codiceErrore", "Codice: Campo obbligatorio");
			corretto = false;
		} else {
			if (codice.equalsIgnoreCase(codiceTE)) {
				request.setAttribute("codiceErroreC", "La chiave è duplicata");
				corretto = false;
			} 
		}
		
		if (nome == null || nome.equals("")) {
			request.setAttribute("nomeErrore", "Nome: Campo obbligatorio");
			corretto = false;
		}

		if (descrizione == null || descrizione.equals("")) {
			request.setAttribute("descrizioneErrore", "Descrizione: Campo obbligatorio");
			corretto = false;
		}

		if (costo == null || costo.equals("")) {
			request.setAttribute("costoErrore", "Costo: Campo obbligatorio");
			corretto = false;
		} else {
			try {
				Integer.parseInt(costo);
			} catch (NumberFormatException e) {
				request.setAttribute("costoErroreP", "Costo: Campo deve essere numerico");
				corretto = false;
			}
		}

//		if (prerequisiti == null || prerequisiti.equals("")) {
//			request.setAttribute("prerequisitiErrore", "Nome e descrizione: Campi obligatori");
//			corretto = false;
//		}

		if (nomePrerequisiti == null || nomePrerequisiti.equals("")) {
			request.setAttribute("nomePrerequisitiErrore", "Nome prerequisiti: Campo obligatorio");
			corretto = false;
		}
		
		if (descrizionePrerequisiti == null || descrizionePrerequisiti.equals("")) {
			request.setAttribute("descrizionePrerequisitiErrore", "Descrizione prerequisiti: Campo obligatorio");
			corretto = false;
		}

		return corretto;
	}
}
