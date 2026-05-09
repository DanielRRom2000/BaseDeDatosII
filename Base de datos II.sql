create database	if not exists UpgConnect;
use UpgConnect;
create table if not exists	Students(
IdStudent int primary key not null auto_increment,
Nombres varchar(255) not null,
Apellidos varchar (255) not null,
Apodo varchar (50) not null default ('Sin apodo'),
Matricula varchar (20) not null,
Direccion varchar (1000) not null
);
insert into Students (Nombres, Apellidos, Apodo, Matricula, Direccion)
values ('Carlos', 'Garcia', 'Charly', 'F12100', 'Sucasa'),
	('Eduardo', 'Martinez', 'Edu', 'F12110', 'Micasa'),
    ('Daniel', 'Romero', 'Dani', 'F12111', 'Nuestracasa'),
    ('Cesar', 'Garcia', 'Cesarring', 'F12112', 'Lacasa'),
    ('Marlen', 'Ramirez', 'Mar', 'F12113', 'Ranchoviejo'),
    ('Omar', 'Argueta', 'Omarchinsqui', 'F12114', 'Ranchonuevo'),
    ('Javier', 'Dominguez', 'El Negro', 'F12115', 'Pueblonuevo'),
    ('Lucia', 'Reyna', 'Licha', 'F12116', 'Puebloviejo'),
    ('Christian', 'Marchan', '', 'F12117', 'Losangeles'),
    ('Franscisco', 'Gutierrez', 'Pancho', 'F12118', 'Santamarta');
    ('Miranda', 'Guerra', 'Miris', 'F12119', 'San Pedro');
    ('Jose', 'Soto', 'El Che', 'F12120', 'La Moderna');
select * from Students;
select * from Students where Nombres = 'carlos' ;

create table if not exists Degree(
	Idcarrera int primary key not null auto_increment,
	Carrera varchar(100) not null,    
    Grado varchar(50) not null
);
insert into Carreras (Carrera, Grado)
values ('ISC', 'Primero'),
	('ISC', 'Segundo'),
    ('ISC', 'Tercero'),
    ('ISC', 'Cuarto'),
    ('ISC', 'Quinto'),
    ('ISC', 'Sexto'),
    ('ISC', 'Septimo'),
    ('ISC', 'Octavo'),
    ('ISC', 'Noveno'),
    ('IMA', 'Primero'),
    ('IMA', 'Segundo'),
	('IMA', 'Tercero'),
    ('IMA', 'Cuarto'),
    ('IMA', 'Quinto'),
    ('IMA', 'Sexto'),
    ('IMA', 'Septimo'),
    ('IMA', 'Octavo'),
    ('IMA', 'Noveno'),
    ('IIA', 'Primero'),
    ('IIA', 'Segundo'),
	('IIA', 'Tercero'),
    ('IIA', 'Cuarto'),
    ('IIA', 'Quinto'),
    ('IIA', 'Sexto'),
    ('IIA', 'Septimo'),
    ('IIA', 'Octavo'),
    ('IIA', 'Noveno'),
    ('IIA', 'Decimo'),
    ('IME', 'Primero'),
    ('IME', 'Segundo'),
	('IME', 'Tercero'),
    ('IME', 'Cuarto'),
    ('IME', 'Quinto'),
    ('IME', 'Sexto'),
    ('IME', 'Septimo'),
    ('IME', 'Octavo'),
    ('IME', 'Noveno'),
    ('IME', 'Decimo'),
    ('MECA', 'Primero'),
    ('MECA', 'Segundo'),
	('MECA', 'Tercero'),
    ('MECA', 'Cuarto'),
    ('MECA', 'Quinto'),
    ('MECA', 'Sexto'),
    ('MECA', 'Septimo'),
    ('MECA', 'Octavo'),
    ('MECA', 'Noveno'),
    ('MECA', 'Decimo'),
select * from Degree;
select * from Degree where Carrera = 'ISC' ;

create table if not exists Teachers(
	IdMaestro int primary key not null auto_increment,
	FormacionAcademica varchar(200) not null,
	Nombres varchar(255) not null,
    Apellidos varchar(255) not null,
    Matricula varchar(100) not null
    );
insert into Maestros (FormacionAcademica, Nombres, Apellidos, Matricula)
values ('Doctorado', 'Luis Daniel', 'Cortez Sanchez', 'F00000'),
	('Maestria', 'Cesar', 'Porras Casares', 'F00001'),
    ('Ingenieria', 'Miranda', 'Guerra', 'F00002'),
    ('Doctorado', 'Marlen', ' Aviña Sanchez', 'F00003'),
    ('Maestria', 'Juan Carlos', 'Espinoza', 'F00004'),
    ('Doctorado', 'Arturo', 'Murillo', 'F00005'),
    ('Maestria', 'Aldo', 'Guajardo', 'F00006'),
    ('Ingenieria', 'Alexander', 'Baltazar Cortez', 'F00007'),
    ('Doctorado', 'Eduardo Sebastian', 'Martinez Guerra', 'F00008'),
    ('Maestria', 'Lucia Miranda', 'Martinez Guerra', 'F00009'),
    ('Doctorado', 'Alan Antonio', 'Martinez Ascencio', 'F00010'),
    ('Doctorado', 'Edurado Daniel', 'Martinez Ascencio', 'F00011'),
    ('Doctorado', 'Alan Isaac', 'Martinez Peña', 'F00012'),
    );
select * from Teachers;
select * from Teachers where Nombres = 'Eduardo' ;

Create table if not exists Subjects(
	Idmateria int primary key not null auto_increment,    
    Materia varchar(200) not null
    );
insert into Materias (Materia)
values ('Física 1'),
	('Matemáticas 1'),
    ('Álgebra'),
    ('Introducción a la Computación'),
    ('Introducción a la Ingeniería'),
    ('Química'),
    ('Física 2'),
    ('Matemáticas 2'),
    ('Ciencia de los Materiales'),
    ('Dibujo Técnico'),
    ('Teoría Administrativa'),
    ('Técnicas Computacionales 1'),
    ('Física 3'),
    ('Matemáticas 3'),
    ('Estática'),
    ('Liderazgo'),
    ('Procesos de Manufactura'),
    ('Técnicas Computacionales 2'),
    ('Física 4'),
    ('Matemáticas 4'),
    ('Circuitos Eléctricos 1'),
    ('Dinámica'),
    ('Lenguaje de Programación 1'),
    ('Máquinas Herramientas'),
    ('Circuitos Eléctricos 2'),
    ('Estadística 1'),
    ('Lenguaje de Programación 2'),
    ('Mecánica de Fluidos'),
    ('Metrología y Normalización'),
    ('Comunicación Efectiva'),
    ('Administración de los Servicios de Cómputo'),
    ('Electrónica Analógica'),
    ('Ingenieria de Software 1'),
    ('Estructura de Datos'),
    ('Lenguaje de Programación 3'),
    ('Sistemas Operativos 1'),
    ('Economía Empresarial'),
    ('Base de Datos 1'),
    ('Electrónica Digital 1'),
    ('Ingenieria de Software 2'),
    ('Lenguaje de programación 4'),
    ('Redes 1'),
    ('Sistemas Operativos 2'),
    ('Organización Empresarial'),
    ('Base de Datos 2'),
    ('Compiladores'),
    ('Circuitos Lógicos'),
    ('Lenguaje Ensamblador 1'),
    ('Redes 2'),
    ('Robótica'),
    ('Ambiente y Sustentabilidad'),
    ('Administración de Base de Datos'),
    ('Habilidades Directivas'),
    ('Programación Digital'),
    ('Lenguaje Ensamblador 2'),
    ('Realidad Virtual'),
    ('Utilería y Virus Informáticos'),
    ('Ética y Responsabilidad Social')
    );
select * from Subjects;
select * from Subjects where Materia = 'Matemáticas' ;