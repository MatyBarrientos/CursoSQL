Use master;
Go


--MDF: master data file
--LDF: log data file
--Name
--NameFile
--Size
--MaxSize
--FileGrowth (tamaño en el que va a crecer (de a cuanto? esa seria la pregunta))

create database MundoPokemon_DB on(
Name='MundoPokemon_DB',
FileName='D:\Estudios\Cursos MaxiPrograma\Bases de datos\Querys\MundoPokemon\MundoPokemon_DB.mdf',
size=10MB,
MaxSize=500mb,
FileGrowth=100mb)

log on(
Name='MundoPokemon_DB_log',
FileName='D:\Estudios\Cursos MaxiPrograma\Bases de datos\Querys\MundoPokemon\MundoPokemon_DB_log.ldf',
size=10MB,
MaxSize=500mb,
FileGrowth=100mb)
;

--Create Table (Tema a ver)
--GO 
--no es necesario ejecutar todo de nuevo, pero es como ejemplo

Use MundoPokemon_DB
Go --el go va entre bloques de codigos
--creacion de tabla pokemon
create table Pokemons(
--nombre
--tipo de dato
--null or not null
Id int,
Nombre varchar(50)
);