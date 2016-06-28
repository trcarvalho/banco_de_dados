
/*inserção dos graos*/
insert into graos values('arroz',800,'A4');
insert into graos values('milho',1100,'A1');
insert into graos values('soja',900,'A1');
insert into graos values('trigo',1000,'A6');

update graos set armazenado=300 where id_grao='feijão';

-- inserção dos produtores
insert into produtor values('0001234','Jones Goebel','Morro Redondo',96014877,566,'Rua dos Morros');
insert into produtor values('0023331','Arthur da Ederich','Morro Redondo',960146900,213,'Rua dos Morros');
insert into produtor values('8734112','Milena Camargo','Canguçu',960146900,122,'Rua dos Aflitos');
insert into produtor values('9890011','Odevaldo Santos','Pelotas',96046900,1890,'Rua das palmeiras');
insert into produtor values('0011233','Tutankamon Egpcios','Pelotas',96046900,211,'Rua das palmeiras');

-- inserção dos clientes
insert into cliente values('096.13.155-02','Roberto Chaves','Pelotas',96014234,313,'Rua do Gastão');
insert into cliente values('123.213.112-99','Iná Almeida','Rio Grande',96022321,171,'Rua 1º de Abril');
insert into cliente values('096.313.775-12','Carla Vieira','Pelotas',96015321,2355,'Rua do Distrito 9');
insert into cliente values('096.313.858-51','Gilberto Cunha','Rio Grande',96015211,1231,'Rua Bom Passo');
insert into cliente values('196.214.313-51','Lucas Meirelles','Rio Grande',96015561,4331,'Av. Rio Grande');

   /*telefone*/
    insert into telefone values('5399123456','0001234',null);
    insert into telefone values('5381772433','0023331',null);
    insert into telefone values('5384848484','8734112',null);
    insert into telefone values('5332212345','9890011',null);
    insert into telefone values('5332212233','0011233',null);
    insert into telefone values('5386753211',null,'096.13.155-02');
    insert into telefone values('5384444444',null,'123.213.112-99');
    insert into telefone values('5384321231',null,'096.313.775-12');
    insert into telefone values('5381116712',null,'096.313.858-51');
    insert into telefone values('5396782212',null,'196.214.313-51');
    insert into telefone values('5399875462',null,'096.313.775-12');
    insert into telefone values('5399223312',null,'123.213.112-99');

/* empresa 91023341 */
insert into silo values(2,91023341,300,1000.0);
insert into silo values(3,91023341,1500,2000.0);
insert into silo values(4,91023341,2100,3000.0);


/*contem*/
insert into contem values(2,'feijão',100.0);
insert into contem values(2,'milho',100.0);
insert into contem values(2,'arroz',100.0);
insert into contem values(3,'soja',400.0);
insert into contem values(3,'trigo',500.0);
insert into contem values(3,'milho',400.0);
insert into contem values(3,'arroz',200.0);
insert into contem values(4,'soja',500.0);
insert into contem values(4,'trigo',500.0);
insert into contem values(4,'milho',600.0);
insert into contem values(4,'arroz',500.0);


  /*Notas fiscais*/
    insert into notafiscal values('9837912371','0001234',null,91023341,'feijao','2015-03-27','0',100.0,64.50);
    insert into notafiscal values('1239018293','0011233',null,91023341,'milho','2015-03-27','0',900.0,97.50);
    insert into notafiscal values('0013132412','0001234',null,91023341,'arroz','2015-03-27','0',400.0,87.50);
    insert into notafiscal values('6629387189','8734112',null,91023341,'soja','2015-04-23','0',600.0,97.50);
    insert into notafiscal values('0002232113','0011233',null,91023341,'trigo','2015-04-02','0',500.0,87.53);
    insert into notafiscal values('0002232141','0023331',null,91023341,'trigo','2015-04-02','0',500.0,87.53);
    insert into notafiscal values('0002232611','8734112',null,91023341,'soja','2015-04-02','0',300.0,87.53);
    insert into notafiscal values('0013132112','8734112',null,91023341,'arroz','2015-03-27','0',400.0,87.50);
    insert into notafiscal values('0002232111','0023331',null,91023341,'milho','2015-04-02','0',200.0,87.53);
    insert into notafiscal values('0102232101','0023331',null,91023341,'milho','2015-04-20','0',800.0,87.53);
    insert into notafiscal values('0002232110','1223333',null,91023341,'trigo','2015-04-07','0',300.0,87.53);
    insert into notafiscal values('9837910371','9890011',null,91023341,'feijao','2015-03-29','0',300.0,64.50);
    insert into notafiscal values('1013132412','0001234',null,91023341,'arroz','2015-04-27','0',500.0,87.50);
    insert into notafiscal values('0012232611','8734112',null,91023341,'soja','2015-04-02','0',1000.0,87.53);

        /*notas fiscais clientes*/
    insert into notafiscal values('1102398120',null,'096.13.155-02',91023341,'feijao','2015-05-12','1',300.0,69.50);
    insert into notafiscal values('2089374289',null,'096.13.055-02',91023341,'milho','2015-05-12','1',800.0,107.50);
    insert into notafiscal values('3849032773',null,'096.313.775-12 ',91023341,'arroz','2015-05-12','1',500.0,95.15);
    insert into notafiscal values('4908237409',null,'123.213.112-99',91023341,'trigo','2015-05-02','1',300.0,84.45);
    insert into notafiscal values('2904829531',null,'096.313.858-51',91023341,'soja','2015-05-02','1',1000.0,99.90);
    insert into notafiscal values('2904829531',null,'196.214.313-51',91023341,'soja','2015-05-02','1',50.0,99.90);




	/*inserção de maquinas*/
  insert into maquinario values( '12231123',91023341,89.5);
  insert into maquinario values( '21112312',91023341,23.5);
  insert into maquinario values( '89731293',91023341,12.0);
  insert into maquinario values( '12398109',91023341,50.0);
  insert into maquinario values( '02211199',91023341,189.5);
  insert into maquinario values( '12039128',91023341,289.5);

	/*outros */
	insert into outros values(91023341,'12231123','esteira_3');
	insert into outros values(91023341,'21112312','esteira_2');
	insert into outros values(91023341,'89731293','motor');

    /* veiculos*/
    insert into veiculos values(91023341,'12398109',2009,'24250', 'volks');
    insert into veiculos values(91023341,'02211199',2015,'FH 460', 'Volvo');
    insert into veiculos values(91023341,'12039128',2013,'Atego 2425', 'Mercedes');

	 /* funcionarios*/
    insert into funcionarios values('01',91023341,'Pedro','balanceiro');
    insert into funcionarios values('02',91023341,'Taina','supervisor');
    insert into funcionarios(id_func,cnpj,nome) values('03',91023341,'joao');
    insert into funcionarios(id_func,cnpj,nome) values('04',91023341,'jorge');
    insert into funcionarios(id_func,cnpj,nome) values('05',91023341,'mateus');
    insert into funcionarios values('06',91023341,'alice','secretaria');
    insert into funcionarios(id_func,cnpj,nome) values('07',91023341,'fred');

/*verificar tabelas*/

select * from empresa;
select * from silo;
select * from cliente;
select * from produtor;
select * from graos;
select * from contem;
select * from maquinario;
select * from veiculos;
select * from outros;
select * from notafiscal;
select * from telefone;
select * from funcionarios;

DO SLEEP(5);

system clear;
