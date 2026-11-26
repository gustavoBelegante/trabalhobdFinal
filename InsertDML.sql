
-- Tabela CATEGORIA
INSERT INTO CATEGORIA (id_categoria_pai, nome, ativo) VALUES
(NULL, 'Masculino', 1),
(NULL, 'Feminino', 1),
(NULL, 'Unissex', 1),
(NULL, 'Infantil', 1),
(NULL, 'Fitness', 1),
(1,    'Camisetas', 1),
(1,    'Camisas Sociais', 1),
(1,    'Calças Masculinas', 1),
(1,    'Bermudas', 1),
(1,    'Jaquetas Masculinas', 1),
(2,    'Vestidos', 1),
(2,    'Blusas Femininas', 1),
(2,    'Saias', 1),
(2,    'Calças Femininas', 1),
(2,    'Casacos Femininos', 1),
(3,    'Moletons', 1),
(3,    'Camisetas Oversized', 1),
(4,    'Conjuntos Infantis', 1),
(5,    'Leggings', 1),
(5,    'Tops Esportivos', 1);
GO

-- Tabela MARCA
INSERT INTO MARCA (nome, pais_origem) VALUES
('Urbano Sul', 'Brasil'),
('Vértice Moda', 'Brasil'),
('Nordic Knit', 'Dinamarca'),
('Atelier Paulista', 'Brasil'),
('Kuro Denim', 'Japão'),
('Solares Beach', 'Brasil'),
('Linea Clássica', 'Itália'),
('Pulse Active', 'Estados Unidos'),
('Casa do Linho', 'Portugal'),
('Montanha Outdoor', 'Canadá'),
('Brisa Tropical', 'Brasil'),
('Eixo Street', 'Brasil'),
('Alba Vestuário', 'Espanha'),
('Terra & Algodão', 'Brasil'),
('Vanguardia', 'França'),
('Onda Livre', 'Brasil'),
('Norte Textil', 'Brasil'),
('Rota Jovem', 'Brasil'),
('Serra Fria', 'Chile'),
('Harmonia Basics', 'Brasil');
GO

-- Tabela COR
INSERT INTO COR (nome_cor, codigo_hex) VALUES
('Preto', '#111111'),
('Branco', '#FFFFFF'),
('Azul Marinho', '#1B2A4A'),
('Cinza Mescla', '#9E9E9E'),
('Verde Musgo', '#4A5D23'),
('Vinho Bordô', '#5C1A2A'),
('Bege Areia', '#D8C3A5'),
('Caramelo', '#A66A38'),
('Off-White', '#F5F2EB'),
('Azul Jeans', '#3B6998'),
('Rosa Queimado', '#C06C84'),
('Verde Oliva', '#6B8E23'),
('Terracota', '#C85A32'),
('Lavanda', '#B5A8D5'),
('Grafite', '#363636'),
('Mostarda', '#D4A017'),
('Coral', '#FF6F61'),
('Azul Celeste', '#7EC8E3'),
('Marrom Café', '#4E342E'),
('Roxo Uva', '#5A2A5A');
GO

-- Tabela TAMANHO
INSERT INTO TAMANHO (sigla, descricao, ordem_exibicao) VALUES
('PP', 'Extra Pequeno', 1),
('P',  'Pequeno', 2),
('M',  'Médio', 3),
('G',  'Grande', 4),
('GG', 'Extra Grande', 5),
('XG', 'Super Grande', 6),
('34', 'Numeração 34', 7),
('36', 'Numeração 36', 8),
('38', 'Numeração 38', 9),
('40', 'Numeração 40', 10),
('42', 'Numeração 42', 11),
('44', 'Numeração 44', 12),
('46', 'Numeração 46', 13),
('48', 'Numeração 48', 14),
('2A', 'Infantil 2 Anos', 15),
('4A', 'Infantil 4 Anos', 16),
('6A', 'Infantil 6 Anos', 17),
('8A', 'Infantil 8 Anos', 18),
('U',  'Tamanho Único', 19),
('PLUS', 'Plus Size Único', 20);
GO

-- Tabela FORNECEDOR
INSERT INTO FORNECEDOR (razao_social, cnpj, email, telefone) VALUES
('Malharia Santa Catarina Ltda', '11223344000101', 'vendas@malhariasc.com.br', '4733221001'),
('Confecções Sul Minas SA', '11223344000102', 'comercial@sulminas.com.br', '3534221002'),
('Têxtil Blumenau Indústria', '11223344000103', 'atendimento@textilblu.com.br', '4733221003'),
('Jeans & Cia Lavanderia Ltda', '11223344000104', 'pedidos@jeanseucia.com.br', '1140021004'),
('Fios do Vale Distribuidora', '11223344000105', 'contato@fiosdovale.com.br', '4733221005'),
('Atacado Moda Brasil Ltda', '11223344000106', 'sac@atacadomodabr.com.br', '1140021006'),
('Tricot Serra Gaúcha Ltda', '11223344000107', 'vendas@tricotserra.com.br', '5432811007'),
('SportFit Indústria Têxtil', '11223344000108', 'comercial@sportfit.com.br', '1937011008'),
('Algodão Nobre Comércio', '11223344000109', 'vendas@algodaonobre.com.br', '8532011009'),
('Linho & Estilo Importadora', '11223344000110', 'import@linhoestilo.com.br', '1140021010'),
('Kids Fashion Distribuidora', '11223344000111', 'pedidos@kidsfashion.com.br', '4130111011'),
('Estamparia Horizonte Ltda', '11223344000112', 'arte@estampahorizonte.com.br', '3132011012'),
('Moletom Prime Indústria', '11223344000113', 'vendas@moletomprime.com.br', '4733221013'),
('Alfaiataria Central Ltda', '11223344000114', 'atendimento@alfacentral.com.br', '1140021014'),
('Costa Sul Moda Praia', '11223344000115', 'comercial@costasul.com.br', '4832011015'),
('Fibras Modernas SA', '11223344000116', 'vendas@fibrasmodernas.com.br', '4733221016'),
('Básico & Essencial Ltda', '11223344000117', 'contato@basicoessencial.com.br', '1140021017'),
('Pampa Couros e Tecidos', '11223344000118', 'vendas@pampatecidos.com.br', '5133011018'),
('Nova Era Confecções', '11223344000119', 'comercial@novaeraconf.com.br', '6232011019'),
('Qualidade Têxtil Sul Ltda', '11223344000120', 'pedidos@qualidadetextil.com.br', '4130111020');
GO

-- Tabela CLIENTE
INSERT INTO CLIENTE (nome_completo, cpf, email, cidade, uf) VALUES
('Ana Beatriz Souza', '10020030001', 'ana.souza@email.com', 'Florianópolis', 'SC'),
('Lucas Henrique Lima', '10020030002', 'lucas.lima@email.com', 'São Paulo', 'SP'),
('Mariana Costa Oliveira', '10020030003', 'mariana.oliveira@email.com', 'Curitiba', 'PR'),
('Rafael Almeida Santos', '10020030004', 'rafael.santos@email.com', 'Belo Horizonte', 'MG'),
('Camila Ferreira Rocha', '10020030005', 'camila.rocha@email.com', 'Porto Alegre', 'RS'),
('Bruno Eduardo Martins', '10020030006', 'bruno.martins@email.com', 'Joinville', 'SC'),
('Juliana Ribeiro Alves', '10020030007', 'juliana.alves@email.com', 'Campinas', 'SP'),
('Gabriel Pereira Dias', '10020030008', 'gabriel.dias@email.com', 'Rio de Janeiro', 'RJ'),
('Larissa Mendes Carvalho', '10020030009', 'larissa.carvalho@email.com', 'Blumenau', 'SC'),
('Thiago Augusto Gomes', '10020030010', 'thiago.gomes@email.com', 'Goiânia', 'GO'),
('Fernanda Barbosa Nunes', '10020030011', 'fernanda.nunes@email.com', 'Salvador', 'BA'),
('Diego Felipe Moreira', '10020030012', 'diego.moreira@email.com', 'Londrina', 'PR'),
('Beatriz Cristina Castro', '10020030013', 'beatriz.castro@email.com', 'Santos', 'SP'),
('Matheus Vinícius Pinto', '10020030014', 'matheus.pinto@email.com', 'Vitória', 'ES'),
('Amanda Letícia Vieira', '10020030015', 'amanda.vieira@email.com', 'Criciúma', 'SC'),
('Pedro Lucas Teixeira', '10020030016', 'pedro.teixeira@email.com', 'Recife', 'PE'),
('Isabela Regina Monteiro', '10020030017', 'isabela.monteiro@email.com', 'Uberlândia', 'MG'),
('Gustavo Henrique Mendes', '10020030018', 'gustavo.mendes@email.com', 'Maringá', 'PR'),
('Carla Simone Duarte', '10020030019', 'carla.duarte@email.com', 'São José', 'SC'),
('Felipe Gabriel Correia', '10020030020', 'felipe.correia@email.com', 'Ribeirão Preto', 'SP');
GO

-- Tabela PRODUTO
INSERT INTO PRODUTO (id_categoria, id_marca, nome, descricao, composicao_tecido, preco_venda, ativo) VALUES
(6,  1,  'Camiseta Básica Algodão Pima', 'Camiseta gola careca modelagem regular', '100% Algodão Pima', 89.90, 1),
(6,  20, 'Camiseta Estampada Minimal', 'Estampa frontal discreta em silk', '100% Algodão', 79.90, 1),
(7,  7,  'Camisa Social Slim Fit', 'Manga longa com acabamento acetinado', '70% Algodão 30% Poliéster', 169.90, 1),
(8,  5,  'Calça Jeans Reta Tradicional', 'Lavagem média com cinco bolsos', '98% Algodão 2% Elastano', 199.90, 1),
(9,  12, 'Bermuda Sarja Chino', 'Corte acima do joelho para uso casual', '97% Algodão 3% Elastano', 129.90, 1),
(10, 10, 'Jaqueta Corta-Vento Impermeável', 'Com capuz e bolsos laterais com zíper', '100% Poliamida', 259.90, 1),
(11, 2,  'Vestido Midi Fluido', 'Caimento solto com faixa na cintura', '100% Viscose', 219.90, 1),
(11, 11, 'Vestido Curto Listrado', 'Modelagem evasê ideal para o dia a dia', '96% Algodão 4% Elastano', 159.90, 1),
(12, 9,  'Blusa Linho Manga Curta', 'Toque fresco e modelagem solta', '55% Linho 45% Viscose', 149.90, 1),
(12, 13, 'Blusa Canelada Manga Longa', 'Malha canelada ajustada ao corpo', '92% Viscose 8% Elastano', 119.90, 1),
(13, 4,  'Saia Midi Plissada', 'Cós elástico confortável', '100% Poliéster', 179.90, 1),
(14, 5,  'Calça Jeans Skinny Cintura Alta', 'Modelagem ajustada com elastano', '80% Algodão 18% Poliéster 2% Elastano', 189.90, 1),
(15, 3,  'Casaco Tricot Inverno', 'Trama fechada para dias frios', '50% Lã 50% Acrílico', 249.90, 1),
(16, 12, 'Moletom Canguru Felpado', 'Capuz forrado e bolso frontal', '60% Algodão 40% Poliéster', 229.90, 1),
(17, 12, 'Camiseta Oversized Boxy Fit', 'Ombros caídos e gola reforçada', '100% Algodão 240g', 109.90, 1),
(18, 18, 'Conjunto Infantil Malha', 'Camiseta e bermuda confortáveis', '100% Algodão', 99.90, 1),
(19, 8,  'Calça Legging Compressão Alta', 'Cintura alta com zero transparência', '85% Poliamida 15% Elastano', 139.90, 1),
(20, 8,  'Top Esportivo Média Sustentação', 'Bojo removível e costas nadador', '84% Poliamida 16% Elastano', 89.90, 1),
(8,  14, 'Calça Sarja Alfaiataria Casual', 'Corte reto com vinco discreto', '98% Algodão 2% Elastano', 189.90, 1),
(14, 9,  'Calça Pantalona Linho', 'Caimento amplo e elegante', '60% Viscose 40% Linho', 219.90, 1);
GO

-- Tabela PRODUTO_VARIACAO
INSERT INTO PRODUTO_VARIACAO (id_produto, id_cor, id_tamanho, sku_codigo, codigo_barras, qtd_estoque_atual, estoque_minimo) VALUES
(1,  1,  3,  'CAM-PIMA-PRT-M', '7891000000011', 28, 8),
(1,  2,  2,  'CAM-PIMA-BRC-P', '7891000000028', 3,  8),
(2,  4,  3,  'CAM-MINI-CNZ-M', '7891000000035', 22, 6),
(2,  1,  4,  'CAM-MINI-PRT-G', '7891000000042', 2,  6),
(3,  3,  3,  'CMS-SLIM-AZM-M', '7891000000059', 15, 5),
(4,  10, 11, 'CLJ-RETA-AZJ-42','7891000000066', 14, 5),
(5,  7,  10, 'BRM-CHIN-BGE-40','7891000000073', 19, 6),
(6,  1,  4,  'JAQ-CORT-PRT-G', '7891000000080', 2,  5),
(7,  6,  3,  'VES-MIDI-VNH-M', '7891000000097', 16, 5),
(8,  11, 2,  'VES-CURT-ROS-P', '7891000000103', 12, 5),
(9,  9,  3,  'BLS-LINH-OFW-M', '7891000000110', 18, 5),
(10, 1,  2,  'BLS-CANE-PRT-P', '7891000000127', 20, 6),
(11, 8,  9,  'SAI-PLIS-CRM-38','7891000000134', 3,  6),
(12, 10, 10, 'CLJ-SKIN-AZJ-40','7891000000141', 17, 5),
(13, 15, 4,  'CAS-TRIC-GRF-G', '7891000000158', 11, 5),
(14, 5,  3,  'MOL-CANG-VRD-M', '7891000000165', 9,  4),
(15, 2,  4,  'CAM-OVER-BRC-G', '7891000000172', 25, 7),
(16, 18, 16, 'CON-INFN-AZC-4A','7891000000189', 2,  6),
(17, 1,  3,  'LEG-COMP-PRT-M', '7891000000196', 24, 7),
(18, 14, 2,  'TOP-ESPO-LAV-P', '7891000000202', 15, 5),
(19, 19, 10, 'CLS-ALFA-MRR-40','7891000000219', 13, 5),
(20, 7,  9,  'CLP-LINH-BGE-38','7891000000226', 14, 5),
(1,  3,  4,  'CAM-PIMA-AZM-G', '7891000000233', 16, 6),
(7,  12, 3,  'VES-MIDI-VDO-M', '7891000000240', 12, 5);
GO

-- Tabela ENTRADA_ESTOQUE
INSERT INTO ENTRADA_ESTOQUE (id_fornecedor, numero_nf, data_entrada, valor_total) VALUES
(1,  'NF-2026-0001', '2026-07-10 09:30:00', 1800.00),
(2,  'NF-2026-0002', '2026-07-15 14:10:00', 1450.00),
(3,  'NF-2026-0003', '2026-07-22 10:00:00', 2200.00),
(4,  'NF-2026-0004', '2026-08-03 11:20:00', 2600.00),
(5,  'NF-2026-0005', '2026-08-12 16:45:00', 1520.00),
(6,  'NF-2026-0006', '2026-08-19 08:50:00', 1940.00),
(7,  'NF-2026-0007', '2026-08-27 15:15:00', 2380.00),
(8,  'NF-2026-0008', '2026-09-04 10:40:00', 1760.00),
(9,  'NF-2026-0009', '2026-09-11 13:05:00', 1650.00),
(10, 'NF-2026-0010', '2026-09-18 09:15:00', 2100.00),
(11, 'NF-2026-0011', '2026-09-25 14:50:00', 1120.00),
(12, 'NF-2026-0012', '2026-10-02 10:25:00', 1890.00),
(13, 'NF-2026-0013', '2026-10-09 16:00:00', 2050.00),
(14, 'NF-2026-0014', '2026-10-15 11:30:00', 2420.00),
(15, 'NF-2026-0015', '2026-10-20 15:40:00', 1380.00),
(16, 'NF-2026-0016', '2026-10-26 09:00:00', 1710.00),
(17, 'NF-2026-0017', '2026-11-02 14:20:00', 1960.00),
(18, 'NF-2026-0018', '2026-11-07 10:10:00', 2150.00),
(19, 'NF-2026-0019', '2026-11-12 16:35:00', 1490.00),
(20, 'NF-2026-0020', '2026-11-18 11:05:00', 1840.00);
GO

-- Tabela ITEM_ENTRADA
INSERT INTO ITEM_ENTRADA (id_entrada, id_variacao, quantidade, custo_unitario) VALUES
(1,  1,  30, 42.00),
(1,  2,  20, 40.00),
(2,  1,  20, 38.50),
(3,  3,  30, 35.00),
(3,  4,  20, 34.00),
(4,  6,  25, 92.00),
(5,  5,  20, 76.00),
(6,  7,  25, 58.00),
(7,  13, 18, 82.00),
(8,  17, 30, 56.00),
(9,  2,  15, 37.50),
(10, 9,  20, 105.00),
(11, 18, 16, 45.00),
(12, 3,  20, 32.50),
(13, 16, 15, 112.00),
(14, 14, 22, 88.00),
(15, 10, 20, 69.00),
(16, 19, 30, 57.00),
(17, 15, 15, 118.00),
(18, 20, 20, 41.00),
(19, 21, 18, 85.00),
(20, 22, 20, 96.00);
GO

-- Tabela VENDA
INSERT INTO VENDA (id_cliente, data_venda, status_pedido, valor_total) VALUES
(1,  '2026-08-15 10:20:00', 'ENVIADO', 179.80),
(2,  '2026-08-22 14:10:00', 'PAGO', 199.90),
(3,  '2026-09-05 16:00:00', 'ENVIADO', 219.90),
(4,  '2026-09-14 11:45:00', 'PAGO', 229.90),
(5,  '2026-09-20 19:15:00', 'CANCELADO', 149.90),
(6,  '2026-10-01 09:30:00', 'PAGO', 269.70),
(7,  '2026-10-06 13:20:00', 'ENVIADO', 189.90),
(8,  '2026-10-12 17:10:00', 'PAGO', 259.90),
(9,  '2026-10-18 10:05:00', 'PAGO', 159.80),
(10, '2026-10-24 15:50:00', 'ENVIADO', 219.80),
(11, '2026-11-01 12:30:00', 'PAGO', 259.70),
(12, '2026-11-04 16:40:00', 'PAGO', 249.90),
(13, '2026-11-08 11:15:00', 'ENVIADO', 139.90),
(14, '2026-11-11 18:00:00', 'PAGO', 219.90),
(15, '2026-11-14 09:55:00', 'PENDENTE', 89.90),
(16, '2026-11-16 14:25:00', 'PAGO', 379.70),
(17, '2026-11-19 16:10:00', 'ENVIADO', 179.90),
(18, '2026-11-21 10:45:00', 'PAGO', 239.80),
(19, '2026-11-23 15:00:00', 'PAGO', 199.80),
(20, '2026-11-25 17:30:00', 'ENVIADO', 179.80);
GO

-- Tabela ITEM_VENDA
INSERT INTO ITEM_VENDA (id_venda, id_variacao, quantidade, preco_unitario) VALUES
(1,  1,  2, 89.90),
(2,  6,  1, 199.90),
(3,  9,  1, 219.90),
(4,  16, 1, 229.90),
(5,  11, 1, 149.90),
(6,  1,  3, 89.90),
(7,  14, 1, 189.90),
(8,  8,  1, 259.90),
(9,  2,  2, 79.90),
(10, 3,  2, 109.90),
(11, 1,  2, 89.90),
(12, 15, 1, 249.90),
(13, 19, 1, 139.90),
(14, 22, 1, 219.90),
(15, 20, 1, 89.90),
(16, 19, 2, 139.90),
(17, 13, 1, 179.90),
(18, 17, 2, 119.90),
(19, 24, 1, 199.80),
(20, 1,  2, 89.90),
(11, 4,  1, 79.90),
(16, 18, 1, 99.90);
GO

-- Tabela MOVIMENTACAO_ESTOQUE
INSERT INTO MOVIMENTACAO_ESTOQUE (id_variacao, id_venda, tipo_movimentacao, quantidade, data_hora, referencia_pedido, observacao) VALUES
(1,  NULL, 'ENTRADA',     30, '2026-07-10 09:35:00', 'NF-2026-0001', 'Entrada inicial Camiseta Pima Preta M'),
(2,  NULL, 'ENTRADA',     20, '2026-07-10 09:36:00', 'NF-2026-0001', 'Entrada inicial Camiseta Pima Branca P'),
(1,  1,    'SAIDA_VENDA', -2, '2026-08-15 10:21:00', 'PED-0001',     'Saída por venda #1'),
(6,  2,    'SAIDA_VENDA', -1, '2026-08-22 14:11:00', 'PED-0002',     'Saída por venda #2'),
(9,  3,    'SAIDA_VENDA', -1, '2026-09-05 16:01:00', 'PED-0003',     'Saída por venda #3'),
(16, 4,    'SAIDA_VENDA', -1, '2026-09-14 11:46:00', 'PED-0004',     'Saída por venda #4'),
(11, NULL, 'DEVOLUCAO',    1, '2026-09-21 10:00:00', 'PED-0005',     'Devolução de pedido cancelado #5'),
(1,  6,    'SAIDA_VENDA', -3, '2026-10-01 09:31:00', 'PED-0006',     'Saída por venda #6'),
(14, 7,    'SAIDA_VENDA', -1, '2026-10-06 13:21:00', 'PED-0007',     'Saída por venda #7'),
(8,  8,    'SAIDA_VENDA', -1, '2026-10-12 17:11:00', 'PED-0008',     'Saída por venda #8'),
(2,  9,    'SAIDA_VENDA', -2, '2026-10-18 10:06:00', 'PED-0009',     'Saída por venda #9'),
(3,  10,   'SAIDA_VENDA', -2, '2026-10-24 15:51:00', 'PED-0010',     'Saída por venda #10'),
(1,  11,   'SAIDA_VENDA', -2, '2026-11-01 12:31:00', 'PED-0011',     'Saída por venda #11'),
(4,  11,   'SAIDA_VENDA', -1, '2026-11-01 12:31:00', 'PED-0011',     'Saída por venda #11'),
(15, 12,   'SAIDA_VENDA', -1, '2026-11-04 16:41:00', 'PED-0012',     'Saída por venda #12'),
(19, 13,   'SAIDA_VENDA', -1, '2026-11-08 11:16:00', 'PED-0013',     'Saída por venda #13'),
(22, 14,   'SAIDA_VENDA', -1, '2026-11-11 18:01:00', 'PED-0014',     'Saída por venda #14'),
(20, 15,   'SAIDA_VENDA', -1, '2026-11-14 09:56:00', 'PED-0015',     'Saída por venda #15'),
(19, 16,   'SAIDA_VENDA', -2, '2026-11-16 14:26:00', 'PED-0016',     'Saída por venda #16'),
(18, 16,   'SAIDA_VENDA', -1, '2026-11-16 14:26:00', 'PED-0016',     'Saída por venda #16'),
(13, 17,   'SAIDA_VENDA', -1, '2026-11-19 16:11:00', 'PED-0017',     'Saída por venda #17'),
(17, 18,   'SAIDA_VENDA', -2, '2026-11-21 10:46:00', 'PED-0018',     'Saída por venda #18'),
(24, 19,   'SAIDA_VENDA', -1, '2026-11-23 15:01:00', 'PED-0019',     'Saída por venda #19'),
(2,  NULL, 'AJUSTE',      -2, '2026-11-24 08:15:00', NULL,           'Ajuste de inventário após conferência física');
GO