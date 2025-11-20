CREATE DATABASE BIBLIOTECA;

USE BIBLIOTECA;
/*Requisitos do Banco Biblioteca

Vamos armazenar os seguintes dados neste banco:
• Nomes dos Livros
• Nomes e Sobrenomes de Autores
• Nomes de Editoras
• Categorias de Assuntos
• Preços e Datas de Publicação dos Livros
• Número ISBN 13 de cada obra
• Quantidade de Páginas de cada livro

Regras de Negócio:
• Todo livro terá um nome e um ISBN cadastrados
• Todo autor terá nome e sobrenome cadastrado
• Os livros podem ter mais de um autor
• Códigos de ID dos livros iniciam a partir de 100
• Toda editora terá um nome cadastrado
• Todo livro pertencerá a um único assunto (principal)
• Todo livro terá preço, mas não é obrigatória a data de publicação
• O número de páginas de cada livro é obrigatório */

CREATE TABLE Autor (
    IdAutor SMALLINT PRIMARY KEY IDENTITY,
    NomeAutor VARCHAR(50) NOT NULL,
    SobrenomeAutor VARCHAR(60) NOT NULL
);

sp_help Autor;

CREATE TABLE Editora (
    IdEditora SMALLINT PRIMARY KEY IDENTITY,
    NomeEditora VARCHAR(50) NOT NULL
);

CREATE TABLE Assunto (
    IdAssunto TINYINT PRIMARY KEY IDENTITY,
    NomeAssunto VARCHAR(30) NOT NULL
);

CREATE TABLE Livro (
    IdLivro SMALLINT PRIMARY KEY IDENTITY(100,1),
    IdEditora SMALLINT NOT NULL,
    IdAssunto TINYINT NOT NULL,
    NomeLivro VARCHAR(100) NOT NULL,
    ISBN_13 CHAR(13) NOT NULL UNIQUE,
    DataPub DATE,
    PrecoLivro MONEY NOT NULL,
    NumPaginas SMALLINT NOT NULL,
    CONSTRAINT fk_id_editora FOREIGN KEY(IdEditora)
    REFERENCES Editora(IdEditora) ON DELETE CASCADE,
    CONSTRAINT fk_id_assunto FOREIGN KEY(IdAssunto)
    REFERENCES Assunto(IdAssunto) ON DELETE CASCADE,
    CONSTRAINT verifica_preco CHECK(PrecoLivro >= 0)
);

CREATE TABLE LivroAutor (
    IdLivro SMALLINT NOT NULL,
    IdAutor SMALLINT NOT NULL,
    CONSTRAINT pk_livro_autor PRIMARY KEY (IdLivro, IdAutor),
    CONSTRAINT fk_id_livro FOREIGN KEY (IdLivro)
    REFERENCES Livro(IdLivro),
    CONSTRAINT fk_id_autor FOREIGN KEY (IdAutor)
    REFERENCES Autor(IdAutor)
);


SELECT name FROM BIBLIOTECA.sys.tables;