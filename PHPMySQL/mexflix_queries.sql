/*
Create Read Update Delete

Operaciones SQL a Datos

Create -   SQL   - INSERT
Read   -   SQL   - SELECT
Update -   SQL   - UPDATE
Delete -   SQL   - DELETE

Sintaxis
	CREATE
		Insertar 1 Registro
		INSERT INTO table (field_1, field_2, ..., field_n) 
			VALUES (value_1, value2, ..., value_n);

		Insertar varios registros:
		INSERT INTO table (field_1, field_2, ..., field_n) VALUES
			(value_1, value2, ..., value_n),
			(value_1, value2, ..., value_n),
			...,
			(value_1, value2, ..., value_n);

	READ
		Leer todos los campos de la tabla:
		SELECT * FROM table;

		Leer algunos campos de la tabla:
		SELECT field_1, field_2, field_n FROM table

		Leer un registro en particular buscando el valor de un campo
		SELECT * FROM table WHERE field_1 = 'valor_1'

		Leer un registro en particular buscando el valor de más de 2 campos con operadores lógicos
		SELECT * FROM table WHERE field_1 = 'valor_1' AND field_2 = 'valor_2'
		SELECT * FROM table WHERE field_1 = 'valor_1' OR field_2 = 'valor_2'

		Leer un registro en particular buscando el valor similar de un campo
		SELECT * FROM table WHERE field_1 LIKE '%valor_1'
		SELECT * FROM table WHERE field_1 LIKE 'valor_1%'
		SELECT * FROM table WHERE field_1 LIKE '%valor_1%'

		Saber cuantos registros tiene mi tabla:
		SELECT COUNT(*) FROM table;

	UPDATE
		Siempre agregar la clausula WHERE para evitar actualizar toda la tabla
		UPDATE table 
			SET field_1 = 'value_1', field_2 = 'value_2', ..., field_n = value_n 
			WHERE field = value

	DELETE
		Siempre agregar la clausula WHERE para evitar eliminar toda la tabla
		DELETE FROM table WHERE field = value


EJEMPLOS
	SELECT title, status_id FROM movieserie
	
*/