
--Operadores 'or' 'and' 'not'
--Otros Operadores 'IN' 'Between'
--Null (vacio absoluto) Nota cero no es lo mismo que null '0!=null'

--Join
--Inner Join
--Right Join
--Full OUTER Join


--Select * from Peliculas
--where Id = 9

--Select * from [Peliculas.Reparto] where IdPelicula = 9 

--Select top 5 * from Reparto where Id >=45

--Select * from Reparto
--Where Id = 5 
--or Id = 10 
--or Id = 11

--Select * From Peliculas
--where not (MinutosDuracion > 99 
--and MinutosDuracion <=120)
--and Bio like '%polic%'
--or Bio like '%cien%'
--and Titulo like '%a%'

-----------------------


--Select * From Reparto where Id in (10,15,66,67)
--Select * From Reparto where Id between 62 and 66
--Select * From Peliculas
--where year (FechaEstreno) between 2000 and 2009

Select * from Peliculas where IdDirector is not null
Select Titulo, Nombre From Peliculas P 
Inner Join Reparto R On P.IdDirector = R.Id --Combina datos bajo determinado comportamiento

Select Titulo as 'Pelicula', Nombre as 'Director'
From Peliculas P left Join Reparto R 
On P.IdDirector = R.IdNacionalidad

Select Titulo as 'Pelicula', Nombre as 'Director'
From Peliculas P full outer join Reparto R 
On P.IdDirector = R.IdNacionalidad

Select Titulo from Peliculas P
inner join [Peliculas.Reparto] PR On P.Id = PR.IdPelicula

