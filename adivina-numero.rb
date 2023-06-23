# Autor: Cristian Medina
# Fecha: 21/06/2023
# Github: https://github.com/medinacristian
# Email: medinacristian@gmail.com
# Comentario: Este programa es un juego de adivinar el número secreto.

def adivina_el_numero(n)
  secret_number = rand(1..n) # Generar un número aleatorio entre 1 y n, donde n es el parámetro recibido por el método

  # Mostrar mensaje de bienvenida
  puts "¡Bienvenido(a) al juego de 'Adivina el número'!"
  # Solicitar número al usuario
  puts "Elige un número entre 1 y #{n}."

  # Calcular el número máximo de intentos
  if n >= 6
    max_attempts = n / 2 # Si n es mayor o igual a 6, el número máximo de intentos es la mitad de n
  else
    max_attempts = n - 1 # Si n es menor a 6, el número máximo de intentos es n - 1
  end

  # Inicializar variables
  attempts = 0
  guessed = false

  # Mientras el usuario no adivine el número y tenga intentos disponibles, solicitar un nuevo número
  while attempts < max_attempts
    attempts += 1
    remaining_attempts = max_attempts - attempts # Calcular el número de intentos restantes

    # Solicitar número al usuario
    print "Intento #{attempts}: "
    chosen_number = gets.chomp.to_i

    # Si aún quedan intentos, comparar el número elegido por el usuario con el número secreto
    if remaining_attempts > 0
      # Si el número elegido por el usuario es igual al número secreto, mostrar mensaje de felicitaciones y terminar el juego
      if chosen_number == secret_number
        puts "¡Felicidades! ¡Adivinaste el número #{secret_number} en #{attempts} intentos!"
        guessed = true
        break
      # Si el número elegido por el usuario es menor al número secreto, mostrar mensaje de que el número es mayor y mostrar el número de intentos restantes
      elsif chosen_number < secret_number
        puts "El número es mayor. Te quedan #{remaining_attempts} intentos. Intenta nuevamente."
      # Si el número elegido por el usuario es mayor al número secreto, mostrar mensaje de que el número es menor y mostrar el número de intentos restantes
      else
        puts "El número es menor. Te quedan #{remaining_attempts} intentos. Intenta nuevamente."
      end
    end
  end

  # Si el usuario no adivinó el número, mostrar mensaje de que no logró adivinar el número y mostrar el número secreto
  unless guessed
    puts "¡Lo siento! No lograste adivinar el número. El número secreto era #{secret_number}."
  end
end

# Solicitar el rango de números al usuario
max_range = 0
loop do
  puts "Ingrese el número máximo para el rango (debe ser mayor a 0):"
  max_range = gets.chomp.to_i
  # Si el número máximo es mayor a 0, salir del ciclo
  break if max_range > 0
  puts "El número máximo debe ser mayor a 0. Intente nuevamente."
end

# Llamar al método para comenzar el juego
adivina_el_numero(max_range)
