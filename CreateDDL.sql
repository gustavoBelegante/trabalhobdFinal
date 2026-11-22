
-- 1. CATEGORIA
CREATE TABLE CATEGORIA (
    id_categoria TINYINT IDENTITY(1,1) NOT NULL,
    id_categoria_pai TINYINT NULL,
    nome VARCHAR(60) NOT NULL,
    ativo BIT NOT NULL CONSTRAINT DF_Categoria_Ativo DEFAULT 1,
    CONSTRAINT PK_Categoria PRIMARY KEY (id_categoria),
    CONSTRAINT FK_Categoria_Pai FOREIGN KEY (id_categoria_pai) REFERENCES CATEGORIA(id_categoria)
);
GO

-- 2. MARCA
CREATE TABLE MARCA (
    id_marca TINYINT IDENTITY(1,1) NOT NULL,
    nome VARCHAR(60) NOT NULL,
    pais_origem VARCHAR(40) NULL,
    CONSTRAINT PK_Marca PRIMARY KEY (id_marca),
    CONSTRAINT UQ_Marca_Nome UNIQUE (nome)
);
GO

-- 3. COR
CREATE TABLE COR (
    id_cor TINYINT IDENTITY(1,1) NOT NULL,
    nome_cor VARCHAR(40) NOT NULL
);
GO

-- 4. TAMANHO
CREATE TABLE TAMANHO (
    id_tamanho TINYINT IDENTITY(1,1) NOT NULL,
    sigla VARCHAR(10) NOT NULL,
    descricao VARCHAR(40) NULL,
    ordem_exibicao TINYINT NOT NULL,
    CONSTRAINT PK_Tamanho PRIMARY KEY (id_tamanho),
    CONSTRAINT UQ_Tamanho_Sigla UNIQUE (sigla)
);
GO

-- 5. FORNECEDOR
CREATE TABLE FORNECEDOR (
    id_fornecedor SMALLINT IDENTITY(1,1) NOT NULL,
    razao_social VARCHAR(120) NOT NULL,
    cnpj CHAR(14) NOT NULL,
    email VARCHAR(100) NOT NULL,
    telefone VARCHAR(15) NULL,
    CONSTRAINT PK_Fornecedor PRIMARY KEY (id_fornecedor),
    CONSTRAINT UQ_Fornecedor_Cnpj UNIQUE (cnpj)
);
GO

-- 6. PRODUTO
CREATE TABLE PRODUTO (
    id_produto INT IDENTITY(1,1) NOT NULL,
    id_categoria TINYINT NOT NULL,
    id_marca TINYINT NOT NULL,
    nome VARCHAR(120) NOT NULL,
    descricao VARCHAR(500) NULL,
    composicao_tecido VARCHAR(100) NULL,
    preco_venda DECIMAL(10, 2) NOT NULL,
    ativo BIT NOT NULL CONSTRAINT DF_Produto_Ativo DEFAULT 1,
    CONSTRAINT PK_Produto PRIMARY KEY (id_produto),
    CONSTRAINT FK_Produto_Categoria FOREIGN KEY (id_categoria) REFERENCES CATEGORIA(id_categoria),
    CONSTRAINT FK_Produto_Marca FOREIGN KEY (id_marca) REFERENCES MARCA(id_marca),
    CONSTRAINT CK_Produto_Preco CHECK (preco_venda >= 0)
);
GO

-- 7. PRODUTO_VARIACAO (SKU físico)
CREATE TABLE PRODUTO_VARIACAO (
    id_variacao INT IDENTITY(1,1) NOT NULL,
    id_produto INT NOT NULL,
    id_cor TINYINT NOT NULL,
    id_tamanho TINYINT NOT NULL,
    sku_codigo VARCHAR(30) NOT NULL,
    codigo_barras VARCHAR(14) NULL,
    qtd_estoque_atual INT NOT NULL CONSTRAINT DF_Variacao_Estoque DEFAULT 0,
    estoque_minimo SMALLINT NOT NULL CONSTRAINT DF_Variacao_Minimo DEFAULT 5,
    CONSTRAINT PK_ProdutoVariacao PRIMARY KEY (id_variacao),
    CONSTRAINT FK_Variacao_Produto FOREIGN KEY (id_produto) REFERENCES PRODUTO(id_produto),
    CONSTRAINT FK_Variacao_Cor FOREIGN KEY (id_cor) REFERENCES COR(id_cor),
    CONSTRAINT FK_Variacao_Tamanho FOREIGN KEY (id_tamanho) REFERENCES TAMANHO(id_tamanho),
    CONSTRAINT UQ_Variacao_Sku UNIQUE (sku_codigo),
    CONSTRAINT UQ_Variacao_Combinacao UNIQUE (id_produto, id_cor, id_tamanho),
    CONSTRAINT CK_Variacao_Estoque CHECK (qtd_estoque_atual >= 0),
    CONSTRAINT CK_Variacao_Minimo CHECK (estoque_minimo >= 0)
);
GO

-- 8. ENTRADA_ESTOQUE
CREATE TABLE ENTRADA_ESTOQUE (
    id_entrada INT IDENTITY(1,1) NOT NULL,
    id_fornecedor SMALLINT NOT NULL,
    numero_nf VARCHAR(20) NOT NULL,
    data_entrada DATETIME2(0) NOT NULL CONSTRAINT DF_Entrada_Data DEFAULT SYSDATETIME(),
    valor_total DECIMAL(12, 2) NOT NULL,
    CONSTRAINT PK_EntradaEstoque PRIMARY KEY (id_entrada),
    CONSTRAINT FK_Entrada_Fornecedor FOREIGN KEY (id_fornecedor) REFERENCES FORNECEDOR(id_fornecedor),
    CONSTRAINT CK_Entrada_Valor CHECK (valor_total >= 0)
);
GO

-- 9. ITEM_ENTRADA
CREATE TABLE ITEM_ENTRADA (
    id_item_entrada INT IDENTITY(1,1) NOT NULL,
    id_entrada INT NOT NULL,
    id_variacao INT NOT NULL,
    quantidade INT NOT NULL,
    custo_unitario DECIMAL(10, 2) NOT NULL,
    CONSTRAINT PK_ItemEntrada PRIMARY KEY (id_item_entrada),
    CONSTRAINT FK_ItemEntrada_Entrada FOREIGN KEY (id_entrada) REFERENCES ENTRADA_ESTOQUE(id_entrada),
    CONSTRAINT FK_ItemEntrada_Variacao FOREIGN KEY (id_variacao) REFERENCES PRODUTO_VARIACAO(id_variacao),
    CONSTRAINT UQ_ItemEntrada_Unico UNIQUE (id_entrada, id_variacao),
    CONSTRAINT CK_ItemEntrada_Qtd CHECK (quantidade > 0),
    CONSTRAINT CK_ItemEntrada_Custo CHECK (custo_unitario >= 0)
);
GO

-- 10. MOVIMENTACAO_ESTOQUE
CREATE TABLE MOVIMENTACAO_ESTOQUE (
    id_movimentacao INT IDENTITY(1,1) NOT NULL,
    id_variacao INT NOT NULL,
    tipo_movimentacao VARCHAR(15) NOT NULL,
    quantidade INT NOT NULL,
    data_hora DATETIME2(0) NOT NULL CONSTRAINT DF_Movimentacao_Data DEFAULT SYSDATETIME(),
    referencia_pedido VARCHAR(30) NULL,
    observacao VARCHAR(200) NULL,
    CONSTRAINT PK_MovimentacaoEstoque PRIMARY KEY (id_movimentacao),
    CONSTRAINT FK_Movimentacao_Variacao FOREIGN KEY (id_variacao) REFERENCES PRODUTO_VARIACAO(id_variacao),
    CONSTRAINT CK_Movimentacao_Tipo CHECK (tipo_movimentacao IN ('ENTRADA', 'SAIDA_VENDA', 'DEVOLUCAO', 'AJUSTE')),
    CONSTRAINT CK_Movimentacao_Qtd CHECK (quantidade <> 0)
);
GO

-- 11. CLIENTE
CREATE TABLE CLIENTE (
    id_cliente INT IDENTITY(1,1) NOT NULL,
    nome_completo VARCHAR(120) NOT NULL,
    cpf CHAR(11) NOT NULL,
    email VARCHAR(100) NOT NULL,
    cidade VARCHAR(80) NOT NULL,
    uf CHAR(2) NOT NULL,
    CONSTRAINT PK_Cliente PRIMARY KEY (id_cliente),
    CONSTRAINT UQ_Cliente_Cpf UNIQUE (cpf)
);
GO

-- 12. VENDA
CREATE TABLE VENDA (
    id_venda INT IDENTITY(1,1) NOT NULL,
    id_cliente INT NOT NULL,
    data_venda DATETIME2(0) NOT NULL CONSTRAINT DF_Venda_Data DEFAULT SYSDATETIME(),
    status_pedido VARCHAR(15) NOT NULL CONSTRAINT DF_Venda_Status DEFAULT 'PAGO',
    valor_total DECIMAL(12, 2) NOT NULL,
    CONSTRAINT PK_Venda PRIMARY KEY (id_venda),
    CONSTRAINT FK_Venda_Cliente FOREIGN KEY (id_cliente) REFERENCES CLIENTE(id_cliente),
    CONSTRAINT CK_Venda_Status CHECK (status_pedido IN ('PENDENTE', 'PAGO', 'ENVIADO', 'CANCELADO')),
    CONSTRAINT CK_Venda_Valor CHECK (valor_total >= 0)
);
GO

-- 13. ITEM_VENDA
CREATE TABLE ITEM_VENDA (
    id_item_venda INT IDENTITY(1,1) NOT NULL,
    id_venda INT NOT NULL,
    id_variacao INT NOT NULL,
    quantidade INT NOT NULL,
    preco_unitario DECIMAL(10, 2) NOT NULL,
    CONSTRAINT PK_ItemVenda PRIMARY KEY (id_item_venda),
    CONSTRAINT FK_ItemVenda_Venda FOREIGN KEY (id_venda) REFERENCES VENDA(id_venda),
    CONSTRAINT FK_ItemVenda_Variacao FOREIGN KEY (id_variacao) REFERENCES PRODUTO_VARIACAO(id_variacao),
    CONSTRAINT UQ_ItemVenda_Unico UNIQUE (id_venda, id_variacao),
    CONSTRAINT CK_ItemVenda_Qtd CHECK (quantidade > 0),
    CONSTRAINT CK_ItemVenda_Preco CHECK (preco_unitario >= 0)
);
GO

-- Ajuste na MOVIMENTACAO_ESTOQUE 
ALTER TABLE MOVIMENTACAO_ESTOQUE
ADD id_venda INT NULL;
GO

ALTER TABLE MOVIMENTACAO_ESTOQUE
ADD CONSTRAINT FK_Movimentacao_Venda FOREIGN KEY (id_venda) REFERENCES VENDA(id_venda);
GO