CodemashLightningTalks::Application.routes.draw do
  get "proposals/index"

  resources :proposals, only: [:index]
end
