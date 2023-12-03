class Paciente < ApplicationRecord
    attribute :nombre, :string
    attribute :id, :string
    attribute :email, :string
    attribute :password, :string
    TIPOS_IDENTIFICACION = ['cedula', 'cedula extranjeria', 'pasaporte', 'tarjeta de identidad', 'registro civil'].freeze
    validates :tipo_id, inclusion: { in: TIPOS_IDENTIFICACION }
end