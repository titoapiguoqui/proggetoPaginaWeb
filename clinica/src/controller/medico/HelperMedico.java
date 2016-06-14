package controller.medico;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Facade;

public class HelperMedico {
	public boolean validate(HttpServletRequest request, HttpServletResponse response) {
		Facade facade = new Facade();
		boolean corretto = true;

		// MEDICO: parametri
		String nome = request.getParameter("nome");
		String cognome = request.getParameter("cognome");
		String specializzazione = request.getParameter("specializzazione");
		String completo = nome + " " + cognome;
		
		String n = facade.getPrimaryKeyM(nome, cognome);

		// MEDICO: verifica dei dati
		if (nome == null || nome.equals("")) {
			request.setAttribute("nomeErrore", "Nome: Campo obbligatorio");
			corretto = false;
		} 
		
		if (completo.equals(n)) {
			request.setAttribute("nomeErroreD", "Il nome del medico è duplicato");
			corretto = false;
		} 

		if (cognome == null || cognome.equals("")) {
			request.setAttribute("cognomeErrore", "Cogome: Campo obbligatorio");
			corretto = false;
		}
		
		if (completo.equals(n)) {
			request.setAttribute("cognomeErroreD", "Il cognome del medico è duplicato");
			corretto = false;
		} 

		if (specializzazione == null || specializzazione.equals("")) {
			request.setAttribute("specializzazioneErrore", "Specializzazione: Campo obligatorio");
			corretto = false;
		}

		return corretto;
	}
}
