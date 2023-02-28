Rails.application.routes.draw do

  devise_for :users

  # root to: "pages#home"
  root to: "players#index"
  resources :players, except: :index do
    resources :bookings, only: %i[create destroy]
  end

  get 'dashboard', to: 'pages#dashboard', as: :dashboard

  patch 'bookings/:id/accept', to: 'bookings#accept', as: :accept
  patch 'bookings/:id/decline', to: 'bookings#decline', as: :decline

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

# formulaire booking sur la show de players
# controller pages def dashboard -> ensuite view
