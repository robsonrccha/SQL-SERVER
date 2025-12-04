-- SINTAXE: INSERTO INTO nome_tabela (coluna1, coluna2, ...) VALUES (valor1, valor2, ...);

-- TABELA DE ASSUNTOS
INSERT INTO Assunto (NomeAssunto) 
VALUES
('Ficcao Cientifica'), ('Botanica'),
('Eletronica'), ('Matematica'),
('Aventura'), ('Romance'),
('Financas'), ('Gastronomia'),
('Terrror'), ('administracao'),
('Informatica'), ('Suspense');

SELECT * FROM Assunto;

-- TABELA DE EDITORAS
INSERT INTO Editora (NomeEditora)
VALUES
('Prentice Hall'), ('O´Reilley');

SELECT * FROM Editora;

INSERT INTO Editora (NomeEditora)
VALUES
('Aleph'), ('Microsoft Press'),
('Wileyx'), ('HarperCollins'),
('Érica'), ('Novatec'),
('MCGraw-Hill'), ('Apress'),
('Sybex'), ('Francisco Alves'),
('Globo'), ('Companhia das Letras'),
('Morro Branco'), ('Penguin Books'),
('Martin Claret'), ('Record'), ('Springer'),
('Melhoramentos'), ('Oxford'), ('Taschen'),
('Ediouro'), ('Bookman');

SELECT * FROM Editora;

-- TABELA DE AUTORES
INSERT INTO Autor (NomeAutor, SobrenomeAutor)
VALUES
('Isaac', 'Asimov'), ('Arthur C.', 'Clarke'),
('Jules', 'Verne'), ('H. G.', 'Wells'),
('Stephen', 'King'), ('Agatha', 'Christie'),
('Dan', 'Brown'), ('J. K.', 'Rowling'),
('George R. R.', 'Martin'), ('J. R. R.', 'Tolkien'),
('Yuval Noah', 'Harari'), ('Malcolm', 'Gladwell'),
('Walter', 'Isaacson'), ('Brian', 'Greene'),
('Carl', 'Sagan'), ('Neil deGrasse', 'Tyson'),
('Douglas', 'Adams'), ('Umberto', 'Eco'),
('Cixin', 'Liu'), ('Brandon', 'Sanderson'),
('Terry', 'Pratchett'), ('Philip K.', 'Dick'),
('Frank', 'Herbert'), ('Octavia E.', 'Butler'),
('Haruki', 'Murakami'), ('Margaret', 'Atwood'),
('James', 'Patterson'), ('Khaled', 'Hosseini'),
('Paulo', 'Coelho'), ('Rick', 'Riordan'),
('Neil', 'Gaiman'), ('Colleen', 'Hoover'),
('Isabel', 'Allende'), ('Gabriel García', 'Márquez'),
('Ernest', 'Hemingway'), ('Fiódor', 'Dostoiévski'),
('Machado de', 'Assis'), ('Clarice', 'Lispector'),
('Mary', 'Shelley'), ('Alexandre', 'Dumas');

SELECT * FROM Autor;

-- TABELA DE LIVROS
INSERT INTO Livro (IdEditora, IdAssunto, NomeLivro, ISBN_13, DataPub, PrecoLivro, NumPaginas)
VALUES
-- 1  Isaac Asimov
(3,  1, 'Fundação', '9780000000001', '1961-06-01', 69.90, 320),
-- 2  Arthur C. Clarke
(3,  1, '2001: Uma Odisseia no Espaço', '9780000000002', '1968-01-01', 59.90, 288),
-- 3  Jules Verne
(17, 5, 'Viagem ao Centro da Terra', '9780000000003', '1864-01-01', 39.90, 320),
-- 4  H. G. Wells
(17, 1, 'A Guerra dos Mundos', '9780000000004', '1898-01-01', 39.90, 272),
-- 5  Stephen King
(18, 9, 'O Iluminado', '9780000000005', '1977-01-28', 79.90, 512),
-- 6  Agatha Christie
(13,12, 'Assassinato no Expresso do Oriente', '9780000000006', '1934-01-01', 44.90, 256),
-- 7  Dan Brown
(18,12, 'O Código Da Vinci', '9780000000007', '2003-04-03', 69.90, 489),
-- 8  J. K. Rowling
(13, 5, 'Harry Potter e a Pedra Filosofal', '9780000000008', '1997-06-26', 59.90, 309),
-- 9  George R. R. Martin
(15, 5, 'A Guerra dos Tronos', '9780000000009', '1996-08-01', 89.90, 694),
-- 10 J. R. R. Tolkien
(17, 5, 'O Senhor dos Anéis: A Sociedade do Anel', '9780000000010','1954-07-29', 89.90, 576),
-- 11 Yuval Noah Harari
(14,10, 'Sapiens: Uma Breve História da Humanidade', '9780000000011','2011-01-01', 89.90, 512),
-- 12 Malcolm Gladwell
(18,10, 'Fora de Série', '9780000000012', '2008-01-01', 69.90, 320),
-- 13 Walter Isaacson
(14,10, 'Steve Jobs', '9780000000013', '2011-10-24', 99.90, 656),
-- 14 Brian Greene
(19, 1, 'O Universo Elegante', '9780000000014', '1999-01-01', 79.90, 464),
-- 15 Carl Sagan
(19, 1, 'Cosmos', '9780000000015', '1980-01-01', 89.90, 365),
-- 16 Neil deGrasse Tyson
(19, 1, 'Astrofísica para Apressados', '9780000000016', '2017-05-02', 59.90, 224),
-- 17 Douglas Adams
(15, 1, 'O Guia do Mochileiro das Galáxias', '9780000000017', '1979-10-12', 54.90, 224),
-- 18 Umberto Eco
(14,12, 'O Nome da Rosa', '9780000000018', '1980-01-01', 69.90, 592),
-- 19 Cixin Liu
(15, 1, 'O Problema dos Três Corpos', '9780000000019', '2008-01-01', 79.90, 416),
-- 20 Brandon Sanderson
(15, 5, 'Mistborn: O Império Final', '9780000000020', '2006-01-01', 79.90, 672),
-- 21 Terry Pratchett
(15, 5, 'Pequenos Deuses','9780000000021', '1992-01-01', 49.90, 416),
-- 22 Philip K. Dick
(3,  1, 'Androides Sonham com Ovelhas Elétricas?', '9780000000022','1968-01-01', 49.90, 256),
-- 23 Frank Herbert
(15, 1, 'Duna','9780000000023', '1965-01-01', 89.90, 688),
-- 24 Octavia E. Butler
(14, 1, 'Kindred: Laços de Sangue', '9780000000024', '1979-06-01', 59.90, 352),
-- 25 Haruki Murakami
(17, 12, 'Norwegian Wood','9780000000025', '1987-09-04', 64.90, 296),
-- 26 Margaret Atwood
(14, 12, 'O Conto da Aia','9780000000026', '1985-01-01', 54.90, 320),
-- 27 James Patterson
(18, 12, 'Alex Cross: Along Came a Spider','9780000000027', '1993-01-01', 49.90, 480),
-- 28 Khaled Hosseini
(13, 10, 'O Caçador de Pipas','9780000000028', '2003-05-29', 59.90, 371),
-- 29 Paulo Coelho
(14, 10, 'O Alquimista','9780000000029', '1988-01-01', 39.90, 208),
-- 30 Rick Riordan
(18, 5, 'Percy Jackson e o Ladrão de Raios','9780000000030', '2005-06-28', 59.90, 400),
-- 31 Neil Gaiman
(15, 12, 'Deuses Americanos','9780000000031', '2001-01-01', 69.90, 624),
-- 32 Colleen Hoover
(13, 7, 'É Assim que Acaba','9780000000032', '2016-08-02', 49.90, 384),
-- 33 Isabel Allende
(14, 7, 'A Casa dos Espíritos','9780000000033', '1982-01-01', 44.90, 481),
-- 34 Gabriel García Márquez
(14, 7, 'Cem Anos de Solidão','9780000000034', '1967-01-01', 64.90, 417),
-- 35 Ernest Hemingway
(17, 7, 'O Velho e o Mar','9780000000035', '1952-09-01', 34.90, 132),
-- 36 Fiódor Dostoiévski
(17, 7, 'Crime e Castigo','9780000000036', '1866-01-01', 79.90, 671),
-- 37 Machado de Assis
(3,  7, 'Dom Casmurro','9780000000037', '1899-01-01', 29.90, 256),
-- 38 Clarice Lispector
(3,  7, 'A Hora da Estrela','9780000000038', '1977-10-01', 34.90, 96),
-- 39 Mary Shelley
(17, 1, 'Frankenstein','9780000000039', '1818-01-01', 39.90, 280),
-- 40 Alexandre Dumas
(17, 12, 'O Conde de Monte Cristo','9780000000040', '1844-01-01', 89.90, 1312);

SELECT * FROM Livro;


--TABELA DE LIVRO/AUTOR
-- INSERINDO COM BULK 
INSERT INTO LivroAutor (IdLivro, IdAutor)
SELECT
    IdLivro,
    IdAutor
FROM OPENROWSET(
    BULK 'C:\Users\robso\Downloads\LivroAutor.csv',
    FORMATFILE = 'C:\Users\robso\Downloads\FormatoLivroAutor.xml',
    FIRSTROW = 2,
    CODEPAGE = '65001'
) AS LA;


SELECT * FROM LivroAutor;



