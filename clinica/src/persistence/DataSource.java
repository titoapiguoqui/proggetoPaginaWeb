package persistence;

import java.sql.Connection;
//import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.SQLException;

import org.apache.log4j.Logger;

import persistence.DataSource;
import persistence.PersistenceException;

public class DataSource {
	final static Logger logger = Logger.getLogger(DataSource.class);

	private String dbURI = "jdbc:postgresql://localhost/clinicarm";
	private String userName = "postgres";
	private String password = "postgres";

	public Connection getConnection() throws PersistenceException {
		Connection connection = null;
		try {
		    Class.forName("org.postgresql.Driver");
		    connection = DriverManager.getConnection(dbURI,userName, password);
			logger.debug(connection);
		} catch (ClassNotFoundException e) {
			logger.error(e);
			throw new PersistenceException(e.getMessage());
		} catch(SQLException e) {
			logger.error(e);
			throw new PersistenceException(e.getMessage());
		}
		return connection;
	}
}

//DatabaseMetaData dbMetaData = connection.getMetaData();
//if (dbMetaData.supportsTransactions())
//	System.out.println("tranzazioni supportate");
//if (dbMetaData.supportsTransactionIsolationLevel(Connection.TRANSACTION_READ_UNCOMMITTED))
//	System.out.println("TRANSACTION_READ_UNCOMMITTED");
//if (dbMetaData.supportsTransactionIsolationLevel(Connection.TRANSACTION_READ_COMMITTED))
//	System.out.println("TRANSACTION_READ_COMMITTED");
//if (dbMetaData.supportsTransactionIsolationLevel(Connection.TRANSACTION_REPEATABLE_READ))
//	System.out.println("TRANSACTION_REPEATABLE_READ");
//if (dbMetaData.supportsTransactionIsolationLevel(Connection.TRANSACTION_SERIALIZABLE))
//	System.out.println("TRANSACTION_SERIALIZABLE");