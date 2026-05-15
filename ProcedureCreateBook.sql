CREATE PROCEDURE anadir_libro
	@titulo VARCHAR(100),
	@autor VARCHAR(100),
	@precio DECIMAL(10,2),
	@fecha_publicacion DATE
AS
BEGIN
	INSERT INTO libros (
		titulo,
		autor,
		precio,
		fecha_publicacion
	)
	VALUES (
	@titulo,
	@autor,
	@precio,
	@fecha_publicacion);
END