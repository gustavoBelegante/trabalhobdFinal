using Microsoft.Data.SqlClient;

namespace EstoqueEcommerce
{
    public class ConexaoBanco
    {
        private readonly string connectionString =
            "Server=localhost;Database=EstoqueEcommerce;" +
            "Integrated Security=True;TrustServerCertificate=True;";

        public SqlConnection ObterConexao()
        {
            return new SqlConnection(connectionString);
        }
    }
}
