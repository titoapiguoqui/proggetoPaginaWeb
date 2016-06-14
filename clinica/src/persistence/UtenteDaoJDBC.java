package persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

import org.apache.log4j.Logger;

import model.Utente;
import persistence.DataSource;
import persistence.PersistenceException;
import persistence.UtenteDaoJDBC;

public class UtenteDaoJDBC implements UtenteDao {
	final static Logger logger = Logger.getLogger(UtenteDaoJDBC.class);
	private DataSource dataSource;

	public UtenteDaoJDBC() {
		this.dataSource = new DataSource();
	}

	public void save(Utente utente) {
		Connection connection = this.dataSource.getConnection();
		try {
			String insert = "insert into utente(id, nomeUtente, pass, ruolo) values (?,?,?,?)";
			PreparedStatement statement = connection.prepareStatement(insert);
			statement.setLong(1, utente.getId());
			statement.setString(2, utente.getNomeUtente());
			statement.setString(3, utente.getPass());
			statement.setString(4, utente.getRuolo());
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

	public Utente findByPrimaryKey(String nomeUtente, String pass) {
		Connection connection = this.dataSource.getConnection();
		Utente utente = null;
		try {
			PreparedStatement statement;
			String query = "select * from utente where nomeUtente = ? and pass = ?";
			statement = connection.prepareStatement(query);
			statement.setString(1, nomeUtente);
			statement.setString(2, pass);
			logger.debug(statement);
			ResultSet result = statement.executeQuery();
			if (result.next()) {
				utente = new Utente();
				utente.setId(result.getLong("id"));				
				utente.setNomeUtente(result.getString("nomeUtente"));
				utente.setPass(result.getString("pass"));
				utente.setRuolo(result.getString("ruolo"));
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
		return utente;
	}

	public List<Utente> findAll() {
		Connection connection = this.dataSource.getConnection();
		List<Utente> utenti = new LinkedList<>();
		try {
			Utente utente;
			PreparedStatement statement;
			String query = "select * from utente";
			statement = connection.prepareStatement(query);
			logger.debug(statement);
			ResultSet result = statement.executeQuery();
			while (result.next()) {
				utente = new Utente();
				utente.setId(result.getLong("id"));				
				utente.setNomeUtente(result.getString("nomeUtente"));
				utente.setPass(result.getString("pass"));
				utente.setRuolo(result.getString("ruolo"));
				utenti.add(utente);
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
		return utenti;
	}

	public void update(Utente utente) {
		Connection connection = this.dataSource.getConnection();
		try {
			String update = "update utente SET ruolo = ? WHERE nomeUtente = ? and pass = ?";
			PreparedStatement statement = connection.prepareStatement(update);
			statement.setLong(1, utente.getId());
			statement.setString(2, utente.getNomeUtente());
			statement.setString(3, utente.getPass());
			statement.setString(5, utente.getRuolo());
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

	public void delete(Utente utente) {
		Connection connection = this.dataSource.getConnection();
		try {
			String delete = "delete FROM utente WHERE nomeUtente = ? and pass = ?";
			PreparedStatement statement = connection.prepareStatement(delete);
			statement.setString(1, utente.getNomeUtente());
			statement.setString(2, utente.getPass());
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

	public String primaryKey(String un, String p) {
		Connection connection = this.dataSource.getConnection();
		String nomeUtente, pass, tutto = null;
		try {
			PreparedStatement statement;
			String query = "select nome, cognome from medico where nome = ? and cognome = ?";
			statement = connection.prepareStatement(query);
			statement.setString(1, un);
			statement.setString(2, p);
			logger.debug(statement);
			ResultSet result = statement.executeQuery();
			while (result.next()) {
				nomeUtente = result.getString("nomeUtente");
				pass = result.getString("cognome");
				tutto = nomeUtente + " " + pass;
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
		return tutto;
	}
	
	public String nomeUtente(String nomeUtente, String pass) {
		Connection connection = this.dataSource.getConnection();
		String nome = null;
		try {
			PreparedStatement statement;
			String query = "select nomeUtente from utente where nomeUtente = ? and pass = ?";
			statement = connection.prepareStatement(query);
			statement.setString(1, nomeUtente);
			statement.setString(2, pass);
			logger.debug(statement);
			ResultSet result = statement.executeQuery();
			while (result.next()) {
				nome = result.getString("nomeUtente");
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
		return nome;
	}
	
	public String pass(String nomeUtente, String pass) {
		Connection connection = this.dataSource.getConnection();
		String p = null;
		try {
			PreparedStatement statement;
			String query = "select pass from utente where nomeUtente = ? and pass = ?";
			statement = connection.prepareStatement(query);
			statement.setString(1, nomeUtente);
			statement.setString(2, pass);
			logger.debug(statement);
			ResultSet result = statement.executeQuery();
			while (result.next()) {
				p = result.getString("pass");
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
		return p;
	}
	
	public String ruolo(String nomeUtente, String pass) {
		Connection connection = this.dataSource.getConnection();
		String ruolo = null;
		try {
			PreparedStatement statement;
			String query = "select ruolo from utente where nomeUtente = ? and pass = ?";
			statement = connection.prepareStatement(query);
			statement.setString(1, nomeUtente);
			statement.setString(2, pass);
			logger.debug(statement);
			ResultSet result = statement.executeQuery();
			while (result.next()) {
				ruolo = result.getString("ruolo");
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
		return ruolo;
	}
}