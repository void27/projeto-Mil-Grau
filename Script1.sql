
create table Frutas(
id int primary key,
Frutas varchar (40),
Temperatura double, 
Umidade int
);
select * from Frutas;

create table Alerta(
id_Alerta int primary key,
Cor varchar (20),
Descricao varchar (60),
id	int
);

alter table Alerta 
add FOREIGN KEY (id) REFERENCES T_Int(id);

drop table Alerta;

create table T_Int(
id int primary key,
Temp double not null,
Umidade double not null,
Horario datetime
);

desc T_Int;
desc Alerta;
SELECT * FROM Alerta;
SELECT * FROM T_Int;
SELECT a.id_Alerta, Cor, Descricao, a.id, Temp, Umidade, Horario FROM Alerta as a, T_Int as t
WHERE a.id = t.id;
INSERT INTO T_Int values
(1,34.5,90,null),
(2,23.7,67,null);

INSERT INTO Alerta values
(1,'verde','Aumento leve na temperatura',1),
(2,'Vermelho','Aumento brusco na temperatura',2);