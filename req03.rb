# Autor: Cristian Medina
# Fecha: 21/06/2023
# Github: https://github.com/medinacristian
# Email: medinacristian@gmail.com
# Comentario: Calcula el índice de masa corporal (IMC) de una persona.

def formula_imc(valor1, valor2)
  imc = valor1 / valor2**2
end

def calcular_imc(imc)
  puts("Tu índice de masa corporal es => #{imc}")
  if imc < 18.5
    puts "El índice calculado es Bajo de peso"
  elsif imc <= 18.5 || imc <= 24.9
    puts "El índice calculado es Normal"
  elsif imc <= 25.0 || imc <= 29.9
    puts "El índice calculado es Sobrepeso"
  elsif imc <= 30.0 || imc <= 34.9
    puts "El índice calculado es Obesidad grado I - Moderado"
  elsif imc <= 35.0 || imc <= 39.9
    puts "El índice calculado es Obesidad grado II - Severo"
  else
    puts "El índice calculado es Obesidad grado III - Muy severo"
  end
end

puts("***¡Bienvenido/a al sistema de cálculo IMC!***")
puts "Ingresa tu peso en Kilogramos: "
peso = gets.chomp.to_f
puts "Ingresa tu altura expresada en metros: "
altura = gets.chomp.to_f

resultado = calcular_imc(formula_imc(peso, altura))
puts(resultado)
