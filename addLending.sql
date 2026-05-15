CREATE PROCEDURE anadir_prestamo
	@id_usuario INT,
	@id_libro INT
AS
BEGIN
	-- Validar usuario
	IF NOT EXISTS (SELECT 1 FROM usuarios WHERE id_usuario = @id_usuario)
	BEGIN
		RAISERROR('El usuario no existe', 16, 1);
		RETURN;
	END

	-- Validar libro
	IF NOT EXISTS (SELECT 1 FROM libros WHERE id_libro = @id_libro)
	BEGIN
		RAISERROR('El libro no existe', 16, 1);
		RETURN;
	END

	-- Validar sanción
	IF EXISTS (SELECT 1 FROM usuarios WHERE id_usuario = @id_usuario AND sancionado = 1)
	BEGIN
		RAISERROR('El usuario está sancionado', 16, 1);
		RETURN;
	END

	-- Insertar préstamo
	INSERT INTO prestamos (id_usuario, id_libro)
	VALUES (@id_usuario, @id_libro);

	-- Actualizar disponible
	UPDATE libros
	SET disponible = 0
	WHERE id_libro = @id_libro;
END