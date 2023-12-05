class EstadosCuentaController < ApplicationController

    def buscar_estado
      @estados_cuenta = EstadoCuenta.where(paciente: params[:paciente])
  
      respond_to do |format|
        format.html do
          # Lógica para manejar solicitudes HTML si es necesario
        end
        format.json do
          if @estados_cuenta.any?
            render json: @estados_cuenta
          else
            render json: { error: 'Estados de cuenta no encontrados' }, status: :not_found
          end
        end
      end
    end
  
  end
  