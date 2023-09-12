create database proc_datos_02;
use proc_datos_02;
create table alumno(
legajo int,
dni varchar(8),
nombre varchar(50),
apellido varchar(50),
fecha_ing date,
primary key (legajo)
);

insert into alumno (legajo, dni, nombre, apellido, fecha_ing) values (211, 45622398, 'Federico', 'Valbuena', '12-05-19');
insert into alumno (legajo, dni, nombre, apellido, fecha_ing) values (399, 45111222, 'María', 'Rodriguez', '30-03-21');
insert into alumno (legajo, dni, nombre, apellido, fecha_ing) values (125, 45562432, 'Luis', 'Martínez', '08-08-22');
select * from alumno;

-- Clave candidata: legajo

create table duracion(
durac_tec int,
durac_ing int
);

insert into duracion (durac_tec, durac_ing) values (2, 5);

create table carrera(
cod_carrera int,
denominacion varchar(80),
regional varchar(3),
duracion int,
primary key (cod_carrera)
);

insert into carrera (cod_carrera, denominacion, regional, duracion) values (2336, 'Derecho', 'MZA', 5);
insert into carrera (cod_carrera, denominacion, regional, duracion) values (9834, 'Abogacía', 'SFE', 5);
insert into carrera (cod_carrera, denominacion, regional, duracion) values (2211, 'Programación', 'MZA', 2);

-- Clave candidata: cod_carrera

create table alumno_carrera(
cod_carrera1 int,
legajo1 int,
foreign key (cod_carrera1) references carrera (cod_carrera),
foreign key (legajo1) references alumno (legajo)
);

insert into alumno_carrera values (2336, 399);

-- Carrera: cod_carrera  -> denominacion, regional, duracion
-- Alumno: legajo -> dni, nombre, apellido, fecha_ing