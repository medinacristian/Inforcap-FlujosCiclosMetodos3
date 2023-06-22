# Autor: Cristian Medina
# Fecha: 21/06/2023
# Github: https://github.com/medinacristian
# Email: medinacristian@gmail.com
# Comentario: Calcula el nuevo salario de un colaborador/a.

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
