using Microsoft.Data.SqlClient;

namespace EstoqueEcommerce
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            CarregarCategorias();
        }


        private void CarregarCategorias()
        {
            try
            {
                ConexaoBanco banco = new ConexaoBanco();

                using (var conexao = banco.ObterConexao())
                {
                    conexao.Open();

                    string sql = "SELECT id_categoria, nome FROM CATEGORIA ORDER BY nome";

                    using (var comando = new SqlCommand(sql, conexao))
                    using (var leitor = comando.ExecuteReader())
                    {
                        var categorias = new System.Data.DataTable();
                        categorias.Load(leitor);

                        cmbCategoria.DisplayMember = "nome";
                        cmbCategoria.ValueMember = "id_categoria";
                        cmbCategoria.DataSource = categorias;
                        cmbCategoria.SelectedIndex = -1;
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Erro ao carregar categorias: " + ex.Message);
            }
        }


        private void button1_Click(object sender, EventArgs e)
        {

            try
            {
                ConexaoBanco banco = new ConexaoBanco();

                using (var conexao = banco.ObterConexao())
                {
                    conexao.Open();

                    MessageBox.Show(
                        "Conexão com o banco realizada com sucesso!");
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(
                    "Erro ao conectar: " + ex.Message);
            }

        }

        private void tabProdutos_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void label4_Click(object sender, EventArgs e)
        {

        }

        private void txtIdProduto_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
