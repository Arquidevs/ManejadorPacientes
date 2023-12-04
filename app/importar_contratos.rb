# importar_pacientes.rb
require 'json'

# Carga la configuración de Rails
require File.expand_path('../config/environment', __dir__)

# Importa el modelo Paciente
require_relative '../app/models/contrato' # Asegúrate de ajustar la ruta correcta

puts Dir.pwd

# Define el método de importación
def importar_contratos
  # Obtén la ruta completa del archivo JSON en relación con el directorio del script

  # Lee el contenido del archivo JSON
  json_data = File.read('contratos.json')

  # Analiza el JSON
  contratos = JSON.parse(json_data)

  # Itera sobre cada paciente y créalo en la base de datos
  contratos.each do |contratos_data|
    contrato = Contrato.new(contrato_data)

    if paciente.save
      puts "Contrato creado: #{contrato.id}"
    else
      puts "Error al crear el contrato #{contrato.id}: #{contrato.errors.full_messages.join(', ')}"
    end
  end

  puts 'Importación de contratoscompletada.'
end

# Llama al método de importación
importar_contratos if __FILE__ == $PROGRAM_NAME
