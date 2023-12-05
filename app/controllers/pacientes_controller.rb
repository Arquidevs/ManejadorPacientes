  # app/controllers/pacientes_controller.rb
  class PacientesController < ApplicationController
    # Otras acciones del controlador...
    def index
      @pacientes = Paciente.all
    end
  
    def buscar_paciente
      @paciente = Paciente.find_by(id: params[:id])
      respond_to do |format|
        format.html do
          # Lógica para manejar solicitudes HTML
        end
        format.json do
          if @paciente
            render json: @paciente
          else
            render json: { error: 'Paciente no encontrado' }, status: :not_found

          end
        end
      end
    end
  end