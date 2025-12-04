--CONSULTA SIMPLES COM SELECT

-- Quais os livros cadastrados na tabela Livro?
SELECT NomeLivro FROM Livro;

-- Qual o sobrenome dos autores cadastrados na tabela Autor?
SELECT SobrenomeAutor FROM Autor;

-- Trazer todos os dados da tabela Editora
SELECT * FROM Editora;

-- QUAL O NOME E PREÇO DOS LIVROS CADASTRADOS NA TABELA LIVRO?
SELECT NomeLivro, PrecoLivro 
FROM Livro;

-- CONSULTA COM CLAUSULA DISTINCT: registros sem repetição
SELECT DISTINCT IDEDITORA 
FROM Livro;

-- SELECT INTO: criar uma nova tabela a partir de uma consulta
SELECT NomeLivro, ISBN_13
INTO LivrosISBN
FROM Livro;

SELECT * FROM LivrosISBN;

DROP TABLE LivrosISBN;