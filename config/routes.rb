Rails.application.routes.draw do
  root 'flats#index'
  get '/flats/search', to: 'flats#search', as: :search
  resources :flats
end
