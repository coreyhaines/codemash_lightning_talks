CodemashLightningTalks::Application.routes.draw do
  resources :proposals, only: [:index, :create]
  root to: "Proposals#index"
end
