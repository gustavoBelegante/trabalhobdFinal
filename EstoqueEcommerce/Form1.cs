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

        private void btnAtualizar_Click(object sender, EventArgs e)
        {
            if (!int.TryParse(txtIdProduto.Text, out int id))
            {
                MessageBox.Show("Selecione um produto para atualizar.");
                return;
            }

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

            if (cmbCategoria.SelectedValue == null)
            {
                MessageBox.Show("Selecione uma categoria.");
                return;
            }

            if (cmbMarca.SelectedValue == null)
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

                    string sql = @"UPDATE dbo.PRODUTO
                          SET id_categoria = @categoria,
                              id_marca = @marca,
                              nome = @nome,
                              descricao = @descricao,
                              composicao_tecido = @composicao,
                              preco_venda = @preco,
                              ativo = @ativo
                          WHERE id_produto = @id";

                    using (var comando = new SqlCommand(sql, conexao))
                    {
                        comando.Parameters.AddWithValue("@id", id);
                        comando.Parameters.AddWithValue("@categoria", cmbCategoria.SelectedValue);
                        comando.Parameters.AddWithValue("@marca", cmbMarca.SelectedValue);
                        comando.Parameters.AddWithValue("@nome", txtNomeProduto.Text.Trim());
                        comando.Parameters.AddWithValue("@descricao", txtDescricao.Text.Trim());
                        comando.Parameters.AddWithValue("@composicao", txtComposicaoTecido.Text.Trim());
                        comando.Parameters.AddWithValue("@preco", preco);
                        comando.Parameters.AddWithValue("@ativo", chkAtivo.Checked);

                        int linhasAfetadas = comando.ExecuteNonQuery();

                        if (linhasAfetadas == 0)
                        {
                            MessageBox.Show("Produto não encontrado.");
                            return;
                        }
                    }
                }

                MessageBox.Show("Produto atualizado com sucesso!");

                CarregarProdutos();
                LimparCampos();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Erro ao atualizar produto: " + ex.Message);
            }
        }

        private void btnExcluir_Click(object sender, EventArgs e)
        {
            if (!int.TryParse(txtIdProduto.Text, out int id))
            {
                MessageBox.Show("Selecione um produto para excluir.");
                return;
            }

            DialogResult resposta = MessageBox.Show(
                "Deseja realmente excluir o produto " + txtNomeProduto.Text + "?",
                "Confirmar exclusão",
                MessageBoxButtons.YesNo,
                MessageBoxIcon.Warning
            );

            if (resposta != DialogResult.Yes)
            {
                return;
            }

            try
            {
                ConexaoBanco banco = new ConexaoBanco();

                using (var conexao = banco.ObterConexao())
                {
                    conexao.Open();

                    string sql = @"DELETE FROM dbo.PRODUTO
                          WHERE id_produto = @id";

                    using (var comando = new SqlCommand(sql, conexao))
                    {
                        comando.Parameters.AddWithValue("@id", id);

                        int linhasAfetadas = comando.ExecuteNonQuery();

                        if (linhasAfetadas == 0)
                        {
                            MessageBox.Show("Produto não encontrado.");
                            return;
                        }
                    }
                }

                MessageBox.Show("Produto excluído com sucesso!");

                CarregarProdutos();
                LimparCampos();
            }
            catch (SqlException ex) when (ex.Number == 547)
            {
                MessageBox.Show(
                    "Não é possível excluir este produto, pois ele possui registros vinculados."
                );
            }
            catch (Exception ex)
            {
                MessageBox.Show("Erro ao excluir produto: " + ex.Message);
            }
        }
    }
}

