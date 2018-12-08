Rails.application.routes.draw do
  devise_for :users
  root 'miniapp#index'
  get  'miniapp'     => 'miniapp#index'
  get  'miniapp/new' => 'miniapp#new'
  post 'miniapp'     => 'miniapp#create'
  get  'users/:id'   => 'users#show'
  delete 'miniapp/:id' => 'miniapp#destroy'
end
