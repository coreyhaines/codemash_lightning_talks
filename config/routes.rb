CodemashLightningTalks::Application.routes.draw do
  resources :proposals, only: [:index, :create]
end
