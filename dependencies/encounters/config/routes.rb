Encounters::Engine.routes.draw do
  resources :encounters, only: [:index, :show] do
    resources :monsters, only: [] do
      scope module: "monsters" do
        resources :attacks, only: [:create]
      end
    end
  end

  root to: "encounters#index"
end
