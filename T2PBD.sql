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
INSERT INTO empresa values('Pessegos&CIA','Pelotas',96123453,2334,'rua dos Perdidos',91023341);

create table graos(
  id_grao varchar(15) not null,
  qualidade char(10) not null
);
alter table graos add primary key (id_grao);
insert into graos values('feijão','bom');

create table produtor(
  modelo_15 varchar(10) not null,
  nome varchar(30) not null,
  END_CEP INT NOT NULL,
  END_NUMERO INT NOT NULL,
  END_RUA varchar(30) not null
);

alter table produtor add primary key (modelo_15);
insert into produtor values('1223333','Roberson da silva',96046900,1233,'rua das palmeiras');

  create table cliente(
    cpf varchar(17) not null,
    nome varchar(30) not null,
    END_CEP INT NOT NULL,
    END_NUMERO INT NOT NULL,
    END_RUA varchar(30) not null
  );


alter table cliente add primary key (cpf);
insert into cliente values('096.13.055-02','Pedro lima',96015666,233,'Av. Visconde de Amaral');

create table silo(
    id_silo int not null,
    cnpj bigint not null,
    ocupacao float(6) not null,
    quantidade float(6) not null
  );
alter table silo add primary key (id_silo);
insert into silo values(1,91023341,300,1000.0);
alter table silo add foreign key (cnpj) references empresa (CNPJ) on delete cascade on update cascade;

create table telefone(
  numero varchar(10) not null,
  modelo_15 varchar(10) ,
  cpf varchar(17)
);
alter table telefone add primary key (numero);
insert into telefone values('5384556702','1223333',null);
alter table telefone add foreign key (modelo_15) references produtor (modelo_15) on delete cascade on update cascade;
alter table telefone add foreign key (cpf) references cliente (cpf) on delete cascade on update cascade;

create table contem(
  id_silo int(11) not null,
  id_grao varchar(15) not null,
  quantidade float(6) not null
);

insert into contem values(1,'feijao',200.0);
alter table contem add foreign key (id_silo) references silo (id_silo) on delete cascade on update cascade;
alter table contem add foreign key (id_grao) references graos (id_grao) on delete cascade on update cascade;

create table notafiscal(
  cod_fiscal varchar(10) not null,
  modelo_15 varchar(10),
  cpf varchar(17),
  cnpj bigint not null,
  id_grao varchar(15) not null,
  data date not null,
  saida char(1) not null,
  valor_do_saco_de_grao decimal (5,3) not null
);
alter table notafiscal add primary key (cod_fiscal);
insert into notafiscal values('1045532189','1223333',null,91023341,'feijao','27-03-2015','false',97.50);
alter table notafiscal add foreign key (modelo_15) references produtor (modelo_15) on delete cascade on update cascade;
alter table notafiscal add foreign key (cpf) references cliente (cpf) on delete cascade on update cascade;
alter table notafiscal add foreign key (cnpj) references empresa (cnpj) on delete cascade on update cascade;
alter table notafiscal add foreign key (id_grao) references graos (id_grao) on delete cascade on update cascade;

create table maquinario(
  cod_maq varchar(10) not null,
  cnpj bigint not null,
  potencia float(5) not null
);

alter table maquinario add primary key (cod_maq);
insert into maquinario values( '11222333',91023341,89.5);
alter table maquinario add foreign key (cnpj) references empresa (cnpj) on delete cascade on update cascade;

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
alter table veiculos add primary key (cnpj,cod_maq)
