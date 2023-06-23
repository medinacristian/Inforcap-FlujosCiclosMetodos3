# Autor: Cristian Medina
# Fecha: 21/06/2023
# Github: https://github.com/medinacristian
# Email: medinacristian@gmail.com
# Comentario: Calcula el índice de masa corporal (IMC) de una persona.

# Definir método para calcular el IMC. Recibe como parámetros el peso y la altura.
def formula_imc(peso, altura)
  imc = peso / altura**2
end

# Definir método para calcular el estado nutricional de una persona. Recibe como parámetro el IMC.
def calcular_imc(imc)
  # Mostrar el IMC calculado
  puts("Tu índice de masa corporal es => #{imc}")
  # Si el IMC es menor a 18.5, mostrar mensaje de bajo de peso
  if imc < 18.5
    puts "El índice calculado es Bajo de peso"
  # Si el IMC está entre 18.5 y 24.9, mostrar mensaje de normal
  elsif imc >= 18.5 && imc <= 24.9
    puts "El índice calculado es Normal"
  # Si el IMC está entre 25.0 y 29.9, mostrar mensaje de sobrepeso
  elsif imc >= 25.0 && imc <= 29.9
    puts "El índice calculado es Sobrepeso"
  # Si el IMC está entre 30.0 y 34.9, mostrar mensaje de obesidad grado I - Moderado
  elsif imc >= 30.0 && imc <= 34.9
    puts "El índice calculado es Obesidad grado I - Moderado"
  # Si el IMC está entre 35.0 y 39.9, mostrar mensaje de obesidad grado II - Severo
  elsif imc >= 35.0 && imc <= 39.9
    puts "El índice calculado es Obesidad grado II - Severo"
  # Si el IMC es mayor o igual a 40.0, mostrar mensaje de obesidad grado III - Muy severo
  else
    puts "El índice calculado es Obesidad grado III - Muy severo"
  end
end

# Mostrar mensaje de bienvenida
puts("***¡Bienvenido/a al sistema de cálculo IMC!***")

# Solicitar peso y altura al usuario
puts "Ingresa tu peso en Kilogramos: "
peso = gets.chomp.to_f
puts "Ingresa tu altura expresada en metros: "
altura = gets.chomp.to_f

# Calcular el IMC y mostrar el resultado
resultado = calcular_imc(formula_imc(peso, altura))
puts(resultado)
