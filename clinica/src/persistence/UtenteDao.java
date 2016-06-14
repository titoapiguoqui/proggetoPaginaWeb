package persistence;

import java.util.List;

import model.Utente;

public interface UtenteDao {
	public void save(Utente utente);  // Create
	public Utente findByPrimaryKey(String nomeUtente, String pass);  // Retrieve
	public List<Utente> findAll();       
	public void update(Utente utente); //Update
	public void delete(Utente utente); //Delete
	public String primaryKey(String nomeUtente, String pass); // Retrieve
	public String nomeUtente(String nomeUtente, String pass); // Retrieve
	public String pass(String nomeUtente, String pass); // Retrieve
	public String ruolo(String nomeUtente, String pass); // Retrieve
}
