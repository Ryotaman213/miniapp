Rails.application.routes.draw do
  devise_for :users
  root 'miniapp#index'
  get  'miniapp'     => 'miniapp#index'
  get  'miniapp/new' => 'miniapp#new'
  post 'miniapp'     => 'miniapp#create'
end
