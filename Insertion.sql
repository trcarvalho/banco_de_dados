INSERT INTO empresa values('Silos&CIA','Rio Grande',9612355,1234,'Av. Carreros',13557849);
INSERT INTO empresa values('Silos&CIA2','Rio Grande',9612345,1234,'Rua Alfredo Cunha',28111811);

insert into graos values('feijao branco','bom');
insert into graos values('ervilha','bom');
insert into graos values('arroz','razoavel');
insert into graos values('milho','excelente');
insert into graos values('soja','bom');
insert into graos values('trigo','ruim');

-- inserção dos produtores
insert into produtor values('0001234','Jones Goebel',96014877,566,'Rua dos Morros');
insert into produtor values('0023331','Arthur da Ederich',960146900,213,'Rua dos Morros');
insert into produtor values('8734112','Milena Camargo',960146900,122,'Rua dos Aflitos');
insert into produtor values('9890011','Odevaldo Santos',96046900,1890,'Rua das palmeiras');
insert into produtor values('0011233','Tutankamon Egpcios',96046900,211,'Rua das palmeiras');

-- inserção dos clientes
insert into cliente values('096.13.155-02','Roberto Chaves',96014234,313,'Rua do Gastão');
insert into cliente values('123.213.112-99','Iná Almeida',96022321,171,'Rua 1º de Abril');
insert into cliente values('096.313.775-12','Carla Vieira',96015321,2355,'Rua do Distrito 9');
insert into cliente values('096.313.858-51','Gilberto Cunha',96015211,1231,'Rua Bom Passo');
insert into cliente values('196.214.313-51','Lucas Meirelles',96015561,4331,'Av. Rio Grande');

/* empresa 91023341 */
insert into silo values(2,91023341,300,1000.0);
insert into silo values(3,91023341,1500,2000.0);
insert into silo values(4,91023341,2100,3000.0);

/* empresa 13557849 */
insert into silo values(5,13557849,1300,2000.0);
insert into silo values(6,13557849,1500,2000.0);
insert into silo values(7,13557849,1000,2000.0);
insert into silo values(8,13557849,900,2000.0);

/*empresa 28111811*/
insert into silo values(9,28111811,2000,4000.0);
insert into silo values(10,28111811,100,1000.0);
insert into silo values(11,28111811,1500,2000.0);
insert into silo values(12,28111811,1400,3000.0);

/*contem*/
insert into contem values(1,'feijao',100.0);
insert into contem values(2,'milho',100.0);
insert into contem values(2,'arroz',100.0);
insert into contem values(2,'soja',100.0);
insert into contem values(3,'feijao branco',700.0);
insert into contem values(3,'ervilha',300.0);
insert into contem values(3,'trigo',500.0);
insert into contem values(4,'soja',500.0);
insert into contem values(4,'trigo',500.0);
insert into contem values(4,'milho',600.0);
insert into contem values(4,'arroz',500.0);
insert into contem values(5,'soja',300.0);
insert into contem values(5,'ervilha',300.0);
insert into contem values(5,'feijao branco',700.0);
insert into contem values(6,'soja',750.0);
insert into contem values(6,'arroz',750.0);
insert into contem values(7,'soja',300.0);
insert into contem values(7,'ervilha',300.0);
insert into contem values(7,'trigo',400.0);
insert into contem values(8,'trigo',300.0);
insert into contem values(8,'milho',200.0);
insert into contem values(8,'soja',400.0);
insert into contem values(9,'feijao',1000.0);
insert into contem values(9,'feijao branco',500.0);
insert into contem values(9,'arroz',500.0);
insert into contem values(10,'arroz',50.0);
insert into contem values(10,'soja',30.0);
insert into contem values(10,'milho',20.0);
insert into contem values(11,'ervilha',300.0);
insert into contem values(11,'trigo',200.0);
insert into contem values(11,'arroz',1000.0);
insert into contem values(12,'feijao branco',700.0);
insert into contem values(12,'soja',400.0);
insert into contem values(12,'arroz',300.0);


  insert into maquinario values( '12231123',91023341,89.5);
  insert into maquinario values( '21112312',91023341,23.5);
  insert into maquinario values( '89731293',91023341,12.0);
  insert into maquinario values( '12398109',91023341,50.0);
  insert into maquinario values( '02211199',91023341,189.5);
  insert into maquinario values( '12039128',91023341,289.5);
  insert into maquinario values( '11987391',13557849,89.5);
  insert into maquinario values( '57587329',13557849,19.3);
  insert into maquinario values( '01923810',13557849,49.45);
  insert into maquinario values( '12122112',13557849,76.66);
  insert into maquinario values( '19182739',13557849,9.78);
  insert into maquinario values( '72387283',28111811,29.8);
  insert into maquinario values( '32983923',28111811,55.0);
  insert into maquinario values( '27382712',28111811,22.0);
  insert into maquinario values( '44187381',28111811,10.0);
  insert into maquinario values( '12038120',28111811,23.5);
  /*outros */
  insert into outros values(91023341,'12231123','esteira_3');
  insert into outros values(91023341,'21112312','esteira_2');
  insert into outros values(91023341,'89731293','motor');
  insert into outros values(13557849,'11987391','secadora');
  insert into outros values(13557849,'57587329','esteira_a');
  insert into outros values(13557849,'01923810','esteira_b');
  insert into outros values(28111811,'27382712','motor_a');
  insert into outros values(28111811,'72387283','esteira_f');
  insert into outros values(28111811,'32983923','esteira_g');
    /* veiculos*/
    insert into veiculos values(91023341,'12398109',2009,'24250', 'volks');
    insert into veiculos values(91023341,'02211199',2015,'FH 460', 'Volvo');
    insert into veiculos values(91023341,'12039128',2013,'Atego 2425', 'Mercedes');
    insert into veiculos values(13557849,'12122112',2015,'FH 460', 'Volvo');
    insert into veiculos values(13557849,'19182739',2013,'Atego 2425', 'Mercedes');
    insert into veiculos values(28111811,'12038120',2015,'FH 460', 'Volvo');
    insert into veiculos values(28111811,'44187381',2009,'24250', 'volks');

      /*Notas fiscais*/
    insert into notafiscal values('9837912371','0001234',null,91023341,'feijao','2015-03-27','0',64.50);
    insert into notafiscal values('1239018293','0001234',null,91023341,'milho','2015-03-27','0',97.50);
    insert into notafiscal values('0013132112','0001234',null,91023341,'arroz','2015-03-27','0',87.50);
    insert into notafiscal values('0012312112','1223333',null,91023341,'feijao','2015-04-23','0',78.50);
    insert into notafiscal values('6629387189','1223333',null,91023341,'soja','2015-04-23','0',97.50);
    insert into notafiscal values('7827381273','1223333',null,91023341,'feijao branco','2015-04-23','0',55.50);
    insert into notafiscal values('1230981231','8734112',null,13557849,'soja','2015-04-27','0',82.50);
    insert into notafiscal values('1308423870','8734112',null,13557849,'soja','2015-04-27','0',82.50);
    insert into notafiscal values('2130498234','8734112',null,13557849,'soja','2015-04-27','0',82.50);
    insert into notafiscal values('0982398473','0023331',null,13557849,'arroz','2015-04-02','0',77.50);
    insert into notafiscal values('0002232111','0023331',null,13557849,'trigo','2015-04-02','0',87.53);
    insert into notafiscal values('9827498231','0023331',null,13557849,'trigo','2015-03-31','0',87.50);
    insert into notafiscal values('2189379218','0011233',null,13557849,'feijao','2015-03-27','0',64.50);
    insert into notafiscal values('1927328232','0011233',null,28111811,'feijao branco','2015-03-27','0',107.50);
    insert into notafiscal values('9022323211','0011233',null,28111811,'milho','2015-03-27','0',79.10);
    insert into notafiscal values('5192837122','0011233',null,28111811,'ervilha','2015-03-27','0',97.30);
    insert into notafiscal values('1984734984','0011233',null,28111811,'arroz','2015-03-27','0',86.50);
    insert into notafiscal values('1209871222','9890011',null,28111811,'soja','2015-03-27','0',89.50);
    insert into notafiscal values('2308944732','9890011',null,28111811,'soja','2015-03-27','0',89.50);
    insert into notafiscal values('1728638721','9890011',null,28111811,'soja','2015-03-27','0',89.50);
        /*notas fiscais clientes*/
    insert into notafiscal values('1102398120',null,'096.13.155-02',91023341,'feijao','2015-04-12','1',69.50);
    insert into notafiscal values('2089374289',null,'096.13.155-02',91023341,'milho','2015-04-12','1',107.50);
    insert into notafiscal values('3849032773',null,'096.13.155-02',91023341,'arroz','2015-04-12','1',95.15);
    insert into notafiscal values('4908237409',null,'123.213.112-99',91023341,'feijao','2015-05-02','1',84.45);
    insert into notafiscal values('2904829531',null,'123.213.112-99',91023341,'soja','2015-05-02','1',99.90);
    insert into notafiscal values('1239807424',null,'123.213.112-99',91023341,'feijao branco','2015-05-02','1',65.50);

    insert into notafiscal values('9283729181',null,'096.313.775-12',13557849,'soja','2015-04-27','1',87.45);
    insert into notafiscal values('1029381092',null,'096.313.858-51',13557849,'soja','2015-04-27','1',87.45);
    insert into notafiscal values('3298472309',null,'196.214.313-51',13557849,'soja','2015-04-27','1',87.45);
    insert into notafiscal values('1902837102',null,'096.313.858-51',13557849,'arroz','2015-04-02','1',77.50);
    insert into notafiscal values('3489537443',null,'196.214.313-51',13557849,'trigo','2015-04-02','1',87.53);
    insert into notafiscal values('3495834905',null,'096.313.858-51',13557849,'trigo','2015-04-12','1',87.50);

    insert into notafiscal values('1298371211',null,'096.313.775-12',28111811,'ervilha','2015-03-30','1',100.30);
    insert into notafiscal values('2382732811',null,'096.313.775-12',28111811,'milho','2015-03-29','1',82.23);
    insert into notafiscal values('2321113322',null,'096.313.775-12',28111811,'arroz','2015-04-02','1',89.20);
    insert into notafiscal values('1029380193',null,'096.313.858-51',28111811,'soja','2015-04-01','1',93.10);
    insert into notafiscal values('1189237122',null,'123.213.112-99',28111811,'soja','2015-04-03','1',93.10);
    insert into notafiscal values('7722827211',null,'096.13.155-02',28111811,'soja','2015-04-03','1',93.10);
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

DO SLEEP(5);

system clear;
