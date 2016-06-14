package controller.autenticazione;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/controllerUtente")
public class ControllerUtente extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HelperUtente helper = new HelperUtente();
		ActionUtente action = new ActionUtente();
		String nextPage = "/fallimento.jsp";

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
