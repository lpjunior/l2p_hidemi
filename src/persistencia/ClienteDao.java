package persistencia;


import entidade.Cliente;
import entidade.Endereco;

public class ClienteDao extends Dao{
	
	
	public void Save(Endereco e) throws Exception{
		abrirConexao();
		if(e.getIdEndereco() == null){
			stmt = con.prepareStatement("insert into endereco (logradouro,numero,complemento,bairro,cidade) values(?,?,?,?,?)",stmt.RETURN_GENERATED_KEYS);			
		}else{
			stmt = con.prepareStatement("update endereco set logradouro= ?, numero = ?,  bairro = ?,cidade = ? where idCliente = ?");
		}
		stmt.setString(1, e.getLogradouro());
		stmt.setString(2, e.getNumero());
		
		stmt.setString(3, e.getBairro());
		stmt.setString(4, e.getCidade());
		
		if(e.getIdEndereco()!=null) {
			stmt.setLong(6, e.getIdEndereco());
		}
		stmt.execute();
		stmt.close();
		fecharConexao();
	}
	
	
	public void save(Cliente c) throws Exception{
		abrirConexao();
		if(c.getIdUsuario() == null) {
			stmt = con.prepareStatement("insert into cliente (nome, email, cep) values(?,?,?,?,?)",stmt.RETURN_GENERATED_KEYS);
		}else {
			stmt = con.prepareStatement("update cliente set nome= ?, email = ?, cep = ?, where idCliente = ?");
		}
		stmt.setString(1, c.getNome());
		stmt.setString(2, c.getEmail());
		stmt.setString(3, c.getCep());
		
		if(c.getIdUsuario()!= null) {
			stmt.setLong(4, c.getIdUsuario());
		}
		stmt.execute();
		stmt.close();
		fecharConexao();
	}
	

	
	
	
	
	
}
