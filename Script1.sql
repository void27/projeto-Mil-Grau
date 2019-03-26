
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

create table Usuario(
id_user	int primary key,
empresa	varchar(30)	not null,
cnpj	char(14)	not null,
tel		varchar(12),
email	varchar(50)	not null
);

create table sensor(
id_sen	int	primary key auto_increment,
id_user	int,
foreign key (id_user) references Usuario(id_user)
);

INSERT INTO T_Int values
(1,34.5,90,null),
(2,23.7,67,null);

INSERT INTO Alerta values
(1,'verde','Aumento leve na temperatura',1),
(2,'Vermelho','Aumento brusco na temperatura',2);

INSERT INTO Usuario values
(1,'A','12345678907890','011945868379','A@gmail.com'),
(2,'B','84562938475827','011902938469','B@gmail.com'),
(3,'C','29139834092384','011945868378','C@gmail.com'),
(4,'D','12938402389702','011938479383','D@gmail.com');

INSERT INTO sensor values
(null,1),
(null,2),
(null,3),
(null,3),
(null,1),
(null,2),
(null,3),
(null,2),
(null,3),
(null,4),
(null,4),
(null,2),
(null,3),
(null,1),
(null,2);

desc T_Int;
desc Alerta;
desc Usuario;
desc sensor;
SELECT * FROM Alerta;
SELECT * FROM T_Int;
SELECT a.id_Alerta, Cor, Descricao, a.id, Temp, Umidade, Horario FROM Alerta as a, T_Int as t
WHERE a.id = t.id;
SELECT * FROM Sensor ORDER BY id_sen asc;
SELECT s.id_sen , s.id_user, empresa, email FROM sensor as s, Usuario as u
WHERE s.id_user = u.id_user ORDER BY id_sen asc;