# Autor: Cristian Medina
# Fecha: 21/06/2023
# Github: https://github.com/medinacristian
# Email: medinacristian@gmail.com
# Comentario: Este programa es un juego de adivinar el número secreto.

def adivina_el_numero(n)
  secret_number = rand(1..n)

  puts "¡Bienvenido(a) al juego de 'Adivina el número'!"
  puts "Elige un número entre 1 y #{n}."

  if n >= 6
    max_attempts = n / 2
  else
    max_attempts = n - 1
  end

  attempts = 0
  guessed = false

  while attempts < max_attempts
    attempts += 1
    remaining_attempts = max_attempts - attempts

    print "Intento #{attempts}: "
    chosen_number = gets.chomp.to_i

    if remaining_attempts > 0
      if chosen_number == secret_number
        puts "¡Felicidades! ¡Adivinaste el número #{secret_number} en #{attempts} intentos!"
        guessed = true
        break
      elsif chosen_number < secret_number
        puts "El número es mayor. Te quedan #{remaining_attempts} intentos. Intenta nuevamente."
      else
        puts "El número es menor. Te quedan #{remaining_attempts} intentos. Intenta nuevamente."
      end
    end
  end

  unless guessed
    puts "¡Lo siento! No lograste adivinar el número. El número secreto era #{secret_number}."
  end
end

# Solicitar el rango de números al usuario
max_range = 0

loop do
  puts "Ingrese el número máximo para el rango (debe ser mayor a 0):"
  max_range = gets.chomp.to_i
  break if max_range > 0
  puts "El número máximo debe ser mayor a 0. Intente nuevamente."
end

# Llamar al método para comenzar el juego
adivina_el_numero(max_range)
