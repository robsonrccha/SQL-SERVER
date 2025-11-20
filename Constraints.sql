-- NOT NULL: Garante que uma coluna não aceite valores nulos.

-- UNIQUE: Garante que todos os valores em uma coluna sejam únicos.

-- PRIMARY KEY: Combina as restrições NOT NULL e UNIQUE, garantindo que uma coluna seja a chave primária da tabela.

-- FOREIGN KEY: Garante a integridade referencial entre duas tabelas, vinculando uma coluna em uma tabela à chave primária de outra tabela.

-- CHECK: Garante que os valores em uma coluna atendam a uma condição específica.

-- DEFAULT: Define um valor padrão para uma coluna quando nenhum valor é especificado durante a inserção de dados.

CREATE TABLE Produtos (
    CodProduto SMALLINT PRIMARY KEY,
    NomeProduto VARCHAR(50) NOT NULL UNIQUE,
    CodFornecedor SMALLINT DEFAULT 1520,
    Validade DATE NOT NULL,
    PrecoProduto MONEY NOT NULL CHECK(PrecoProduto > 0),
    CONSTRAINT fk_id_fornecedor FOREIGN KEY (CodFornecedor)
    REFERENCES fornecedores (CodFornecedor) ON DELETE CASCADE
);
-- Exemplo de inserção de dados na tabela Produtos
INSERT INTO Produtos (CodProduto, NomeProduto, Validade, PrecoProduto)
VALUES (1, 'Produto A', '2025-12-31', 100.00);