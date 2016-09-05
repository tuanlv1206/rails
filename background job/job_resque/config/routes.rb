require 'resque/server'
Rails.application.routes.draw do
  mount Resque::Server, at: '/resque'
  get 'eat/:food' => "eat#food"
end
