--Ayuda de Busqueda rápida
Select * from Peliculas	
Select * from Reparto
Select * from Categorias
Select * from Plataformas
Select * from [Peliculas.Categorias]
Select * from [Peliculas.Plataformas]
Select * from [Peliculas.Reparto]
select * from Clasificaciones
select * from [Peliculas.Clasificaciones]




--Punto 1

Select Id, FechaEstreno,Titulo, MinutosDuracion, Bio as 'Descripcion' from Peliculas 
where year(FechaEstreno)  between 1980 and 1989

--Punto 2
Select 
R.Nombre + ' ' + R.Apellido AS Actor ,
R.FechaNacimiento AS 'Fecha de Nacimiento',
P.Nombre as Pais 
from Reparto R
Inner join Paises P On R.IdNacionalidad = P.Id
where year (FechaNacimiento) between 1970 and 1979

--Punto 3
Select 
P.Titulo as Pelicula
From Peliculas P
Inner Join [Peliculas.Plataformas] PP On P.Id=PP.IdPelicula
where PP.IdPlataforma=3

--Punto 4
select count (*) 'Cantidad de Peliculas' from [Peliculas.Clasificaciones] PC
Inner Join  Clasificaciones C On PC.IdClasificacion=C.Id
where  C.Descripcion like '%Restringida%'

--Punto 5
select Titulo as Pelicula, MinutosDuracion as Duracion
From Peliculas 
where MinutosDuracion=(select max(MinutosDuracion) from Peliculas)

--Punto 6
select  P.Titulo 'Pelicula' from Peliculas P
Inner Join [Peliculas.Categorias] PC on P.Id=PC.IdPelicula
Inner Join  Categorias C On PC.IdCategoria=C.Id
where  C.Descripcion like '%Super%'

--Punto 7
select count (*) from [Peliculas.Reparto]
where IdPelicula=7

--Punto 8
select R.Nombre + ' '+R.Apellido as 'Nombre', P.Nombre as 'Nacionalidad', R.FechaNacimiento as 'F.Nacimiento'  from Reparto R
Inner Join Paises P on R.IdNacionalidad=P.Id
Inner Join [Peliculas.Reparto] PR On R.Id=PR.IdReparto
where PR.IdPelicula=7

--Punto 9

select count(*) 'Cantidad de Peliculas'
from Peliculas

--Punto 10
select Nombre +' '+Apellido as Usuario,Email, FechaCreacion , FotoPerfilURL
from Usuarios where Activo=0

--Punto 11
--select * from Peliculas

insert into Peliculas (FechaEstreno,Titulo,MinutosDuracion,Bio)
values ('1968-01-11', 'The Good, the Bad and the Ugly',162,
'Tres hombres violentos pelean por una caja que alberga 200 000 dólares, la cual fue escondida durante la Guerra Civil. Dado que ninguno puede encontrar la tumba donde está el botín sin la ayuda de los otros dos, deben colaborar, pese a odiarse.')

--Punto 12

--Snape Usuario ID 4, The Good, the Bad and the Ugly ID 26
--select * from [Usuarios.Favoritos]
--where IdUsuario=4

--insert into [Usuarios.Favoritos] (IdUsuario,IdPelicula,FechaFavorito)
--values(4,26,'2024-12-27')

INSERT INTO [Usuarios.Favoritos] (IdUsuario, IdPelicula, FechaFavorito)
SELECT 
    U.Id, 
    (SELECT MAX(Id) FROM Peliculas), 
    '2024-12-27'
FROM Usuarios U
WHERE U.Apellido  = 'Snape';

--Punto 13
--Netflix id 1 amazon id 2
--Pelicula id 26 o el ultimo

Select * from Plataformas
Select * from [Peliculas.Plataformas]

INSERT INTO [Peliculas.Plataformas] (Id,IdPelicula, IdPlataforma, FechaAlta)
SELECT 
	(SELECT MAX(Id)+1 FROM [Peliculas.Plataformas]),
    (SELECT MAX(Id) FROM Peliculas), 
    P.Id, 
    '2024-12-27'
FROM Plataformas P
WHERE P.Nombre IN ('Netflix');

INSERT INTO [Peliculas.Plataformas] (Id,IdPelicula, IdPlataforma, FechaAlta)
SELECT 
	(SELECT MAX(Id)+1 FROM [Peliculas.Plataformas]),
    (SELECT MAX(Id) FROM Peliculas), 
    P.Id, 
    '2024-12-27'
FROM Plataformas P
WHERE P.Nombre IN ('Amazon Prime Video');


--Punto 14




INSERT INTO Peliculas (FechaEstreno, Titulo, MinutosDuracion, Bio, IdDirector) VALUES ('2014-08-21', 'Relatos Salvajes', 122, 'Seis relatos que alternan la intriga, la comedia y la violencia. Sus personajes se verán empujados hacia el abismo y hacia el innegable placer de perder el control al cruzar la delgada línea que separa la civilización de la barbarie.', 112); --el director no está ingresado
INSERT INTO [Peliculas.Categorias] (Id, IdCategoria, IdPelicula) VALUES (75, 6, 2); --no puedo agregar el id (seguramente es auto incremental)
INSERT INTO [Peliculas.Plataformas] (IdPelicula, IdPlataforma, FechaAlta) VALUES (24, 10, '2024-03-27'); --si o si hay que ingresar el valor del id manualmente, acá no lo pusimos


--Punto 15

Select * from [Peliculas.Plataformas]
update [Peliculas.Plataformas]
set FechaBaja=null
where IdPelicula=3 and IdPlataforma= 9;

 Select Pe.Titulo as 'Pelicula', Pl.Nombre as 'Plataforma', PP.FechaBaja as 'Fecha Baja' From Peliculas Pe 
inner join [Peliculas.Plataformas] PP on PP.IdPelicula=Pe.Id
inner join Plataformas Pl on PP.IdPlataforma=Pl.Id
update [Peliculas.Plataformas]
set FechaBaja='2024-01-16'
where IdPelicula=3 and IdPlataforma= 9;



update [Peliculas.Plataformas]
set FechaBaja=null;


--Punto 16

Select PE.Titulo as 'Pelicula',  R.Nombre + '' + R.Apellido as 'Actor',R.Id as 'ID', PR.Protagonista as 'Prota'  from Peliculas PE
inner join [Peliculas.Reparto]  PR on PE.Id=PR.IdPelicula
inner join Reparto  R on PR.IdReparto=R.Id
update [Peliculas.Reparto]
set IdReparto=107, Protagonista=1
where IdReparto=1 and IdPelicula=2

--Punto 17
Select Id , Nombre From Plataformas P
where id=10

Update Plataformas
set Nombre ='MaxiPrograma TV'
where Nombre like '%tubi%'

Select Id , Nombre From Plataformas P
where Nombre like 'Maxi%'


--Punto 18


select P.Id as 'ID Pelicula', P.Titulo as 'Pelicula',PC.IdClasificacion as 'ID Clasificacion', C.Descripcion as 'Descripcion'   from Peliculas P
inner join [Peliculas.Clasificaciones]  PC on P.Id=PC.IdPelicula
inner join Clasificaciones C on PC.IdClasificacion=C.Id
where P.Titulo  like 'spider%'

update [Peliculas.Clasificaciones]
set IdClasificacion = 1
where IdPelicula=12


--Punto 19

Select * from Usuarios
Delete From Usuarios
where Id=3

--Punto 20
select * from [Peliculas.Puntuacion]
-- se borraron todas a la chingada
Delete from [Peliculas.Puntuacion]
where year(FechaPuntuacion) between 2020 and 2023

--Punto 21
select * from Peliculas
where year(FechaEstreno) between 1980 and 1989

Delete from Peliculas --esta no es posible el borrado físico
where year(FechaEstreno) between 1980 and 1989

