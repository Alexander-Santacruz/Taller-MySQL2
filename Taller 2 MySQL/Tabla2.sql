/* 1. Mostrar todos los empleados */
SELECT * FROM empleado;

/* 2. Ver solo nombres y correos */
SELECT NombreCompleto, Correo FROM empleado;

/* 3. Empleados del departamento de TI (id = 1) */
SELECT * FROM empleado
WHERE idDepartamento = 1;

/* 4. Empleados mujeres del departamento de TI (dado que no hay género, se usa lógica basada en nombres) */
SELECT * FROM empleado
WHERE idDepartamento = 1 AND NombreCompleto LIKE '%a';

/* 5. Trabajadores de TI o Marketing */
SELECT * FROM empleado
WHERE idDepartamento IN (1,2);

/* 6. Empleados cuyo apellido empieza en M */
SELECT * FROM empleado
WHERE NombreCompleto LIKE '% M%';

/* 7. Contratación entre 2020 y 2022 */
SELECT * FROM empleado
WHERE FechaContratacion BETWEEN '2020-01-01' AND '2022-12-31';

/* 8. Cargos cuyo salario base supera 4000 */
SELECT * FROM cargo
WHERE SalarioBase > 4000;

/* 9. Empleados nacidos después de 1990 */
SELECT * FROM empleado
WHERE FechaNacimiento > '1990-01-01';

/* 10. LIKE + AND combinados */
SELECT * FROM empleado
WHERE NombreCompleto LIKE '%a%' AND idDepartamento = 1;
