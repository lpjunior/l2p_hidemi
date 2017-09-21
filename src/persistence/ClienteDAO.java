package persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import model.Cliente;
import model.Telefone;

public class ClienteDAO extends ConnectionDAO {

	private Connection conn;

	public ClienteDAO() {
		try {
			conn = getConnection();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void save(Cliente c) throws SQLException {

		PreparedStatement stmt = null;

		if (c.getId() == null) {
			stmt = conn.prepareStatement("insert into cliente (nome, email) values (?, ?)",
					Statement.RETURN_GENERATED_KEYS);
		} else {
			stmt = conn.prepareStatement("update cliente set nome = ?, email = ?) where id = ?");
		}

		stmt.setString(1, c.getNome());
		stmt.setString(2, c.getEmail());

		if (c.getId() != null) {
			stmt.setLong(3, c.getId());
		}

		int count = stmt.executeUpdate();

		if (count == 0)
			throw new SQLException("Erro ao salvar o cliente");

		if(c.getId() == null) {
			c.setId(getGenerateId(stmt));
		}
		
		new EnderecoDAO().save(c.getEndereco());
		for (Telefone tel : c.getTelefones()) {
			new TelefoneDAO().save(tel);			
		}
	}

	private static Long getGenerateId(Statement stmt) throws SQLException {
		ResultSet rs = stmt.getGeneratedKeys();
		if (rs.next()) {
			return rs.getLong(1);
		}
		return 0L;
	}
}
