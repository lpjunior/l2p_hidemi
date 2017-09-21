package persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import model.Telefone;

public class TelefoneDAO extends ConnectionDAO {

	private Connection conn;

	public TelefoneDAO() {
		try {
			conn = getConnection();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void save(Telefone t) throws SQLException {
		PreparedStatement stmt = null;
		
		try {
			if(t.getId() == null) {
				stmt = conn.prepareStatement("insert into telefone (numero, id_cliente) values (?, ?)");
			} else {
				stmt = conn.prepareStatement("update telefone set numero = ? where id_cliente = ?");
			}
			
			stmt.setString(1, t.getNumero());
			stmt.setLong(2, t.getCliente().getId());
			
			int count = stmt.executeUpdate();
			
			if(count == 0)
				throw new SQLException("Erro ao inserir o telefone");
			
		} finally {
			if(stmt != null)
				stmt.close();
			if(conn != null)
				conn.close();
		}
	}
	
	@SuppressWarnings("unused")
	private static Long getGenerateId(Statement stmt) throws SQLException {
		ResultSet rs = stmt.getGeneratedKeys();
		if (rs.next()) {
			return rs.getLong(1);
		}
		return 0L;
	}
}
