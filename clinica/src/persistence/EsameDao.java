package persistence;

//import java.util.List;

import model.Esame;

public interface EsameDao {
	public void savePrenotazione(Esame esame);  // Create
//	public Esame findByPrimaryKey(String id);  // Retrieve
//	public List<Esame> findAll();       
//	public void update(Esame esame); //Update
//	public void delete(Esame esame); //Delete
	public String primaryKey(String codice); // Retrieve
}
