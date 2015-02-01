Rails.application.routes.draw do

  resources :lists, shallow: true do
    resources :groups
    resources :tasks
    resources :notes
  end
end
