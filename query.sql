/* pesquisa os silos que possuem determinado tipo de grao*/
select * from silo where id_silo in (select id_silo from contem where id_grao = 'feijao');

/*pesquisa a quantidade e o tipo de graos que tem em cada silo de uma deteminada empresa*/
select Nome,id_grao,quantidade quantidade(tn),id_silo silo from contem,empresa where id_silo in (select distinct id_silo from silo where cnpj = 91023341)and cnpj = 91023341;

/*lista notas fiscais de um determinado cliente*/
select nome,cod_fiscal,cliente.cpf,numero,cnpj,id_grao,data,valor_do_saco_de_grao from cliente,notafiscal,telefone where cliente.cpf = '096.13.155-02' and notafiscal.cpf = '096.13.155-02'and telefone.cpf = '096.13.155-02';

/*lista notas fiscais de um determinado produtor*/
select nome,cod_fiscal,produtor.modelo_15,numero,cnpj,id_grao,data,valor_do_saco_de_grao from produtor,notafiscal,telefone where produtor.modelo_15 = '0001234' and notafiscal.modelo_15 = '0001234' and telefone.modelo_15 = '0001234';

/*lista vaiculos de uma empresa*/
select distinct modelo,ano,marca from veiculos where veiculos.cnpj in (select cnpj from empresa where Nome = 'Silos&CIA');


/*lista máquinas usadas da empresa*/
select distinct tipo from outros where outros.cnpj in (select cnpj from empresa where Nome = 'Silos&CIA') ;
/*seleciona um funcionário*/
select nome,funcao from funcionarios where id_func = '0';
