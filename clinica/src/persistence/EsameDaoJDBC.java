package persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.apache.log4j.Logger;

import model.Esame;
//import model.Paziente;
import persistence.DataSource;
import persistence.PersistenceException;
import persistence.EsameDaoJDBC;

public class EsameDaoJDBC implements EsameDao {
	final static Logger logger = Logger.getLogger(EsameDaoJDBC.class);
	private DataSource dataSource;

	public EsameDaoJDBC() {
		this.dataSource = new DataSource();
	}

	public void savePrenotazione(Esame esame) {
		Connection connection = this.dataSource.getConnection();
		try {
			String insert = "insert into esame(codice, codicetipoesame, nometipoesame, idpaziente, nomepaziente, dataprenotazione) values (?,?,?,?,?,?)";
			PreparedStatement statement = connection.prepareStatement(insert);
			statement.setString(1, esame.getCodice());
			statement.setString(2, esame.getCodiceTipoEsame());
			statement.setString(3, esame.getNomeTipoEsame());
			statement.setString(4, esame.getIdPaziente());
			statement.setString(5, esame.getNomePaziente());
//			long secs = esame.getDataPrenotazione().getTime();
//			statement.setDate(4, new java.sql.Date(secs));
			statement.setString(6,  esame.getDataPrenotazione());
			logger.debug(statement);
			statement.executeUpdate();
		} catch (SQLException e) {
			logger.error(e);
			throw new PersistenceException(e.getMessage());
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				logger.error(e);
				throw new PersistenceException(e.getMessage());
			}
		}
	}  

//	public Esame findByPrimaryKey(String codice) {
//		Connection connection = this.dataSource.getConnection();
//		Esame esame = null;
//		try {
//			PreparedStatement statement;
//			String query = "select * from esame where codice = ?";
//			statement = connection.prepareStatement(query);
//			statement.setString(1, codice);
//			logger.debug(statement);
//			ResultSet result = statement.executeQuery();
//			if (result.next()) {
//				esame = new Esame();
//				esame.setCodice(result.getString("codice"));				
//				esame.setNome(result.getString("nome"));
//				esame.setCognome(result.getString("cognome"));
//				esame.setSpecializzazione(result.getString("specializzazione"));
//			}
//		} catch (SQLException e) {
//			logger.error(e);
//			throw new PersistenceException(e.getMessage());
//		} finally {
//			try {
//				connection.close();
//			} catch (SQLException e) {
//				logger.error(e);
//				throw new PersistenceException(e.getMessage());
//			}
//		}	
//		return esame;
//	}

//	public List<Esame> findAll() {
//		Connection connection = this.dataSource.getConnection();
//		List<Esame> esami = new LinkedList<>();
//		Paziente paziente = new Paziente();
//		try {
//			Esame esame;
//			PreparedStatement statement;
//			String query = "select * from esame";
//			statement = connection.prepareStatement(query);
//			logger.debug(statement);
//			ResultSet result = statement.executeQuery();
//			while (result.next()) {
//				esame = new Esame();
//				esame.setCodice(result.getString("codice"));				
//				paziente.setNome(result.getString("nome"));
//				esame.setCognome(result.getString("cognome"));
//				esame.setSpecializzazione(result.getString("specializzazione"));
//				medici.add(esame);
//			}
//		} catch (SQLException e) {
//			logger.error(e);
//			throw new PersistenceException(e.getMessage());
//		}	 finally {
//			try {
//				connection.close();
//			} catch (SQLException e) {
//				logger.error(e);
//				throw new PersistenceException(e.getMessage());
//			}
//		}
//		return esami;
//	}
//
//	public void update(Esame esame) {
//		Connection connection = this.dataSource.getConnection();
//		try {
//			String update = "update esame SET nome = ?, cognome = ?, specializzazione = ? WHERE codice=?";
//			PreparedStatement statement = connection.prepareStatement(update);
//			statement.setString(1, esame.getCodice());
//			statement.setString(2, esame.getNome());
//			statement.setString(3, esame.getCognome());
//			statement.setString(4, esame.getSpecializzazione());
//			logger.debug(statement);
//			statement.executeUpdate();
//		} catch (SQLException e) {
//			logger.error(e);
//			throw new PersistenceException(e.getMessage());
//		} finally {
//			try {
//				connection.close();
//			} catch (SQLException e) {
//				logger.error(e);
//				throw new PersistenceException(e.getMessage());
//			}
//		}
//	}
//
//	public void delete(Esame esame) {
//		Connection connection = this.dataSource.getConnection();
//		try {
//			String delete = "delete FROM esame WHERE codice = ? ";
//			PreparedStatement statement = connection.prepareStatement(delete);
//			statement.setString(1, esame.getCodice());
//			logger.debug(statement);
//			statement.executeUpdate();
//		} catch (SQLException e) {
//			logger.error(e);
//			throw new PersistenceException(e.getMessage());
//		} finally {
//			try {
//				connection.close();
//			} catch (SQLException e) {
//				logger.error(e);
//				throw new PersistenceException(e.getMessage());
//			}
//		}
//	}
	
	public String primaryKey(String cod) {
		Connection connection = this.dataSource.getConnection();
		String codice = null;
		try {
			PreparedStatement statement;
			String query = "select codice from esame where codice = ?";
			statement = connection.prepareStatement(query);
			statement.setString(1, cod);
			logger.debug(statement);
			ResultSet result = statement.executeQuery();
			while (result.next()) {
				codice = result.getString("codice");				
			}
		} catch (SQLException e) {
			logger.error(e);
			throw new PersistenceException(e.getMessage());
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				logger.error(e);
				throw new PersistenceException(e.getMessage());
			}
		}	
		return codice;
	}
}