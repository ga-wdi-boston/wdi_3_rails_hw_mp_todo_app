Rails.application.routes.draw do
  resources :tasks, only: [:index, :show, :new, :create, :edit, :update, :destroy]
end
