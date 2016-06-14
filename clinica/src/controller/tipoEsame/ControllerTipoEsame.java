package controller.tipoEsame;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/menu/menuAmministratore/registrazione/controllerTipoEsame")
public class ControllerTipoEsame extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HelperTipoEsame helper = new HelperTipoEsame();
		ActionTipoEsame action = new ActionTipoEsame();
		String nextPage = "/menu/menuAmministratore/registrazione/registrazioneTipoEsame.jsp";
		
		if (helper.validate(request, response)){ 
			nextPage = action.execute(request);
		}

		nextPage = response.encodeURL(nextPage);
		ServletContext servletContext = getServletContext();
		RequestDispatcher rd = servletContext.getRequestDispatcher(nextPage);
		rd.forward(request, response);
		return; 
	}
}
