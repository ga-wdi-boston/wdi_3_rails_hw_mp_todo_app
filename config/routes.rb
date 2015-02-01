Rails.application.routes.draw do
  root 'lists#index'
  get 'tasks', to: 'tasks#catalog'

  resources :lists do
    resources :tasks do
      resources :notes
    end
  end

end
