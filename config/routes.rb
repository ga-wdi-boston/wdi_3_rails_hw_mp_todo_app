Rails.application.routes.draw do
  root 'tasks#index'
  resources :tasks, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    resources :notes
  end
end
