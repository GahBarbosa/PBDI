def somar(a, b):
  return a + b

def menu():
  while True:
    print("\nEscolha uma opção:")
    print("1. Somar")
    print("0. Sair")
      
    opcao = input("Opção: ")
    
    if opcao == "0":
      print("Saindo...")
      break
    
    if opcao in ["1", "2", "3", "4"]:
      try:
        a = float(input("Digite o primeiro número: "))
        b = float(input("Digite o segundo número: "))
        
        if opcao == "1":
          print(f"Resultado: {somar(a, b)}")
          
      except ValueError:
        print("Entrada inválida. Certifique-se de digitar números válidos.")
    else:
      print("Opção inválida. Tente novamente.")

if __name__ == "__main__":
    menu()
