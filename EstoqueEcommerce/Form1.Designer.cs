namespace EstoqueEcommerce
{
    partial class Form1
    {
        /// <summary>
        ///  Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///  Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        ///  Required method for Designer support - do not modify
        ///  the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            button1 = new Button();
            tabPage1 = new TabPage();
            dgvProdutos = new DataGridView();
            btnExcluir = new Button();
            btnAtualizar = new Button();
            btnCadastrar = new Button();
            txtIdProduto = new TextBox();
            label7 = new Label();
            chkAtivo = new CheckBox();
            txtComposicaoTecido = new TextBox();
            label6 = new Label();
            txtDescricao = new TextBox();
            label5 = new Label();
            cmbMarca = new ComboBox();
            label4 = new Label();
            cmbCategoria = new ComboBox();
            label3 = new Label();
            txtPrecoVenda = new TextBox();
            label2 = new Label();
            txtNomeProduto = new TextBox();
            label1 = new Label();
            tabProdutos = new TabControl();
            tabPage1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)dgvProdutos).BeginInit();
            tabProdutos.SuspendLayout();
            SuspendLayout();
            // 
            // button1
            // 
            button1.Location = new Point(472, 173);
            button1.Name = "button1";
            button1.Size = new Size(182, 29);
            button1.TabIndex = 0;
            button1.Text = "Testar conexão";
            button1.UseVisualStyleBackColor = true;
            button1.Click += button1_Click;
            // 
            // tabPage1
            // 
            tabPage1.Controls.Add(dgvProdutos);
            tabPage1.Controls.Add(btnExcluir);
            tabPage1.Controls.Add(btnAtualizar);
            tabPage1.Controls.Add(btnCadastrar);
            tabPage1.Controls.Add(txtIdProduto);
            tabPage1.Controls.Add(label7);
            tabPage1.Controls.Add(chkAtivo);
            tabPage1.Controls.Add(txtComposicaoTecido);
            tabPage1.Controls.Add(label6);
            tabPage1.Controls.Add(txtDescricao);
            tabPage1.Controls.Add(label5);
            tabPage1.Controls.Add(cmbMarca);
            tabPage1.Controls.Add(label4);
            tabPage1.Controls.Add(cmbCategoria);
            tabPage1.Controls.Add(label3);
            tabPage1.Controls.Add(txtPrecoVenda);
            tabPage1.Controls.Add(label2);
            tabPage1.Controls.Add(txtNomeProduto);
            tabPage1.Controls.Add(label1);
            tabPage1.Location = new Point(4, 29);
            tabPage1.Name = "tabPage1";
            tabPage1.Padding = new Padding(3);
            tabPage1.Size = new Size(1074, 670);
            tabPage1.TabIndex = 0;
            tabPage1.Text = "Produtos";
            tabPage1.UseVisualStyleBackColor = true;
            // 
            // dgvProdutos
            // 
            dgvProdutos.BackgroundColor = Color.White;
            dgvProdutos.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dgvProdutos.Location = new Point(9, 379);
            dgvProdutos.MultiSelect = false;
            dgvProdutos.Name = "dgvProdutos";
            dgvProdutos.RowHeadersWidth = 51;
            dgvProdutos.SelectionMode = DataGridViewSelectionMode.FullColumnSelect;
            dgvProdutos.Size = new Size(950, 250);
            dgvProdutos.TabIndex = 18;
            // 
            // btnExcluir
            // 
            btnExcluir.Location = new Point(325, 312);
            btnExcluir.Name = "btnExcluir";
            btnExcluir.Size = new Size(150, 35);
            btnExcluir.TabIndex = 17;
            btnExcluir.Text = "Excluir";
            btnExcluir.UseVisualStyleBackColor = true;
            // 
            // btnAtualizar
            // 
            btnAtualizar.Location = new Point(165, 312);
            btnAtualizar.Name = "btnAtualizar";
            btnAtualizar.Size = new Size(150, 35);
            btnAtualizar.TabIndex = 16;
            btnAtualizar.Text = "Atualizar";
            btnAtualizar.UseVisualStyleBackColor = true;
            // 
            // btnCadastrar
            // 
            btnCadastrar.Location = new Point(9, 312);
            btnCadastrar.Name = "btnCadastrar";
            btnCadastrar.Size = new Size(150, 35);
            btnCadastrar.TabIndex = 15;
            btnCadastrar.Text = "Cadastrar";
            btnCadastrar.UseVisualStyleBackColor = true;
            // 
            // txtIdProduto
            // 
            txtIdProduto.Location = new Point(257, 258);
            txtIdProduto.Name = "txtIdProduto";
            txtIdProduto.ReadOnly = true;
            txtIdProduto.Size = new Size(193, 27);
            txtIdProduto.TabIndex = 14;
            txtIdProduto.TextChanged += txtIdProduto_TextChanged;
            // 
            // label7
            // 
            label7.AutoSize = true;
            label7.Location = new Point(257, 226);
            label7.Name = "label7";
            label7.Size = new Size(104, 20);
            label7.TabIndex = 13;
            label7.Text = "ID do produto";
            // 
            // chkAtivo
            // 
            chkAtivo.AutoSize = true;
            chkAtivo.Checked = true;
            chkAtivo.CheckState = CheckState.Checked;
            chkAtivo.Location = new Point(257, 187);
            chkAtivo.Name = "chkAtivo";
            chkAtivo.Size = new Size(121, 24);
            chkAtivo.TabIndex = 12;
            chkAtivo.Text = "Produto ativo";
            chkAtivo.UseVisualStyleBackColor = true;
            // 
            // txtComposicaoTecido
            // 
            txtComposicaoTecido.Location = new Point(257, 145);
            txtComposicaoTecido.Name = "txtComposicaoTecido";
            txtComposicaoTecido.Size = new Size(193, 27);
            txtComposicaoTecido.TabIndex = 11;
            // 
            // label6
            // 
            label6.AutoSize = true;
            label6.Location = new Point(257, 122);
            label6.Name = "label6";
            label6.Size = new Size(160, 20);
            label6.TabIndex = 10;
            label6.Text = "Composição do tecido";
            // 
            // txtDescricao
            // 
            txtDescricao.Location = new Point(257, 44);
            txtDescricao.Multiline = true;
            txtDescricao.Name = "txtDescricao";
            txtDescricao.Size = new Size(193, 75);
            txtDescricao.TabIndex = 9;
            // 
            // label5
            // 
            label5.AutoSize = true;
            label5.Location = new Point(252, 21);
            label5.Name = "label5";
            label5.Size = new Size(74, 20);
            label5.TabIndex = 8;
            label5.Text = "Descrição";
            // 
            // cmbMarca
            // 
            cmbMarca.DropDownStyle = ComboBoxStyle.DropDownList;
            cmbMarca.FormattingEnabled = true;
            cmbMarca.Location = new Point(8, 258);
            cmbMarca.Name = "cmbMarca";
            cmbMarca.Size = new Size(193, 28);
            cmbMarca.TabIndex = 7;
            // 
            // label4
            // 
            label4.AutoSize = true;
            label4.Location = new Point(6, 226);
            label4.Name = "label4";
            label4.Size = new Size(50, 20);
            label4.TabIndex = 6;
            label4.Text = "Marca";
            label4.Click += label4_Click;
            // 
            // cmbCategoria
            // 
            cmbCategoria.DropDownStyle = ComboBoxStyle.DropDownList;
            cmbCategoria.FormattingEnabled = true;
            cmbCategoria.Location = new Point(8, 185);
            cmbCategoria.Name = "cmbCategoria";
            cmbCategoria.Size = new Size(193, 28);
            cmbCategoria.TabIndex = 5;
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Location = new Point(6, 153);
            label3.Name = "label3";
            label3.Size = new Size(74, 20);
            label3.TabIndex = 4;
            label3.Text = "Categoria";
            label3.Click += label3_Click;
            // 
            // txtPrecoVenda
            // 
            txtPrecoVenda.Location = new Point(8, 118);
            txtPrecoVenda.Name = "txtPrecoVenda";
            txtPrecoVenda.Size = new Size(193, 27);
            txtPrecoVenda.TabIndex = 3;
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Location = new Point(8, 86);
            label2.Name = "label2";
            label2.Size = new Size(111, 20);
            label2.TabIndex = 2;
            label2.Text = "Preço de venda";
            // 
            // txtNomeProduto
            // 
            txtNomeProduto.Location = new Point(8, 44);
            txtNomeProduto.Name = "txtNomeProduto";
            txtNomeProduto.Size = new Size(193, 27);
            txtNomeProduto.TabIndex = 1;
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new Point(8, 21);
            label1.Name = "label1";
            label1.Size = new Size(130, 20);
            label1.TabIndex = 0;
            label1.Text = "Nome do produto";
            // 
            // tabProdutos
            // 
            tabProdutos.Controls.Add(tabPage1);
            tabProdutos.Dock = DockStyle.Fill;
            tabProdutos.Location = new Point(0, 0);
            tabProdutos.Name = "tabProdutos";
            tabProdutos.SelectedIndex = 0;
            tabProdutos.Size = new Size(1082, 703);
            tabProdutos.TabIndex = 1;
            tabProdutos.SelectedIndexChanged += tabProdutos_SelectedIndexChanged;
            // 
            // Form1
            // 
            AutoScaleDimensions = new SizeF(8F, 20F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(1082, 703);
            Controls.Add(tabProdutos);
            Controls.Add(button1);
            Name = "Form1";
            Text = "Form1";
            tabPage1.ResumeLayout(false);
            tabPage1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)dgvProdutos).EndInit();
            tabProdutos.ResumeLayout(false);
            ResumeLayout(false);
        }

        #endregion

        private Button button1;
        private TabPage tabPage1;
        private Label label1;
        private TabControl tabProdutos;
        private TextBox txtPrecoVenda;
        private Label label2;
        private TextBox txtNomeProduto;
        private ComboBox cmbCategoria;
        private Label label3;
        private Label label4;
        private ComboBox cmbMarca;
        private TextBox txtDescricao;
        private Label label5;
        private TextBox txtComposicaoTecido;
        private Label label6;
        private TextBox txtIdProduto;
        private Label label7;
        private CheckBox chkAtivo;
        private Button btnExcluir;
        private Button btnAtualizar;
        private Button btnCadastrar;
        private DataGridView dgvProdutos;
    }
}
