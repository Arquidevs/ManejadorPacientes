# app/controllers/contratos_controller.rb

class ContratosController < ApplicationController
    def index
      @contratos = Contrato.all
    end
  
    def buscar_contrato
      @contrato = contrato.find_by(id: params[:id])
  
      if @contrato
        render json: @contrato
      else
        render json: { error: 'contrato no encontrado' }, status: :not_found
      end
    end
  end
  