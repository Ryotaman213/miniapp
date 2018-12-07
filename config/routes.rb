Rails.application.routes.draw do
  root 'tweets#index'
  get  'miniapp'     => 'miniapp#index'
  get  'miniapp/new' => 'miniapp#new'
  post 'miniapp'     => 'miniapp#create'
end
