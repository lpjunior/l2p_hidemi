package persistence;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public abstract class ConnectionDAO {

	protected ConnectionDAO() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	protected Connection getConnection() throws SQLException {
		String url = "jdbc:mysql:/localhost/hidemi?createDatabaseIfNotExist=true";
		return DriverManager.getConnection(url, "root", "");
	}
}
