# Se solicita un programa que mediante el uso de métodos permita calcular el nuevo salario de un colaborador/a en función de un porcentaje mínimo de aumento establecido.

# fórmula:  salario + (salario * (incremento / 1000))

# Autor: Cristian Medina
# Fecha: 21/06/2023
# Github: https://github.com/medinacristian

def calcular_nuevo_salario(salario, incremento)
  nuevo_salario = salario + (salario * (incremento / 100.0))
  nuevo_salario.round(2) # Redondear el resultado a 2 decimales
end

# Solicitar salario actual y porcentaje de incremento al usuario
puts "Ingrese el salario actual del colaborador/a:"
salario_actual = gets.chomp.to_f

puts "Ingrese el porcentaje de incremento mínimo:"
porcentaje_incremento = gets.chomp.to_f

# Calcular y mostrar el nuevo salario
nuevo_salario = calcular_nuevo_salario(salario_actual, porcentaje_incremento)

puts "El nuevo salario del colaborador/a es: #{nuevo_salario}"
