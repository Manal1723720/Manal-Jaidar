Rails.application.routes.draw do
  resources :patient do
    resources :wounds, controller: 'patients/wounds'
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'pages/index'
  #root 'pages#index'
  get 'pages/wunddoku'

end
