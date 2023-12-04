# importar_pacientes.rb
require 'json'

# Carga la configuración de Rails
require File.expand_path('../config/environment', __dir__)

# Importa el modelo Paciente
require_relative '../app/models/Paciente' # Asegúrate de ajustar la ruta correcta

puts Dir.pwd


# Define el método de importación
def importar_pacientes

    # Antes
# pacientes_json = File.read('app/pacientes.json')

# Después
  json_data = File.read('pacientes.json')


  # Analiza el JSON
  pacientes = JSON.parse(json_data)

  # Itera sobre cada paciente y créalo en la base de datos
  pacientes.each do |paciente_data|
    Paciente.create(paciente_data)
  end

  puts 'Importación de pacientes completada.'
end

# Llama al método de importación
importar_pacientes if __FILE__ == $PROGRAM_NAME
