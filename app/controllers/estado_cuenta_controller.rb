class EstadoCuentaController < ApplicationController
    def buscar_estado
      @estado_cuenta = EstadoCuenta.where(paciente: params[:paciente])
  
      respond_to do |format|
        format.json do
          if @estado_cuenta.any?
            # Solo incluir el atributo paciente en la respuesta JSON
            render json: @estado_cuenta
          else
            render json: { error: 'Estados de cuenta no encontrados' }, status: :not_found
          end
        end
      end
    end
  end
  