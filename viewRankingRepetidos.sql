/*CREATE VIEW view_ejemplares_repetidos AS
	SELECT TOP(5) titulo, COUNT(id_libro) AS Ejemplares
	FROM libros
	GROUP BY titulo
	ORDER BY Ejemplares DESC*/

Select * from view_ejemplares_repetidos