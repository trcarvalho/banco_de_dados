#!/usr/bin/python
# -*- coding: utf-8 -*-
import MySQLdb
import os
clean = lambda : os.system('clear')

def iniciabanco():
    db = MySQLdb.connect(host="localhost",    # your host, usually localhost
                         user="root",         # your username
                         passwd="",  # your password
                         db="TRABALHOPBD")        # name of the data base
    return db

def selectbanco_graos(db):

    cur = db.cursor()
    cur.execute("select id_silo from silo;")
    for i in cur.fetchall():
        print '|{}|'.format(i[0])

    x = input('escolha um silo acima\n')
    clean()
    #cur.execute("select id_grao,quantidade ,id_silo from contem,empresa where id_silo in (select distinct id_silo from silo where cnpj = {0})and cnpj = {0};".format(x))
    cur.execute("select id_grao,quantidade from contem where id_silo={0};".format(x))
    for row in cur.fetchall():
        print ''
        print '|  {0}  |  {1}  |'.format(row[0],row[1])
    print ''
    print ''

def selectSilo_capacidade(db):

    cur = db.cursor()
    cur.execute("select id_silo from silo;")
    for i in cur.fetchall():
        print '|{}|'.format(i[0])

    x = input('escolha um silo acima\n')
    clean()
    #cur.execute("select id_grao,quantidade ,id_silo from contem,empresa where id_silo in (select distinct id_silo from silo where cnpj = {0})and cnpj = {0};".format(x))
    cur.execute("select capacidade,ocupacao from silo where id_silo={0};".format(x))
    for row in cur.fetchall():
        print ''
        print '|  {0}  |  {1}  |'.format(row[0],row[1])
    print ''
    print ''


def selectbanco_notasficais(db):

    cur = db.cursor()
    cur.execute("select cpf,nome from cliente;")
    for i in cur.fetchall():
        print '|{0}|{1}|'.format(i[0],i[1])

    consult = raw_input('escolha um dos cpf acima\n')
    clean()
    cur.execute("select nome,cod_fiscal,cliente.cpf,numero,cnpj,id_grao,quantidade,data from cliente,notafiscal,telefone where cliente.cpf = '{0}' and notafiscal.cpf = '{0}' and telefone.cpf = '{0}';".format(consult))
    for row in cur.fetchall():
        print ''
        print '|  {0}  |  {1}  |  {2}  |  {3}  |  {4}  |  {5}  |  {6}  |  {7}  |'.format(row[0],row[1],row[2],row[3],row[4],row[5],row[6],row[7])
    print ''
    print ''

def selectbanco_notasficaisprodudtor(db):

    cur = db.cursor()
    cur.execute("select modelo_15,nome from produtor")
    for i in cur.fetchall():
        print '|{0}|{1}|'.format(i[0],i[1])

    consult = raw_input('escolha um dos modelo_15 acima\n')
    clean()
    cur.execute("select nome,cod_fiscal,produtor.modelo_15,numero,cnpj,id_grao,quantidade,data from produtor,notafiscal,telefone where produtor.modelo_15 = '{0}' and notafiscal.modelo_15 = '{0}' and telefone.modelo_15 = '{0}';".format(consult))
    for row in cur.fetchall():
        print ''
        print '|  {0}  |  {1}  |  {2}  |  {3}  |  {4}  |  {5}  |  {6}  |  {7}  |'.format(row[0],row[1],row[2],row[3],row[4],row[5],row[6],row[7])
    print ''
    print ''

def selectbanco_veiculos(db):

    cur = db.cursor()
    
    print '|  Modelo  |   Ano   |   Marca   |'
    cur.execute("select distinct modelo,ano,marca from veiculos ;")
    for row in cur.fetchall():
        print ''
        print '|  {0}  |  {1}  |  {2}  | '.format(row[0],row[1],row[2])
    print ''
    print ''

def selectbanco_outros(db):

    cur = db.cursor()
    print '|  Tipo  |'
    cur.execute("select distinct tipo from outros;")
    for row in cur.fetchall():
        print ''
        print '|  {0}  |'.format(row[0])
    print ''
    print ''

def main():
    x = ''
    db = iniciabanco()
    while(x != 0):

        x = input('escolha uma das opcoes de consulta (digite 0 e aperte enter para sair):\n'+
        '1) Consultar o tipo e quantidades de graos em um Silo\n'+
        '2) Consultar capacidade e ocupação do silo\n'+
        '3) Consultar notas fiscais de saida\n'+
        '4) Consultar notas fiscais de entrada\n'+
        '5) Listar veiculos\n'+
        '6) Listar maquinas\n')
        clean()

        if(x == 1):
            selectbanco_graos(db)
        
        elif(x == 2):
            selectSilo_capacidade(db)

        elif(x == 3):
            selectbanco_notasficais(db)

        elif(x==4):
            selectbanco_notasficaisprodudtor(db)

        elif(x==5):
            selectbanco_veiculos(db)

        elif(x==6):
            selectbanco_outros(db)


if __name__ == "__main__":
    main()
