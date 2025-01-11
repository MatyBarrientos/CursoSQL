Use master;
Go


--MDF: master data file
--LDF: log data file
--Name
--NameFile
--Size
--MaxSize
--FileGrowth (tama�o en el que va a crecer (de a cuanto? esa seria la pregunta))

create database MundoPokemon_DB on(
Name='MundoPokemon_DB',
FileName='D:\Estudios\Curso Maxi Programa\Bases de datos\Querys\MundoPokemon\MundoPokemon_DB.mdf',
size=10MB,
MaxSize=500mb,
FileGrowth=100mb)

log on(
Name='MundoPokemon_DB_log',
FileName='D:\Estudios\Curso Maxi Programa\Bases de datos\Querys\MundoPokemon\MundoPokemon_DB_log.ldf',
size=10MB,
MaxSize=500mb,
FileGrowth=100mb)
;

--Create Table (Tema a ver)
--GO 
--no es necesario ejecutar todo de nuevo, pero es como ejemplo

Use MundoPokemon_DB
Go --el 'GO' va entre bloques de codigos

create table Elementos(
Id int primary key, --modo acortado
--CONSTRAIN PK_Elementos PRIMARY KEY (Id) --modo intermedio
--es un nombre PK_Elementos*
Descripcion varchar(50));


go
--creacion de tabla pokemon
create table Pokemons(
--nombre
--tipo de dato
--null or not null
Id int not null,
Nombre varchar(50)
CONSTRAINT PK_IDPokemon PRIMARY KEY (Id)
);

go
--Creacion table Entrenadores
create table Entrenadores(
Id int not null ,
Nombre varchar(50),
Apellido varchar(50),
NickkName varchar (50),
Email varchar(100),
Clave varchar (25),
FechaNacimiento  date
);
GO
--Claves Foraneas
CREATE TABLE Habilidades(
    Id INT NOT NULL,
    Nombre VARCHAR(50),
    Descripcion VARCHAR(50),
    IdTipo int,
    CONSTRAINT PK_Habilidad PRIMARY KEY (Id)
)
GO
CREATE TABLE [Pokemons.Habilidades](
    Id INT NOT NULL,
    IdPokemon INT,
    IdHabiilidad INT,
    CONSTRAINT PK_Pokemon_Habilidad PRIMARY KEY (Id),
    CONSTRAINT FK_PokeHabilidad_Habilidad FOREIGN KEY (IdHabiilidad) REFERENCES Habilidades(Id),
    CONSTRAINT FK_PokeHabilidad_Pokemons FOREIGN KEY (IdPokemon) REFERENCES Pokemons (Id)
)