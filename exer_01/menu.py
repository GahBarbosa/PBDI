def somar(a, b):
  return a + b

def subtrair(a, b):
  return a - b

def multiplicar(a, b):
    return a * b

def dividir(a, b):
    if b == 0:
        return "Erro: Divisão por zero"
    return a / b

def menu():
  while True:
    print("\nEscolha uma opção:")
    print("1. Somar")
    print("2. Subtrair")
    print("3. Multiplicar")
    print("4. Dividir")
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
        elif opcao == "2":
          print(f"Resultado: {subtrair(a, b)}")
        elif opcao == "3":
          print(f"Resultado: {multiplicar(a, b)}")
        elif opcao == "4":
            print(f"Resultado: {dividir(a, b)}")
          
      except ValueError:
        print("Entrada inválida. Certifique-se de digitar números válidos.")
    else:
      print("Opção inválida. Tente novamente.")

if __name__ == "__main__":
    menu()
