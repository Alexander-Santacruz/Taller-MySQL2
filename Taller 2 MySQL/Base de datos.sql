/* 
  Script #1
  Creación de la base de datos y tablas del sistema de Gestión de Talento Humano.
  Este script define la estructura principal y carga 25 registros por tabla.
*/

CREATE DATABASE IF NOT EXISTS techsolutions_db;
USE techsolutions_db;

/* Tabla de departamentos de la empresa */
CREATE TABLE departamento(
    idDepartamento INT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Ubicacion VARCHAR(120)
);

/* Tabla de cargos o posiciones laborales */
CREATE TABLE cargo(
    idCargo INT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    SalarioBase DECIMAL(10,2) NOT NULL
);

/* Tabla de empleados, relacionando su cargo y su departamento */
CREATE TABLE empleado(
    idEmpleado INT PRIMARY KEY,
    NombreCompleto VARCHAR(150) NOT NULL,
    Correo VARCHAR(120) UNIQUE NOT NULL,
    Telefono VARCHAR(20),
    FechaNacimiento DATE,
    FechaContratacion DATE NOT NULL,
    idDepartamento INT NOT NULL,
    idCargo INT NOT NULL,

    FOREIGN KEY (idDepartamento) REFERENCES departamento(idDepartamento),
    FOREIGN KEY (idCargo) REFERENCES cargo(idCargo)
);

/* Proyectos de la empresa */
CREATE TABLE proyecto(
    idProyecto INT PRIMARY KEY,
    NombreProyecto VARCHAR(150) NOT NULL,
    FechaInicio DATE,
    FechaFin DATE
);

/* Relación N:M entre empleados y proyectos */
CREATE TABLE empleado_proyecto(
    idEmpleado INT,
    idProyecto INT,
    RolEnProyecto VARCHAR(100),
    PRIMARY KEY (idEmpleado, idProyecto),

    FOREIGN KEY (idEmpleado) REFERENCES empleado(idEmpleado),
    FOREIGN KEY (idProyecto) REFERENCES proyecto(idProyecto)
);

/* Insertar 25 departamentos */
INSERT INTO departamento VALUES
(1,'Tecnología','Piso 3'), (2,'Marketing','Piso 4'), (3,'Finanzas','Piso 2'),
(4,'RRHH','Piso 1'), (5,'Ventas','Piso 5'), (6,'Operaciones','Piso 6'),
(7,'Investigación','Piso 7'), (8,'Soporte','Piso 3'), (9,'Producción','Piso 4'),
(10,'Diseño','Piso 6'), (11,'Legal','Piso 2'), (12,'Planeación','Piso 5'),
(13,'Seguridad','Piso 1'), (14,'Calidad','Piso 6'), (15,'Compras','Piso 4'),
(16,'Logística','Piso 3'), (17,'Desarrollo','Piso 7'), (18,'Analítica','Piso 8'),
(19,'Comunicaciones','Piso 2'), (20,'Innovación','Piso 9'),
(21,'Exportaciones','Piso 5'), (22,'Importaciones','Piso 6'),
(23,'Administración','Piso 1'), (24,'Gerencia','Piso 8'),
(25,'Atención al cliente','Piso 3');

/* Insertar 25 cargos */
INSERT INTO cargo VALUES
(1,'Desarrollador Jr',3000), (2,'Desarrollador Sr',5500), (3,'Analista de Datos',4500),
(4,'Gerente de Proyecto',7000), (5,'Diseñador UX',4000), (6,'Soporte Técnico',2800),
(7,'Contador',5000), (8,'Director RRHH',6500), (9,'Vendedor',2500),
(10,'Marketing Digital',3800), (11,'Scrum Master',6200), (12,'Tester QA',3500),
(13,'DevOps',6000), (14,'Investigador IA',7000), (15,'Profesional Seguridad',4200),
(16,'Logístico',3000), (17,'Auxiliar Administrativo',2600), (18,'Gerente General',9000),
(19,'Coordinador TI',5800), (20,'Psicólogo',3200), (21,'Producción',2700),
(22,'Diseñador Industrial',3900), (23,'Economista',4800),
(24,'Abogado',5200), (25,'Consultor',6000);

/* Insertar 25 empleados */
INSERT INTO empleado VALUES
(1,'Carlos Ruiz','carlos@example.com','3001111111','1990-05-10','2020-01-01',1,2),
(2,'María López','maria@example.com','3002222222','1992-03-12','2021-02-10',1,1),
(3,'Ana Torres','ana@example.com','3003333333','1985-11-15','2018-03-20',4,8),
(4,'Pedro Gómez','pedro@example.com','3004444444','1988-09-25','2019-04-01',3,7),
(5,'Laura Rivas','laura@example.com','3005555555','1995-06-30','2022-01-15',2,10),
(6,'Santiago Quintero','santiago@example.com','3006666666','1991-07-07','2020-11-11',17,11),
(7,'Valeria Navas','valeria@example.com','3007777777','1994-01-18','2022-09-20',8,6),
(8,'Ricardo Páez','ricardo@example.com','3008888888','1989-04-29','2017-06-25',5,9),
(9,'Daniel Méndez','daniel@example.com','3009999999','1993-02-28','2019-05-12',7,14),
(10,'Karen Molina','karen@example.com','3101111111','1996-10-05','2023-01-10',1,12),
(11,'Camilo Ortiz','camilo@example.com','3102222222','1997-07-23','2023-02-20',14,15),
(12,'Juliana Díaz','juliana@example.com','3103333333','1990-09-17','2016-03-04',4,20),
(13,'Esteban Mora','esteban@example.com','3104444444','1992-04-14','2017-05-01',20,18),
(14,'Isabella Rey','isabella@example.com','3105555555','1993-12-25','2019-08-08',18,3),
(15,'Nicolás Prado','nicolas@example.com','3106666666','1987-03-30','2014-01-12',16,16),
(16,'Valentina Cárdenas','valentina@example.com','3107777777','1998-11-09','2023-06-01',13,15),
(17,'Juan David Pérez','juandavid@example.com','3108888888','1991-08-18','2018-09-14',6,13),
(18,'Sara Montoya','sara@example.com','3109999999','1995-05-21','2020-10-10',19,10),
(19,'Oscar Herrera','oscar@example.com','3111111111','1986-01-05','2010-05-15',3,7),
(20,'Luisa Acosta','luisa@example.com','3112222222','1990-02-22','2015-07-21',23,24),
(21,'Mateo Ramírez','mateo@example.com','3113333333','1997-06-19','2021-11-01',15,17),
(22,'Paula Sánchez','paula@example.com','3114444444','1999-08-08','2023-03-03',25,9),
(23,'Andrés Castaño','andres@example.com','3115555555','1996-04-03','2022-12-12',10,5),
(24,'Jorge Medina','jorge@example.com','3116666666','1985-09-02','2013-09-01',21,25),
(25,'Elena Vargas','elena@example.com','3117777777','1994-01-15','2019-04-04',11,24);
