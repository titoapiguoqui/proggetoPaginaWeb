package controller.esamePrenotazione;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/menu/menuAmministratore/prenotazione/controllerEsamePrenotazione")
public class ControllerEsamePrenotazione extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HelperEsamePrenotazione helper = new HelperEsamePrenotazione();
		ActionEsamePrenotazione action = new ActionEsamePrenotazione();
		String nextPage = "/menu/menuAmministratore/prenotazione/prenotazione.jsp";

		if (helper.validate(request, response)) {
			nextPage = action.execute(request);
		}

		nextPage = response.encodeURL(nextPage);
		ServletContext servletContext = getServletContext();
		RequestDispatcher rd = servletContext.getRequestDispatcher(nextPage);
		rd.forward(request, response);
		return;
	}
}
