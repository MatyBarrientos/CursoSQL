
--Insert into Peliculas (Titulo, Bio) values ('A quiet place', 'En un mundo invadido por alienigenas una familia trata de sobrevivir en silencio')

--select * From Peliculas
----Formato de Fecha YYYY-MM-DD
--Insert into Peliculas (FechaEstreno) values ()


--Update Peliculas Set
--FechaEstreno = '2012-04-05 14:55:00'
--Bio = 'En el año 2020, unas criaturas misteriosas con un sentido auditivo extraordinario han diezmado a la población mundial. Una familia se oculta en una cabaña y se comunica mediante la lengua de signos para no ser cazados por estos monstruos'
--Where Id = 26 --muy importante seleccionar cual voy a modificar

--Update Peliculas set
--FechaEstreno = '1977-01-13 22:00:00',
--Titulo = 'Rocky',
--MinutosDuracion = 119,
--Bio = 'Un humilde boxeador de Filadelfia, en el que nadie cree, tiene la oportunidad de cambiar su vida por completo si lucha por el título mundial contra el temible Apollo Creed.'
--Where Id=27

--Update Peliculas set
--FechaEstreno = '1994-07-15 22:00:00',
--Titulo = 'Gemelos',
--MinutosDuracion = 141,
--Bio = 'El agente especial Harry Tasker mantiene una doble vida. Harry trabaja como espía internacional para Omega, una agencia gubernamental ultrasecreta encargada de la neutralización del terrorismo nuclear, mientras su familia cree que es un vendedor. Sin embargo, sus dos vidas están a punto de converger'
--Where Id=28

--Update Peliculas set
--FechaEstreno = '1990-06-1 22:00:00',
--Titulo = 'El vengador del futuro',
--MinutosDuracion = 113,
--Bio = 'Doug Quaid, un hombre que lleva una vida tranquila, vive atormentado por una pesadilla que lo transporta a Marte. Desesperado, busca ayuda en Recall, una empresa de vacaciones virtuales que le ofrece la oportunidad de materializar su sueño'
--Where Id=27


--Update Peliculas set
--FechaEstreno = '2018-04-01 22:00:00',
--MinutosDuracion = 90
--Where Id=26
--Borrado lógico (como en prog 2) una columna del tipo bool en el que vemos un estado



--Delete 'Delete from Peliculas Where Id= *valor*' Nota no es una baja lógica

Select * from Peliculas
