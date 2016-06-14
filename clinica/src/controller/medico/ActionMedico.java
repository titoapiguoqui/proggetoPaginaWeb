package controller.medico;

import model.Facade;
import model.Medico;

import javax.servlet.http.HttpServletRequest;

public class ActionMedico {
	
	public String execute(HttpServletRequest request) {
		Facade facade = new Facade();

		// MEDICO: leggo e manipolo i parametri
		Medico medico = new Medico();
		medico.setNome(request.getParameter("nome"));
		medico.setCognome(request.getParameter("cognome"));
		medico.setSpecializzazione(request.getParameter("specializzazione"));

		request.setAttribute("medico", medico);
		facade.registrareMedico(medico);

		return "/menu/menuAmministratore/registrazione/mostraDatiMedico.jsp";
	}
}
