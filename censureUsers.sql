CREATE PROCEDURE sancionar_retrasos
	@dias INT
AS
BEGIN
	UPDATE u
	SET sancionado = 1
	FROM usuarios u
	INNER JOIN prestamos p ON u.id_usuario = p.id_usuario
	WHERE p.fecha_devolucion IS NULL
	  AND DATEDIFF(DAY, p.fecha_prestamo, GETDATE()) > @dias;
END