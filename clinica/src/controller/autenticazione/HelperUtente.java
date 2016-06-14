package controller.autenticazione;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Facade;

public class HelperUtente {
	public boolean validate(HttpServletRequest request, HttpServletResponse response) {
		Facade facade = new Facade();
		boolean autorizzato = true;

		// UTENTE: parametri
		String nomeUtente = request.getParameter("nomeUtente");
		String pass = request.getParameter("pass");
		
		String n = facade.nomeUtente(nomeUtente, pass);
		String p = facade.pass(nomeUtente, pass);

		// UTENTE: verifica dei dati
		if (!nomeUtente.equals(n) || !pass.equals(p)) {
			request.setAttribute("errore", "Il nome utente o la pass non sono corrispondenti");
			autorizzato = false;
		}
		
		return autorizzato;
	}
}
