package model;

import persistence.EsameDaoJDBC;
import persistence.MedicoDaoJDBC;
import persistence.PazienteDaoJDBC;
import persistence.TipoEsameDaoJDBC;
import persistence.UtenteDaoJDBC;

public class Facade {
	MedicoDaoJDBC medicoDao = new MedicoDaoJDBC();
	PazienteDaoJDBC pazienteDao = new PazienteDaoJDBC();
	TipoEsameDaoJDBC tipoEsameDao = new TipoEsameDaoJDBC();
	EsameDaoJDBC esameDao = new EsameDaoJDBC();
	UtenteDaoJDBC utenteDao = new UtenteDaoJDBC();
	String idm, idp, c, e, idu;
	String nomePaziente, nomeTipoEsame;
	String nameUtente, pass, ruolo;

	public Facade() {
	}

	// MEDICO
	public void registrareMedico(Medico medico) {
		medicoDao.save(medico);
	}

	public String getPrimaryKeyM(String nome, String cognome) {
		idm = medicoDao.primaryKey(nome, cognome);
		return idm;
	}

	// PAZIENTE
	public void registrarePaziente(Paziente paziente) {
		pazienteDao.save(paziente);
	}

	public String getPrimaryKeyP(String id) {
		idp = pazienteDao.primaryKey(id);
		return idp;
	}

	// TIPOESAME
	public void registrareTipoEsame(TipoEsame tipoEsame) {
		tipoEsameDao.save(tipoEsame);
	}

	public String getPrimaryKeyT(String codice) {
		c = tipoEsameDao.primaryKey(codice);
		return c;
	}

	public String nomeTipoEsame(String codice) {
		nomeTipoEsame = tipoEsameDao.nomeTipoEsame(codice);
		return nomeTipoEsame;
	}

	// ESAME
	public void registrarePrenotazione(Esame esame) {
		esameDao.savePrenotazione(esame);
	}

	public String getPrimaryKeyE(String codice) {
		e = esameDao.primaryKey(codice);
		return e;
	}

	public String nomePaziente(String id) {
		nomePaziente = pazienteDao.nomePaziente(id);
		return nomePaziente;
	}

	// public void registrareEsame(Esame esame) {
	// esameDao.save(esame);
	// }

	// UTENTE
	// public void registrareUtente(Utente utente) {
	// utenteDao.save(utente);
	// }

	public String getPrimaryKeyU(String name, String pass) {
		idu = utenteDao.primaryKey(name, pass);
		return idu;
	}

	public String nomeUtente(String nome, String pass) {
		ruolo = utenteDao.nomeUtente(nome, pass);
		return ruolo;
	}

	public String pass(String nome, String pass) {
		ruolo = utenteDao.pass(nome, pass);
		return ruolo;
	}

	public String ruolo(String nome, String pass) {
		ruolo = utenteDao.ruolo(nome, pass);
		return ruolo;
	}
}