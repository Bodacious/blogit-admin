Rails.application.routes.draw do

  resource :session, :only => [:new, :create, :destroy]

  mount Blogit::Admin::Engine => "/blog/admin"
  
  resources :users  
  
  root :to => "blogit/posts#index"
  
end
