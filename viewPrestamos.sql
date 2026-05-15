/*CREATE VIEW prestamos_activos AS
	SELECT p.id_prestamo, p.fecha_prestamo, p.fecha_devolucion, l.titulo, l.autor, l.precio, l.fecha_publicacion
	FROM prestamos p
	INNER JOIN libros l
	ON p.id_libro = l.id_libro
	WHERE l.disponible = 0*/

SELECT COUNT(*) AS Prestamos from prestamos_activos