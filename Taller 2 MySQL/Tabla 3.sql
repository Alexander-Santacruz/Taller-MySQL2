/* Agregar columna para manejar estado del empleado */
ALTER TABLE empleado ADD COLUMN Estado VARCHAR(20) DEFAULT 'Activo';

/* Actualizar salario de un cargo */
UPDATE cargo SET SalarioBase = 8000
WHERE idCargo = 4;

/* Eliminar un empleado puntual */
DELETE FROM empleado
WHERE idEmpleado = 25;

/* Opción para eliminar la tabla puente (solo ejemplo) */
DROP TABLE IF EXISTS empleado_proyecto;
