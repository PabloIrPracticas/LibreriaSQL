CREATE PROCEDURE anadir_usuario
	@dni VARCHAR (20),
	@nombre VARCHAR(100),
	@email VARCHAR(100),
	@edad INT
AS
BEGIN
	INSERT INTO usuarios (
		dni,
		nombre,
		email,
		edad
	)
	VALUES (
	@dni,
	@nombre,
	@email,
	@edad);
END