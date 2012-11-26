Ixpel::Application.routes.draw do
  mount Encounters::Engine, at: "/encounters"

  root to: "encounters/encounters#index"
end
