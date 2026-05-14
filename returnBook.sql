CREATE PROCEDURE devolver_libro
	@id_usuario INT,
	@id_libro INT
AS
BEGIN
	-- Validar préstamo activo
	IF NOT EXISTS (
		SELECT 1 
		FROM prestamos 
		WHERE id_usuario = @id_usuario
		  AND id_libro = @id_libro
		  AND fecha_devolucion IS NULL
	)
	BEGIN
		RAISERROR('No existe un préstamo activo', 16, 1);
		RETURN;
	END

	-- Cerrar préstamo
	UPDATE prestamos
	SET fecha_devolucion = GETDATE()
	WHERE id_usuario = @id_usuario
	  AND id_libro = @id_libro
	  AND fecha_devolucion IS NULL;

	-- Marcar libro como disponible
	UPDATE libros
	SET disponible = 1
	WHERE id_libro = @id_libro;
END