# importar_pacientes.rb
require 'json'

# Carga la configuración de Rails
require File.expand_path('../config/environment', __dir__)

# Importa el modelo Paciente
require_relative '../app/models/estado_cuenta' # Asegúrate de ajustar la ruta correcta

puts Dir.pwd

# Define el método de importación
def importar_estados
  # Obtén la ruta completa del archivo JSON en relación con el directorio del script

  # Lee el contenido del archivo JSON
  json_data = File.read('estados_cuenta.json')

  # Analiza el JSON
  estados = JSON.parse(json_data)

  # Itera sobre cada paciente y créalo en la base de datos
  estados.each do |estados_data|
    estado = Estado_cuenta.new(estados_data)

    if estado.save
      puts "estado creado: #{estado.id}"
    else
      puts "Error al crear el estado #{estado.id}: #{estado.errors.full_messages.join(', ')}"
    end
  end

  puts 'Importación de estadoscompletada.'
end

# Llama al método de importación
importar_estados if __FILE__ == $PROGRAM_NAME