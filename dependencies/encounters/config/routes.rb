Encounters::Engine.routes.draw do
  resources :encounters, only: [:index, :show]
  root to: "encounters#index"
end
