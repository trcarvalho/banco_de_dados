#!/usr/bin/python
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
    cur.execute("select cnpj from empresa")
    for i in cur.fetchall():
        print '|{}|'.format(i[0])

    x = input('escolha um dos cnpj acima\n')
    clean()
    cur.execute("select Nome,id_grao,quantidade ,id_silo from contem,empresa where id_silo in (select distinct id_silo from silo where cnpj = {0})and cnpj = {0};".format(x))
    for row in cur.fetchall():
        print ''
        print '|  {0}  |  {1}  |  {2}  |'.format(row[0],row[1],row[2])

def selectbanco_notasficais(db):

    cur = db.cursor()
    cur.execute("select cpf from cliente")
    for i in cur.fetchall():
        print '|{}|'.format(i[0])

    consult = raw_input('escolha um dos cpf acima\n')
    clean()
    cur.execute("select nome,cod_fiscal,cliente.cpf,numero,cnpj,id_grao,data,valor_do_saco_de_grao from cliente,notafiscal,telefone where cliente.cpf = '{0}' and notafiscal.cpf = '{0}' and telefone.cpf = '{0}';".format(consult))
    for row in cur.fetchall():
        print ''
        print '|  {0}  |  {1}  |  {2}  |  {3}  |  {4}  |  {5}  |  {6}  |  {7}  |'.format(row[0],row[1],row[2],row[3],row[4],row[5],row[6],row[7])

def selectbanco_notasficaisprodudtor(db):

    cur = db.cursor()
    cur.execute("select modelo_15 from produtor")
    for i in cur.fetchall():
        print '|{}|'.format(i[0])

    consult = raw_input('escolha um dos modelo_15 acima\n')
    clean()
    cur.execute("select nome,cod_fiscal,produtor.modelo_15,numero,cnpj,id_grao,data,valor_do_saco_de_grao from produtor,notafiscal,telefone where produtor.modelo_15 = '{0}' and notafiscal.modelo_15 = '{0}' and telefone.modelo_15 = '{0}';".format(consult))
    for row in cur.fetchall():
        print ''
        print '|  {0}  |  {1}  |  {2}  |  {3}  |  {4}  |  {5}  |  {6}  |  {7}  |'.format(row[0],row[1],row[2],row[3],row[4],row[5],row[6],row[7])

def main():

    db = iniciabanco()
    while(True):

        x = input('escolha uma das opcoes de consulta:\n'+
        '1)consultar quantidades de graos nos silos de uma determinada empresa\n'+
        '2) consultar notas fiscais emitidas para um cliente\n'+
        '3) consultar notas fiscais emitidas para um produtor\n')
        clean()

        if(x == 1):
            selectbanco_graos(db)

        elif(x == 2):
            selectbanco_notasficais(db)

        elif(x==3):
            selectbanco_notasficaisprodudtor(db)


if __name__ == "__main__":
    main()
