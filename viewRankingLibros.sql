CREATE VIEW ranking_libros_prestamos AS
	SELECT TOP(5) l.titulo AS Libro, COUNT (*) AS Prestamos
	FROM prestamos p
	INNER JOIN libros l
	ON p.id_libro = l.id_libro
	GROUP BY l.titulo
	ORDER BY Prestamos