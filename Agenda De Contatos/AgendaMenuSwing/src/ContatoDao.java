import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ContatoDao {
    private Connection con;

    public ContatoDao() {
        this.con = Conexao.conectar(); // Certifique-se de que a classe Conexao está configurada
    }

    public int inserir(Contato contato) {
        String sql = "INSERT INTO contatos (nome, email, telefone, endereco, estado_civil, sexo) VALUES (?, ?, ?, ?, ?, ?)";
        try (PreparedStatement cmd = con.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS)) {
            cmd.setString(1, contato.getNome());
            cmd.setString(2, contato.getEmail());
            cmd.setString(3, contato.getTelefone());
            cmd.setString(4, contato.getEndereco());
            cmd.setString(5, contato.getEstadoCivil());
            cmd.setString(6, contato.getSexo());

            if (cmd.executeUpdate() > 0) {
                ResultSet rs = cmd.getGeneratedKeys();
                return rs.next() ? rs.getInt(1) : -1;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return -1;
    }

    // Adicione os métodos para listar, atualizar e remover contatos
    // ...
}
