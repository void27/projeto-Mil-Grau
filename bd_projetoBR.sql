create database projet0;
use projet0;
CREATE TABLE Fruta (
idFruta int PRIMARY KEY,
nome varchar(40),
temperatura double,
umidade double
);

CREATE TABLE Alerta (
idAlerta int PRIMARY KEY,
cor varchar (40),
Descrição varchar (60)
);

CREATE TABLE Temp_Umi (
id int PRIMARY KEY,
temperatura double,
umidade double,
datahora datetime,
idAlerta int,
FOREIGN KEY(idAlerta) REFERENCES Alerta (idAlerta)
);

CREATE TABLE Historico_Alerta (
id int PRIMARY KEY
);

CREATE TABLE armazena (
id int,
idAlerta int,
FOREIGN KEY(id) REFERENCES Historico_Alerta (id),
FOREIGN KEY(idAlerta) REFERENCES Alerta (idAlerta)
);

CREATE TABLE Relação_2 (
idFruta int,
idTexto int,
FOREIGN KEY(idFruta) REFERENCES Fruta (idFruta)/*falha: chave estrangeira*/
);

select * from Alerta, Temp_Umi where Alerta.idAlerta = Temp_Umi.idAlerta;
