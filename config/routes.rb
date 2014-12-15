RolifyUi::Engine.routes.draw do
  root "dashboard#index"
  resources :rolified_classes, only: [:index, :show]
end
