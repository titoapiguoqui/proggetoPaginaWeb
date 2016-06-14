package controller.autenticazione;

import model.Facade;
import model.Utente;

import javax.servlet.http.HttpServletRequest;

public class ActionUtente {

	public String execute(HttpServletRequest request) {
		Facade facade = new Facade();

		String ruolo = facade.ruolo(request.getParameter("nomeUtente"), request.getParameter("pass"));

		// UTENTE: leggo e manipolo i parametri
		Utente utente = new Utente();
		utente.setNomeUtente(request.getParameter("nomeUtente"));
		utente.setPass(request.getParameter("pass"));
		utente.setRuolo(request.getParameter("ruolo"));
		
		request.setAttribute("utente", utente);
		
		if (ruolo.equals("amministratore"))
			return "/benvenutoAmmin.jsp";
		else 
			return "/benvenutoUtente.jsp";
	}
}
