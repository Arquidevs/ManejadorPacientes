# importar_pacientes.rb
require 'json'

# Carga la configuración de Rails
require File.expand_path('../config/environment', __dir__)

# Importa el modelo Paciente
require_relative 'app/models/Paciente' # Asegúrate de ajustar la ruta correcta

# Define el método de importación
def importar_pacientes
  # Obtén la ruta completa del archivo JSON en relación con el directorio del script
  json_file_path = File.expand_path('pacientes.json', __dir__)

  # Lee el contenido del archivo JSON
  json_data = File.read(json_file_path)

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
