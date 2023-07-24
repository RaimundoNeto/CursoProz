print ("programa IMC")
rodar = True
while(rodar):
    
    try:
        print("Digite seu peso")
        peso = float(input())
        print("Digite seu altura")
        alt = float(input())
        imc = imc_function(peso, alt)
        print(imc)
        
        rodar = False
    except:
        print("erro")
    print("fim") 