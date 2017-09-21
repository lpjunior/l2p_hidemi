package persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import model.Endereco;

public class EnderecoDAO extends ConnectionDAO {

	private Connection conn;

	public EnderecoDAO() {
		try {
			conn = getConnection();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void save(Endereco e) throws SQLException {

		PreparedStatement stmt = null;
		try {
			if (e.getId() == null) {
				stmt = conn.prepareStatement(
						"insert into endereco (logradouro, numero, bairro, cidade, id_cliente) values (?, ?, ?, ?, ?)");
			} else {
				stmt = conn.prepareStatement(
						"update endereco set logradouro = ?, numero = ?, bairro = ?, cidade = ? where id_cliente = ?");
			}

			stmt.setString(1, e.getLogradouro());
			stmt.setInt(2, e.getNumero());
			stmt.setString(3, e.getBairro());
			stmt.setString(4, e.getCidade());
			stmt.setLong(5, e.getCliente().getId());

			int count = stmt.executeUpdate();

			if (count == 0)
				throw new SQLException("Erro ao salvar o endereço");

		} finally {
			if (stmt != null)
				stmt.close();
			if (conn != null)
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
