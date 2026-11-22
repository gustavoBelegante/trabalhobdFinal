namespace EstoqueEcommerce
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
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
    }
}
