package controller.tipoEsame;

import model.Facade;
import model.TipoEsame;

import javax.servlet.http.HttpServletRequest;

public class ActionTipoEsame {
	
	public String execute(HttpServletRequest request) {
		Facade facade = new Facade();

		// TIPOESAME: leggo e manipolo i parametri
		TipoEsame tipoEsame = new TipoEsame();

		tipoEsame.setCodice(request.getParameter("codice"));
		tipoEsame.setNome(request.getParameter("nome"));
		tipoEsame.setDescrizione(request.getParameter("descrizione"));
		tipoEsame.setCosto(Integer.parseInt(request.getParameter("costo")));
		tipoEsame.setPrerequisiti(request.getParameter("nomePrerequisiti"), request.getParameter("descrizionePrerequisiti"));
//		tipoEsame.setNomePrerequisiti(request.getParameter("nomePrerequisiti"));
//		tipoEsame.setDescrizionePrerequisiti(request.getParameter("descrizionePrerequisiti"));

		facade.registrareTipoEsame(tipoEsame);
		request.setAttribute("tipoEsame", tipoEsame);

		return "/menu/menuAmministratore/registrazione/mostraDatiTipoEsame.jsp";
	}
}
