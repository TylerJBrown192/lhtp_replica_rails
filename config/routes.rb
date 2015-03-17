Rails.application.routes.draw do
  root :to => 'sections#index'

  resources :sections do
    resources :weeks, :except => [:index]
  end
end
