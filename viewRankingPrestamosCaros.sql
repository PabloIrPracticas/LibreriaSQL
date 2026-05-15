/*CREATE VIEW ranking_prestamos_caros AS
	SELECT TOP(5) u.nombre AS Usuario, AVG(l.precio) AS Precio_medio
	FROM usuarios u
	INNER JOIN prestamos p
    ON u.id_usuario = p.id_usuario
	INNER JOIN libros l
    ON p.id_libro = l.id_libro
	GROUP BY u.nombre
	ORDER BY precio_medio DESC*/

SELECT * from ranking_prestamos_caros