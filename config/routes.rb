CodemashLightningTalks::Application.routes.draw do
  resources :proposals, only: [:index, :create]
  resources :events, only: [:new, :create]
  root to: "proposals#index"
end
