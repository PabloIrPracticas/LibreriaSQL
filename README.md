# LibreriaSQL
Querys SQL para las prácticas de una biblioteca

* Hacer procedimientos para incluir filas a cada tabla
* Hacer un procedimiento que marque como sancionados a todos los usuarios que tengan un préstamo retrasado.

(Hacer primero sin usar vistas y después construyendo vistas para simplificar las querys)
* Contar el número de préstamos que hay actualmente
* Contar el número de libros que ha pedido prestados una persona en total
* Contar el número de libros que tiene cada persona en préstamo
* Ranking de las personas que han pedido prestados libros más caros de media
* Ranking de libros más prestados
* Contar cuántos ejemplares de cada libro hay
* Ranking de personas que más veces han pedido un mismo libro.

Podéis usar AUTO_INCREMENT para no preocuparos por las PRIMARY KEYS.
Y si hay columnas que no tengáis, podéis usar ALTER TABLE.

Añado un nuevo procedimiento para la práctica:
* Hacer un procedimiento que prorrogue un préstamo 7 días, recibiendo como parámetro el id del libro y del usuario.