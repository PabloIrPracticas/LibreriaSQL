/*CREATE VIEW ver_prestamos_usuario AS
	SELECT p.id_prestamo, p.id_libro, p.fecha_prestamo, p.fecha_devolucion, u.id_usuario, u.dni, u.nombre, u.email, u.edad, u.sancionado FROM prestamos p
		JOIN usuarios u
		ON p.id_usuario = u.id_usuario
		WHERE p.id_libro IN
			(SELECT id_libro FROM libros WHERE disponible = 0)*/

SELECT nombre AS Usuario, COUNT (id_prestamo) AS LibrosPrestados from ver_prestamos_usuario
GROUP BY nombre