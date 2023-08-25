DECLARE @nome_autor VARCHAR(100);
SET @nome_autor = 'Juca da Silva';
SELECT @nome_autor as "Nome";
/******************************/

DECLARE @titulo_Livro VARCHAR(100)
SELECT @titulo_Livro = Livro.titulo
FROM Livro 
WHERE Livro.isbn = '8532511015'
SELECT @titulo_Livro AS "Livro"
/******************************/

-- Declara
DECLARE @anoPublicacao INT, @anoAtual INT, @nome_Livro VARCHAR(100);
SET @anoAtual = 2023;
-- Procura
SELECT @nome_Livro = Livro.titulo, @anoPublicacao = Livro.ano
FROM Livro
WHERE isbn = '8532511015'
-- Calcula e mostra
SELECT @nome_Livro AS "Titulo Livro", (@anoAtual - @anoPublicacao) AS "Idade Livro"
/******************************/

SELECT 'O livro "' + titulo + '" eh o ano ' +
CAST(ano AS VARCHAR(10)) AS "Descricao"
FROM Livro
WHERE isbn = '8532511015'
/******************************/	

SELECT 'A data do autor eh : ' +
CONVERT(VARCHAR(10), dbo.Autor.DataNasc)
FROM Autor
WHERE Autor.id = 1

SELECT 'A data da venda eh : ' +
CONVERT(VARCHAR(10),dbo.Autor.dataNasc,103)
FROM Autor
WHERE Autor.id = 1
/******************************/


/******************************/