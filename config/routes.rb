Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

    # config/routes.rb
  resources :pacientes, only: [:index]

  get '/pacientes/:id', to: 'pacientes#buscar_paciente'
  get '/contratos/:id', to: 'contratos#buscar_contrato'
  get '/estado_cuenta/:paciente', to: 'estado_cuenta#buscar_estado'
  # Defines the root path route ("/")
  # root "posts#index"
end
