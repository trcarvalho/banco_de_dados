DROP DATABASE IF EXISTS TRABALHOPBD;
CREATE DATABASE TRABALHOPBD;
USE TRABALHOPBD;

create table empresa(
  Nome varchar(30) NOT NULL,
  END_CIDADE varchar(20) NOT NULL,
  END_CEP INT NOT NULL,
  END_NUMERO INT NOT NULL,
  END_RUA varchar(30) not null,
  CNPJ bigint not null
);
ALTER TABLE empresa add primary key (CNPJ);
INSERT INTO empresa values('GRAOS&CIA','Pelotas',96123453,2334,'Rua Dos Perdidos',91023341);


create table graos(
  id_grao varchar(15) not null,
  armazenado float(6) not null,
  qualidade char(2) not null
);
alter table graos add primary key (id_grao);
insert into graos values('feijão',200.0,'A2');


create table produtor(
  modelo_15 varchar(10) not nullem uma determinada
    CIDADE varchar(30) not null,
    END_CEP INT NOT NULL,
    END_NUMERO INT NOT NULL,
    END_RUA varchar(30) not null
  );
alter table cliente add primary key (cpf);
insert into cliente values('096.13.055-02','Pedro lima','Pelotas',96015666,233,'Av. Visconde de Amaral');


create table telefone(
  numero varchar(10) not null,
  modelo_15 varchar(10) ,
  cpf varchar(17)
);
alter table telefone add primary key (numero);
alter table telefone add foreign key (modelo_15) references produtor (modelo_15) on delete cascade on update cascade;
alter table telefone add foreign key (cpf) references cliente (cpf) on delete cascade on update cascade;
insert into telefone values('5384556702','1223333',null);

create table silo(
    id_silo int not null,
    cnpj bigint not null,
    ocupacao float(6) not null,
    capacidade float(6) not null
  );
alter table silo add primary key (id_silo);
alter table silo add foreign key (cnpj) references empresa (CNPJ) on delete cascade on update cascade;
insert into silo values(1,91023341,300,1000.0);

create table contem(
  id_silo int(11) not null,
  id_grao varchar(15) not null,
  quantidade float(6) not null
);
alter table contem add foreign key (id_silo) references silo (id_silo) on delete cascade on update cascade;
alter table contem add foreign key (id_grao) references graos (id_grao) on delete cascade on update cascade;
insert into contem values(1,'feijão',200.0);

create table notafiscal(
  cod_fiscal varchar(10) not null,
  modelo_15 varchar(10),
  cpf varchar(17),
  cnpj bigint not null,
  id_grao varchar(15) not null,
  data date not null,
  saida char(1) not null,
  quantidade float(6) not null,
  valor_do_saco_de_grao decimal (5,3) not null
);
alter table notafiscal add primary key (cod_fiscal);
alter table notafiscal add foreign key (modelo_15) references produtor (modelo_15) on delete cascade on update cascade;
alter table notafiscal add foreign key (cpf) references cliente (cpf) on delete cascade on update cascade;
alter table notafiscal add foreign key (cnpj) references empresa (cnpj) on delete cascade on update cascade;
alter table notafiscal add foreign key (id_grao) references graos (id_grao) on delete cascade on update cascade;
insert into notafiscal values('1045532189','1223333',null,91023341,'feijão','27-03-2015','0',200.0,97.50);

create table maquinario(
  cod_maq varchar(10) not null,
  cnpj bigint not null,
  potencia float(5) not null
);
alter table maquinario add primary key (cod_maq);
alter table maquinario add foreign key (cnpj) references empresa (cnpj) on delete cascade on update cascade;
insert into maquinario values( '11222333',91023341,89.5);

create table outros(
  cnpj bigint not null,
  cod_maq varchar(10) not null,
  tipo varchar(20) not null
);
insert into outros values(91023341,'11222333','esteira');
alter table outros add primary key (cnpj,cod_maq);


create table veiculos(
  cnpj bigint not null,
  cod_maq varchar(10) not null,
  ano int not null,
  modelo varchar(15) null,
  marca varchar(15) not null

);
insert into veiculos values(91023341,'11222333',2011,'ranger', 'ford');
alter table veiculos add primary key (cnpj,cod_maq);


create table funcionarios(
  id_func int not null,
  cnpj bigint not null,
  nome varchar(20) not null,
  funcao varchar(15) null
);
insert into funcionarios values('00',91023341,'Feliciano da Rosa','Gerente');
alter table funcionarios add primary key (id_func);
alter table funcionarios add foreign key (cnpj) references empresa (cnpj) on delete cascade on update cascade;
alter table silo add foreign key (cnpj) references empresa (CNPJ) on delete cascade on update cascade;
