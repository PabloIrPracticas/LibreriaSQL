/*CREATE VIEW ver_prestados AS
	SELECT u.nombre AS Usuario, COUNT (p.id_prestamo) AS LibrosPrestados FROM prestamos p
	INNER JOIN usuarios u
	ON p.id_usuario = u.id_usuario
	GROUP BY u.nombre*/

SELECT * FROM ver_prestados;