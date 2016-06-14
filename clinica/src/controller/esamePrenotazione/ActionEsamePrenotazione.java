package controller.esamePrenotazione;

import model.Esame;
import model.Facade;

import javax.servlet.http.HttpServletRequest;

public class ActionEsamePrenotazione {
	
	public String execute(HttpServletRequest request)  {
		Facade facade = new Facade();

		// PAZIENTE: leggo e manipolo i parametri
		Esame esame = new Esame();
		esame.setCodice(request.getParameter("codice"));
		esame.setCodiceTipoEsame(request.getParameter("codiceTipoEsame").toUpperCase());
		esame.setNomeTipoEsame(facade.nomeTipoEsame(request.getParameter("codiceTipoEsame")));
		esame.setIdPaziente(request.getParameter("idPaziente"));
		esame.setNomePaziente(facade.nomePaziente(request.getParameter("idPaziente")));
		esame.getDataPrenotazione();

		request.setAttribute("esame", esame);
		facade.registrarePrenotazione(esame);

		return "/menu/menuAmministratore/prenotazione/mostraPrenotazione.jsp";
	}
}
