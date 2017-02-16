Rails.application.routes.draw do
  resources :doses
  get 'doses/index'

  get 'doses/show'

  get 'doses/new'

  get 'doses/create'

  get 'doses/delete'

  get 'dose/delete'

  get 'dose/new'

  get 'dose/create'

  get 'dose/index'

  get 'dose/show'

  resources :cocktails
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
