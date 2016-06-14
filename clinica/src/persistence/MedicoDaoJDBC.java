package persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

import org.apache.log4j.Logger;

import model.Medico;
import persistence.DataSource;
import persistence.PersistenceException;
import persistence.MedicoDaoJDBC;

public class MedicoDaoJDBC implements MedicoDao {
	final static Logger logger = Logger.getLogger(MedicoDaoJDBC.class);
	private DataSource dataSource;

	public MedicoDaoJDBC() {
		this.dataSource = new DataSource();
	}

	public void save(Medico medico) {
		Connection connection = this.dataSource.getConnection();
		try {
			String insert = "insert into medico(nome, cognome, specializzazione) values (?,?,?)";
			PreparedStatement statement = connection.prepareStatement(insert);
			statement.setString(1, medico.getNome());
			statement.setString(2, medico.getCognome());
			statement.setString(3, medico.getSpecializzazione());
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

	public Medico findByPrimaryKey(String nome, String cognome) {
		Connection connection = this.dataSource.getConnection();
		Medico medico = null;
		try {
			PreparedStatement statement;
			String query = "select * from medico where nome = ? and cognome = ?";
			statement = connection.prepareStatement(query);
			statement.setString(1, nome);
			statement.setString(2, cognome);
			logger.debug(statement);
			ResultSet result = statement.executeQuery();
			if (result.next()) {
				medico = new Medico();
				medico.setNome(result.getString("nome"));
				medico.setCognome(result.getString("cognome"));
				medico.setSpecializzazione(result.getString("specializzazione"));
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
		return medico;
	}

	public List<Medico> findAll() {
		Connection connection = this.dataSource.getConnection();
		List<Medico> medici = new LinkedList<>();
		try {
			Medico medico;
			PreparedStatement statement;
			String query = "select * from medico";
			statement = connection.prepareStatement(query);
			logger.debug(statement);
			ResultSet result = statement.executeQuery();
			while (result.next()) {
				medico = new Medico();
				medico.setNome(result.getString("nome"));
				medico.setCognome(result.getString("cognome"));
				medico.setSpecializzazione(result.getString("specializzazione"));
				medici.add(medico);
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
		return medici;
	}

	public void update(Medico medico) {
		Connection connection = this.dataSource.getConnection();
		try {
			String update = "update medico SET specializzazione = ? WHERE nome=? and cognome=?";
			PreparedStatement statement = connection.prepareStatement(update);
			statement.setString(1, medico.getNome());
			statement.setString(2, medico.getCognome());
			statement.setString(3, medico.getSpecializzazione());
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

	public void delete(Medico medico) {
		Connection connection = this.dataSource.getConnection();
		try {
			String delete = "delete FROM medico WHERE nome = ? and cognome = ? ";
			PreparedStatement statement = connection.prepareStatement(delete);
			statement.setString(1, medico.getNome());
			statement.setString(2, medico.getCognome());
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
	
	public String primaryKey(String n, String cogn) {
		Connection connection = this.dataSource.getConnection();
		String nome, cognome, completo = null;
		try {
			PreparedStatement statement;
			String query = "select nome, cognome from medico where nome = ? and cognome = ?";
			statement = connection.prepareStatement(query);
			statement.setString(1, n);
			statement.setString(2, cogn);
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