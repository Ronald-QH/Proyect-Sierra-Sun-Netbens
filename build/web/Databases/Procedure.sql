CREATE DEFINER=`root`@`localhost` PROCEDURE `insArtic`(
IN 	_Nombre varchar(20),
	_Stock int(10),
	_Estado varchar(30) ,
	_Costo_Unidad int(5),
	_Stock_maximo int (10)
)
begin
insert into Articulos(Nombre,Stock,Estado,Costo_Unidad,Stock_maximo) values (_Nombre,_Stock,_Estado,_Costo_Unidad,_Stock_maximo); 
end