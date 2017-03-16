Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #为什么建立groups 的页面时，要加resources 这个指令呢？如果groups
  #不加这一条groups 页面就会报错。而welcome 则不需要加。
  root 'groups#index'
  resources :groups do
    member do
      post :join
      post :quit
    end
    resources :posts
  end

  namespace :account do
    resources :groups
  end

end
