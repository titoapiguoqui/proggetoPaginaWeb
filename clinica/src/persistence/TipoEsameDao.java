package persistence;

import java.util.List;

import model.TipoEsame;

public interface TipoEsameDao {
	public void save(TipoEsame tipoEsame);  // Create
	public TipoEsame findByPrimaryKey(String id);  // Retrieve
	public List<TipoEsame> findAll();       
	public void update(TipoEsame tipoEsame); //Update
	public void delete(TipoEsame tipoEsame); //Delete
	public String primaryKey(String codice); // Retrieve
	public String nomeTipoEsame(String codice); // Retrieve
}
