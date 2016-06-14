package persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
//import java.text.DateFormat;
//import java.text.SimpleDateFormat;
import java.util.LinkedList;
import java.util.List;

import org.apache.log4j.Logger;

import model.Paziente;
import persistence.DataSource;
import persistence.PersistenceException;
import persistence.PazienteDaoJDBC;

public class PazienteDaoJDBC implements PazienteDao {
	final static Logger logger = Logger.getLogger(PazienteDaoJDBC.class);
	private DataSource dataSource;

	public PazienteDaoJDBC() {
		this.dataSource = new DataSource();
	}

	public void save(Paziente paziente) {
		Connection connection = this.dataSource.getConnection();
		try {
			String insert = "insert into paziente(id, nome, cognome, dataNascita, gruppoSang, email) values (?,?,?,?,?,?)";
			PreparedStatement statement = connection.prepareStatement(insert);
			statement.setLong(1, paziente.getId());
			statement.setString(2, paziente.getNome());
			statement.setString(3, paziente.getCognome());
			long secs = paziente.getDataNascita().getTime();
			statement.setDate(4, new java.sql.Date(secs));
//			statement.setString(4, paziente.getDataNascita());
			statement.setString(5, paziente.getGruppoSang());
			statement.setString(6, paziente.getEmail());
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

	public Paziente findByPrimaryKey(String id) {
		Connection connection = this.dataSource.getConnection();
		Paziente paziente = null;
		try {
			PreparedStatement statement;
			String query = "select * from paziente where id = ?";
			statement = connection.prepareStatement(query);
			statement.setString(1, id);
			logger.debug(statement);
			ResultSet result = statement.executeQuery();
			if (result.next()) {
				paziente = new Paziente();
				paziente.setId(result.getLong("id"));				
				paziente.setNome(result.getString("nome"));
				paziente.setCognome(result.getString("cognome"));
				long secs = result.getDate("dataNascita").getTime();
				paziente.setDataNascita(new java.sql.Date(secs));
//				paziente.setDataNascita(result.getString("dataNascita"));
				paziente.setGruppoSang(result.getString("gruppoSang"));
				paziente.setEmail(result.getString("email"));
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
		return paziente;
	}

	public List<Paziente> findAll() {
		Connection connection = this.dataSource.getConnection();
		List<Paziente> pazienti = new LinkedList<>();
		try {
			Paziente paziente;
			PreparedStatement statement;
			String query = "select * from paziente";
			statement = connection.prepareStatement(query);
			logger.debug(statement);
			ResultSet result = statement.executeQuery();
			while (result.next()) {
				paziente = new Paziente();
				paziente.setId(result.getLong("id"));				
				paziente.setNome(result.getString("nome"));
				paziente.setCognome(result.getString("cognome"));
				long secs = result.getDate("datanascita").getTime();
				paziente.setDataNascita(new java.sql.Date(secs));
//				paziente.setDataNascita(result.getString("dataNascita"));
				paziente.setGruppoSang(result.getString("gruppoSang"));
				paziente.setEmail(result.getString("email"));
				pazienti.add(paziente);
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
		return pazienti;
	}

	public void update(Paziente paziente) {
		Connection connection = this.dataSource.getConnection();
		try {
			String update = "update paziente SET nome = ?, cognome = ?, dataNascita = ?, gruppoSang = ?, email = ? WHERE id=?";
			PreparedStatement statement = connection.prepareStatement(update);
			statement.setLong(1, paziente.getId());
			statement.setString(2, paziente.getNome());
			statement.setString(3, paziente.getCognome());
			long secs = paziente.getDataNascita().getTime();
			statement.setDate(4, new java.sql.Date(secs));
//			statement.setString(4, paziente.getDataNascita());
			statement.setString(5, paziente.getGruppoSang());
			statement.setString(6, paziente.getEmail());
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

	public void delete(Paziente paziente) {
		Connection connection = this.dataSource.getConnection();
		try {
			String delete = "delete FROM paziente WHERE id = ? ";
			PreparedStatement statement = connection.prepareStatement(delete);
			statement.setLong(1, paziente.getId());
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

	public String primaryKey(String id) {
		Connection connection = this.dataSource.getConnection();
		String idp = null;
		try {
			PreparedStatement statement;
			String query = "select id from paziente where id = ?";
			statement = connection.prepareStatement(query);
			statement.setString(1, id);
			logger.debug(statement);
			ResultSet result = statement.executeQuery();
			while (result.next()) {
				idp = result.getString("id");				
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
		return idp;
	}
	
	public String nomePaziente(String id) {
		Connection connection = this.dataSource.getConnection();
		String nome, cognome, completo = null;
		try {
			PreparedStatement statement;
			String query = "select nome, cognome from paziente where id = ?";
			statement = connection.prepareStatement(query);
			statement.setString(1, id);
			logger.debug(statement);
			ResultSet result = statement.executeQuery();
			while (result.next()) {
				nome = result.getString("nome");
				cognome = result.getString("cognome");
				completo = nome + " " + cognome;
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
		return completo;
	}
}