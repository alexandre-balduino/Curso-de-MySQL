
from classes import GafanhotoDB
from os import getenv, system
from dotenv import load_dotenv

load_dotenv()

db = GafanhotoDB()

db.conectar(
    host=getenv("DB_HOST"), 
    user=getenv("DB_USER"), 
    password=getenv("DB_PASS"), 
    database=getenv("DB_NAME")
)

def main():
    while True:
        print('''
[ 1 ] Listar Gafanhotos
[ 2 ] Cadastrar Novo
[ 3 ] Sair
        ''')
        opcao = input("Digite sua opção: ")
        match opcao:
            case "1":
                system("clear")
                for nome in db.listar():
                    print(nome)
                input("Aperte Enter para voltar")
                system("clear")
            case "2":
                nome = input("Digite o nome: ")
                db.cadastrar(nome)
            case "3":
                break
            case _:
                print("Opção inválida")


if __name__ == "__main__":
    main()
