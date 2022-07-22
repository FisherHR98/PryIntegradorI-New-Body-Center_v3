create database bdnewbodycenter
use bdnewbodycenter

CREATE TABLE admins (
  CODIGO varchar(5) NOT NULL,
  PASSW varchar(5) NOT NULL
) 
INSERT INTO admins (CODIGO, PASSW) VALUES
('A001', '12345'),
('A002', '12345');

select * from admins

CREATE TABLE cita (
  ID int NOT NULL primary key identity(1,1),
  NOMAPE varchar(60) NOT NULL,
  DNI_CLI varchar(8) NOT NULL,
  TELF varchar(9) NOT NULL,
  PACK varchar(25) NOT NULL,
  FECHA varchar(25) NOT NULL,
  HORA time(5) NOT NULL
)

INSERT INTO cita (NOMAPE, DNI_CLI, TELF, PACK, FECHA, HORA) VALUES
('Santiago', '75240025', '956279778', '02', '2022-05-27', '17:14:00.00000');
('Fernando', '98498498', '926755611', '04', '2022-05-27', '08:19:00.00000');

select * from cita



CREATE TABLE cliente (
  ID int NOT NULL PRIMARY KEY identity(1,1),
  NOMAPE varchar(30) NULL,
  DNI varchar(8) NOT NULL,
  TELF varchar(9) NOT NULL
) 

insert into cliente(NOMAPE,DNI,TELF) values
('Franklin de la cruz','75320746','959329189');

select * from cliente

CREATE TABLE paquete (
  CODE_P varchar(25) NOT NULL primary key,
  NOMB_PAQ varchar(30) DEFAULT NULL,
  PRECIO decimal(5,2) DEFAULT NULL
) 

INSERT INTO paquete (CODE_P, NOMB_PAQ, PRECIO) VALUES
('01', 'POSTLIPO', 45.00),
('02', 'FLACIDEZ', 451.20),
('03', 'REDUCTOR', 432.45),
('04', 'EMSCULT', 542.48),
('05', 'PEPTONAS', 59.20);

select * from paquete

ALTER TABLE cita 
ADD CONSTRAINT FK_cita_cliente FOREIGN KEY (DNI_CLI) REFERENCES cliente(ID);

ALTER TABLE cita 
ADD CONSTRAINT FK_cita_paquete FOREIGN KEY (PACK) REFERENCES paquete(CODE_P);


