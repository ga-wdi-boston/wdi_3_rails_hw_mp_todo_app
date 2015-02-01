Rails.application.routes.draw do
  resources :lists do
    resources :tasks
  end
  resources :tasks do
      resources :notes
  end
end
