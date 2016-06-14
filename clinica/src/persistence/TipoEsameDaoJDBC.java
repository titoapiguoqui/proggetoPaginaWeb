package persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

import org.apache.log4j.Logger;

import model.TipoEsame;
import persistence.DataSource;
import persistence.PersistenceException;
import persistence.TipoEsameDaoJDBC;

public class TipoEsameDaoJDBC implements TipoEsameDao {
	final static Logger logger = Logger.getLogger(TipoEsameDaoJDBC.class);
	private DataSource dataSource;

	public TipoEsameDaoJDBC() {
		this.dataSource = new DataSource();
	}

	public void save(TipoEsame tipoEsame) {
		Connection connection = this.dataSource.getConnection();
		try {
			String insert = "insert into tipoEsame(codice, nome, descrizione, costo, prerequisiti) values (?,?,?,?,?)";
			PreparedStatement statement = connection.prepareStatement(insert);
			statement.setString(1, tipoEsame.getCodice());
			statement.setString(2, tipoEsame.getNome());
			statement.setString(3, tipoEsame.getDescrizione());
			statement.setInt(4, tipoEsame.getCosto());
			statement.setString(5, tipoEsame.getPrerequisiti());
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

	public TipoEsame findByPrimaryKey(String codice) {
		Connection connection = this.dataSource.getConnection();
		TipoEsame tipoEsame = null;
		try {
			PreparedStatement statement;
			String query = "select * from tipoEsame where codice = ?";
			statement = connection.prepareStatement(query);
			statement.setString(1, codice);
			logger.debug(statement);
			ResultSet result = statement.executeQuery();
			if (result.next()) {
				tipoEsame = new TipoEsame();
				tipoEsame.setCodice(result.getString("codice"));				
				tipoEsame.setNome(result.getString("nome"));
				tipoEsame.setDescrizione(result.getString("descrizione"));
				tipoEsame.setCosto(result.getInt("costo"));
				tipoEsame.setPrerequisiti(result.getString("nomePrerequisiti"),result.getString("nomePrerequisiti"));
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
		return tipoEsame;
	}

	public List<TipoEsame> findAll() {
		Connection connection = this.dataSource.getConnection();
		List<TipoEsame> tipoEsami = new LinkedList<>();
		try {
			TipoEsame tipoEsame;
			PreparedStatement statement;
			String query = "select * from tipoEsame";
			statement = connection.prepareStatement(query);
			logger.debug(statement);
			ResultSet result = statement.executeQuery();
			while (result.next()) {
				tipoEsame = new TipoEsame();
				tipoEsame.setCodice(result.getString("codice"));				
				tipoEsame.setNome(result.getString("nome"));
				tipoEsame.setDescrizione(result.getString("descrizione"));
				tipoEsame.setCosto(result.getInt("costo"));
				tipoEsame.setPrerequisiti(result.getString("nomePrerequisiti"),result.getString("descrizionePrerequisiti"));
				tipoEsami.add(tipoEsame);
			}
		} catch (SQLException e) {
			logger.error(e);
			throw new PersistenceException(e.getMessage());
		}	 finally {
			try {
				connection.close();
			} catch (SQLException e) {
				logger.error(e);
				throw new PersistenceException(e.getMessage());
			}
		}
		return tipoEsami;
	}

	public void update(TipoEsame tipoEsame) {
		Connection connection = this.dataSource.getConnection();
		try {
			String update = "update tipoEsame SET nome = ?, descrizione = ?, costo = ?, prerequisiti = ? WHERE codice=?";
			PreparedStatement statement = connection.prepareStatement(update);
			statement.setString(1, tipoEsame.getCodice());
			statement.setString(2, tipoEsame.getNome());
			statement.setString(3, tipoEsame.getDescrizione());
			statement.setInt(4, tipoEsame.getCosto());
			statement.setString(5, tipoEsame.getPrerequisiti());
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

	public void delete(TipoEsame tipoEsame) {
		Connection connection = this.dataSource.getConnection();
		try {
			String delete = "delete FROM tipoEsame WHERE codice = ? ";
			PreparedStatement statement = connection.prepareStatement(delete);
			statement.setString(1, tipoEsame.getCodice());
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

	public String primaryKey(String cod) {
		Connection connection = this.dataSource.getConnection();
		String codice = null;
		try {
			PreparedStatement statement;
			String query = "select codice from tipoEsame where codice = ?";
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
	
	public String nomeTipoEsame(String codice) {
		Connection connection = this.dataSource.getConnection();
		String nomeTipoEsame = null;
		try {
			PreparedStatement statement;
			String query = "select nome from tipoesame where codice = ?";
			statement = connection.prepareStatement(query);
			statement.setString(1, codice);
			logger.debug(statement);
			ResultSet result = statement.executeQuery();
			while (result.next()) {
				nomeTipoEsame = result.getString("nome");
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
		return nomeTipoEsame;
	}
}