PhotoUploader::Application.routes.draw do
  root to: "users#index"
  resources :users, only: [:index, :new, :create, :update, :edit]
end
