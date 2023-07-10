import datetime

def obter_ano_de_nascimento():
    while True:
        try:
            ano = int(input("Digite o ano de nascimento (entre 1922 e 2021): "))
            if 1922 <= ano <= 2021:
                return ano
            else:
                print("Ano inválido. Tente novamente.")
        except ValueError:
            print("Digite um valor numérico válido.")

def calcular_idade(nome, ano_de_nascimento):
    ano_atual = datetime.date.today().year
    idade = ano_atual - ano_de_nascimento
    print(f"{nome}, você completou ou completará {idade} anos em {ano_atual}.")

def main():
    nome = input("Digite seu nome completo: ")
    ano_de_nascimento = obter_ano_de_nascimento()
    calcular_idade(nome, ano_de_nascimento)

main()
