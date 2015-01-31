Rails.application.routes.draw do
  root 'lists#index'

  resources :lists do
    resources :tasks do
      resources :notes
    end
  end

end
