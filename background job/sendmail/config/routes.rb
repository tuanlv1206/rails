require 'resque/server'
Rails.application.routes.draw do
  mount Resque::Server, at: '/resque'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
