package controller.paziente;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Facade;

public class HelperPaziente {
	public boolean validate(HttpServletRequest request, HttpServletResponse response) {
		Facade facade = new Facade();
		SimpleDateFormat dN = new SimpleDateFormat("dd/MM/yyyy", Locale.getDefault());
		boolean corretto = true;
		Pattern posta = Pattern.compile(
				"^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@" + "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$");

		// PAZIENTE: parametri
		String idp = request.getParameter("id");
		String nome = request.getParameter("nome");
		String cognome = request.getParameter("cognome");
		String dataNascita = request.getParameter("dataNascita");
		String gruppoSang = request.getParameter("gruppoSang");
		String email = request.getParameter("email");
		
		String id = facade.getPrimaryKeyP(idp);

		// PAZIENTE: verifica dei dati
		if (idp == null || idp.equals("")) {
			request.setAttribute("idErrore", "Identificatore: Campo obbligatorio");
			corretto = false;
		} else {
			if (idp.equalsIgnoreCase(id)) {
				request.setAttribute("idErroreC", "La chiave è duplicata");
				corretto = false;
			} else {
				try {
					Long.parseLong(idp);
				} catch (NumberFormatException e) {
					request.setAttribute("idErroreP", "Identificatore non valido");
					corretto = false;
				}
			}
		}

		if (nome == null || nome.equals("")) {
			request.setAttribute("nomeErrore", "Nome: Campo obbligatorio");
			corretto = false;
		}

		if (cognome == null || cognome.equals("")) {
			request.setAttribute("cognomeErrore", "Cogome: Campo obbligatorio");
			corretto = false;
		}

		dN.setLenient(false);

		if (dataNascita == null || dataNascita.equals("")) {
			request.setAttribute("dataNascitaErrore", "Data di nascita: Campo obbligatorio");
			corretto = false;
		} else {
			try {
				dN.parse(dataNascita);
			} catch (ParseException e) {
				request.setAttribute("dataNascitaErroreF", "Data di nascita non valida");
				corretto = false;
			}
		}

		if (gruppoSang == null || gruppoSang.equals("")) {
			request.setAttribute("gruppoSangErrore", "Gruppo sanguineo: Campo obbligatorio");
			corretto = false;
		}

		Matcher mather = posta.matcher(email);

		if (email == null || email.equals("")) {
			request.setAttribute("emailErrore", "Email: Campo obbligatorio");
			corretto = false;
		} else {
			if (mather.find() == false) {
				request.setAttribute("emailErroreF", "Email non valido");
				corretto = false;
			}
		}

		return corretto;
	}
}
