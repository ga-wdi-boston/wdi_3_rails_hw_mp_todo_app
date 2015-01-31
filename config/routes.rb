Rails.application.routes.draw do

  resources :projects do
    resources :lists
  end

  resources :lists do
    resources :tasks
  end

  resources :tasks do
    resources :notes
  end

end
