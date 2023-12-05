class EstadosCuentaController < ApplicationController

    def buscar_estado
      @estados_cuenta = EstadoCuenta.where(paciente: params[:id])
  
      respond_to do |format|
        format.html { head :no_content }
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
  