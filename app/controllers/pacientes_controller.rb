# app/controllers/pacientes_controller.rb

class PacientesController < ApplicationController
  def index
    @pacientes = Paciente.all
  end

  def buscar_paciente
    @paciente = Paciente.find_by(cedula: params[:cedula])

    if @paciente
      render json: @paciente
    else
      render json: { error: 'Paciente no encontrado' }, status: :not_found
    end
  end
end
