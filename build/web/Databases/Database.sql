create database Proyect_sierra_sun;
use Proyect_sierra_sun;

DROP TABLES if exists Articulos;
create table Articulos(
Codigo_A int(6) auto_increment,
Nombre varchar(20) not null,
Stock int(10) not null,
Estado varchar(30) not null,
Costo_Unidad int(5) not null,
Permisos int (10) default null,
primary key (Codigo_A),
unique key Codigo_A (Codigo_A)
);

drop table if exists Users;
create table Users(
id_Users int(6) not null auto_increment,
Usuario varchar(30) not null,
Nombre varchar(30) not null,
Apellido varchar(30) not null,
Password varchar(30) not null,
Acces_id int(6) not null,
primary key (id_Users),
unique key id_Users (id_Users)
);

drop table if exists Acces;
create table Acces(
id int(10) not null auto_increment,
tipo varchar(50) not null,
primary key (id),
unique key id(id)
);

drop table if exists Actividades;
create table Actividades(
id int(10) not null auto_increment,
nombre varchar(50) not null,
primary key (id),
unique key id (id)
);

alter table Users add constraint fk_UsersAcces foreign key (Acces_id) references Acces (id) on delete cascade on update cascade;



drop table if exists comunidades;
create table Comunidades(
id_Comunidad int(10) not null auto_increment,
Nombre varchar(50) not null,
Ubicacion varchar(50) not null,
Num_Actividades int(10) default null,
id_Activid int(10) default null,
id_Presupuesto int(10) default null,
primary key  (id_Comunidad),
unique key id_Comunidad (id_Comunidad)
);

alter table Comunidades add constraint fk_ComuActivi foreign key (id_Activid) references Actividades (id) on delete restrict on update cascade;

drop table if exists Presupuesto;
create table Presupuesto(
id_Presu int(10) not null auto_increment,
Cantidad int(10) not null,
Area_remitente varchar(50) not null,
Id_Comunidad int(10) default null,
primary key  (id_Presu),
unique key id_Presu (id_Presu));

alter table Comunidades add constraint fk_ComuPresu foreign key (id_Presupuesto) references Presupuesto (id_Presu) on delete restrict on update cascade;





