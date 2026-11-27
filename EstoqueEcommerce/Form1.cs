using Microsoft.Data.SqlClient;

namespace EstoqueEcommerce
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            CarregarCategorias();
            CarregarMarcas();
            CarregarProdutos();
            LimparCampos();
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

        private void CarregarMarcas()
        {
            try
            {
                ConexaoBanco banco = new ConexaoBanco();

                using (var conexao = banco.ObterConexao())
                {
                    conexao.Open();

                    string sql = "SELECT id_marca, nome FROM dbo.MARCA ORDER BY nome";

                    using (var comando = new SqlCommand(sql, conexao))
                    using (var leitor = comando.ExecuteReader())
                    {
                        var marcas = new System.Data.DataTable();
                        marcas.Load(leitor);

                        cmbMarca.DisplayMember = "nome";
                        cmbMarca.ValueMember = "id_marca";
                        cmbMarca.DataSource = marcas;
                        cmbMarca.SelectedIndex = -1;
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Erro ao carregar marcas: " + ex.Message);
            }
        }

        private void CarregarProdutos()
        {
            try
            {
                ConexaoBanco banco = new ConexaoBanco();

                using (var conexao = banco.ObterConexao())
                {
                    conexao.Open();

                    string sql = "SELECT * FROM dbo.PRODUTO";

                    using (var comando = new SqlCommand(sql, conexao))
                    using (var leitor = comando.ExecuteReader())
                    {
                        var produtos = new System.Data.DataTable();
                        produtos.Load(leitor);

                        dgvProdutos.DataSource = produtos;
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Erro ao carregar produtos: " + ex.Message);
            }
        }

        private void dgvProdutos_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex >= 0)
            {
                DataGridViewRow linha = dgvProdutos.Rows[e.RowIndex];

                txtIdProduto.Text = Convert.ToString(linha.Cells["id_produto"].Value) ?? "";

                txtNomeProduto.Text = Convert.ToString(linha.Cells["nome"].Value) ?? "";

                txtPrecoVenda.Text = Convert.ToString(linha.Cells["preco_venda"].Value) ?? "";

                cmbCategoria.SelectedValue = linha.Cells["id_categoria"].Value;

                cmbMarca.SelectedValue = linha.Cells["id_marca"].Value;

                txtDescricao.Text = Convert.ToString(linha.Cells["descricao"].Value) ?? "";

                txtComposicaoTecido.Text = Convert.ToString(linha.Cells["composicao_tecido"].Value) ?? "";

                chkAtivo.Checked = linha.Cells["ativo"].Value is bool ativo && ativo;
            }
        }

        private void LimparCampos()
        {
            txtIdProduto.Clear();
            txtNomeProduto.Clear();
            txtPrecoVenda.Clear();
            txtDescricao.Clear();
            txtComposicaoTecido.Clear();

            cmbCategoria.SelectedIndex = -1;
            cmbMarca.SelectedIndex = -1;

            chkAtivo.Checked = true;

            dgvProdutos.ClearSelection();

            txtNomeProduto.Focus();
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

        private void btnLimpar_Click(object sender, EventArgs e)
        {
            LimparCampos();
        }

        private void btnCadastrar_Click_Click(object sender, EventArgs e)
        {
        
            if (string.IsNullOrWhiteSpace(txtNomeProduto.Text))
            {
                MessageBox.Show("Informe o nome do produto.");
                return;
            }

            if (!decimal.TryParse(txtPrecoVenda.Text, out decimal preco) || preco <= 0)
            {
                MessageBox.Show("Informe um preço de venda válido.");
                return;
            }

            if (cmbCategoria.SelectedIndex == -1)
            {
                MessageBox.Show("Selecione uma categoria.");
                return;
            }

            if (cmbMarca.SelectedIndex == -1)
            {
                MessageBox.Show("Selecione uma marca.");
                return;
            }

            try
            {
                ConexaoBanco banco = new ConexaoBanco();

                using (var conexao = banco.ObterConexao())
                {
                    conexao.Open();

                    string sql = @"INSERT INTO dbo.PRODUTO
                          (id_categoria, id_marca, nome, descricao,
                           composicao_tecido, preco_venda, ativo)
                          VALUES
                          (@categoria, @marca, @nome, @descricao,
                           @composicao, @preco, @ativo)";

                    using (var comando = new SqlCommand(sql, conexao))
                    {
                        comando.Parameters.AddWithValue("@categoria", cmbCategoria.SelectedValue);
                        comando.Parameters.AddWithValue("@marca", cmbMarca.SelectedValue);
                        comando.Parameters.AddWithValue("@nome", txtNomeProduto.Text.Trim());
                        comando.Parameters.AddWithValue("@descricao", txtDescricao.Text.Trim());
                        comando.Parameters.AddWithValue("@composicao", txtComposicaoTecido.Text.Trim());
                        comando.Parameters.AddWithValue("@preco", preco);
                        comando.Parameters.AddWithValue("@ativo", chkAtivo.Checked);

                        comando.ExecuteNonQuery();
                    }
                }

                MessageBox.Show("Produto cadastrado com sucesso!");

                CarregarProdutos();
                LimparCampos();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Erro ao cadastrar produto: " + ex.Message);
            }
        }

    }
    }

