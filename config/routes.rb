Rails.application.routes.draw do

  resources :typeforms

  root 'typeforms#index'

end
