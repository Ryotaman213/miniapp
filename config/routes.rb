Rails.application.routes.draw do
  devise_for :users
  root 'miniapp#index'
  get  'miniapp'     => 'miniapp#index'
  get  'miniapp/new' => 'miniapp#new'
  post 'miniapp'     => 'miniapp#create'
  get  'users/:id'   => 'users#show'
  patch   'miniapp/:id'  => 'miniapp#update'
  delete 'miniapp/:id' => 'miniapp#destroy'
  get  'miniapp/:id/edit' => 'miniapp#edit'
end
