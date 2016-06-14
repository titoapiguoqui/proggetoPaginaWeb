package persistence;

import java.util.List;

import model.Medico;

public interface MedicoDao {
	public void save(Medico medico);  // Create
	public Medico findByPrimaryKey(String nome, String cognome);  // Retrieve
	public List<Medico> findAll();       
	public void update(Medico medico); //Update
	public void delete(Medico medico); //Delete
	public String primaryKey(String nome, String cognome); // Retrieve
}
