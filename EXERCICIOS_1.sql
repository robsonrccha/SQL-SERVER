-- Exercícios SQL - Seleção e Criação de Tabelas

-- Perguntas & Respostas
-- 1)Retornar os nomes de livros, preços e datas de publicação.
SELECT NomeLivro, PrecoLivro, DataPub
FROM Livro;

-- 2)Mostrar apenas os sobrenomes dos autores
SELECT SobrenomeAutor
FROM Autor;

-- 3)Retornar a lista de assuntos
SELECT * FROM Assunto;

-- 4)Mostrar a lista de editoras com os IDs de cada uma, com a coluna de nomes de editoras à esquerda da coluna de IDs.
SELECT NomeEditora, IdEditora
FROM Editora;

-- 5)Mostrar os IDs de assuntos dos quais existem livros cadastrados na tabela de livros, sem repetição.
SELECT DISTINCT IdAssunto
FROM Livro;

-- 6)Criar uma nova tabela chamada "LivrosFiccao" que contenha todos os dados dos livros relacionados ao assunto de ID 1 (Ficção Científica).
SELECT *
INTO LivrosFiccao
FROM Livro
WHERE IdAssunto = 1;

SELECT * FROM LivrosFiccao;