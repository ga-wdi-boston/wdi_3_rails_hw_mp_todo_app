Rails.application.routes.draw do

  resources :projects do
    resources :lists do
      resources :tasks do
        resources :notes
      end
    end
  end

  # resources :lists do
  #   resources :tasks
  # end

  # resources :tasks do
  #   resources :notes
  # end

  root 'projects#index'
end
