/*CREATE VIEW ranking_prestamos_ejemplares_usuario AS
	SELECT TOP(5) u.nombre, l.titulo, COUNT(*) AS veces_prestado
	FROM usuarios u
	INNER JOIN prestamos p 
	ON u.id_usuario = p.id_usuario
	INNER JOIN libros l
	ON p.id_libro = l.id_libro
	GROUP BY u.nombre, l.titulo
	ORDER BY veces_prestado DESC;*/

SELECT * FROM ranking_prestamos_ejemplares_usuario