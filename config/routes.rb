Rails.application.routes.draw do

  resources :lists, shallow: true do
    resources :groups
    resources :tasks do
      resources :notes
    end
  end
end
