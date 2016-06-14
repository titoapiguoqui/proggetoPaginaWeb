package controller.paziente;

import model.Facade;
import model.Paziente;

import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;

public class ActionPaziente {
	
	public String execute(HttpServletRequest request) throws ParseException {
		Facade facade = new Facade();
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");

		// PAZIENTE: leggo e manipolo i parametri
		Paziente paziente = new Paziente();
		paziente.setId(Long.parseLong(request.getParameter("id")));
		paziente.setNome(request.getParameter("nome"));
		paziente.setCognome(request.getParameter("cognome"));
		paziente.setDataNascita(sdf.parse(request.getParameter("dataNascita")));
		paziente.setGruppoSang(request.getParameter("gruppoSang"));
		paziente.setEmail(request.getParameter("email"));
		
		request.setAttribute("paziente", paziente);
		facade.registrarePaziente(paziente);

		return "/menu/menuAmministratore/registrazione/mostraDatiPaziente.jsp";
	}
}
