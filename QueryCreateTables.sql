CREATE TABLE libros (
	id_libro INT PRIMARY KEY IDENTITY(1,1),
	titulo VARCHAR(100) NOT NULL,
	autor VARCHAR(100) NOT NULL,
	precio DECIMAL(10,2) NOT NULL,
	fecha_publicacion DATE,
	disponible BIT DEFAULT 1
);

CREATE TABLE usuarios (
	id_usuario INT PRIMARY KEY IDENTITY(1,1),
	dni VARCHAR (20) UNIQUE,
	nombre VARCHAR(100) NOT NULL,
	email VARCHAR(100) UNIQUE,
	edad INT NOT NULL,
	sancionado BIT DEFAULT 0 NOT NULL
);

CREATE TABLE prestamos (
	id_prestamo INT PRIMARY KEY IDENTITY(1,1),
	id_usuario INT NOT NULL,
	id_libro INT NOT NULL,
	fecha_prestamo DATE NOT NULL DEFAULT GETDATE(),
	fecha_devolucion DATE,
	FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
	FOREIGN KEY (id_libro) REFERENCES libros(id_libro)
);