package persistence;

import java.util.List;

import model.Paziente;

public interface PazienteDao {
	public void save(Paziente paziente);  // Create
	public Paziente findByPrimaryKey(String id);  // Retrieve
	public List<Paziente> findAll();       
	public void update(Paziente paziente); //Update
	public void delete(Paziente paziente); //Delete
	public String primaryKey(String id); // Retrieve
	public String nomePaziente(String id); // Retrieve
}
