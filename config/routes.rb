Rails.application.routes.draw do
  resources :posts do
    resources :comments, :only => :create
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end
  root 'posts#index'

  get 'login' => "user_session#new"
  post 'login' => "user_session#create"
  delete 'login' => "user_session#destroy"
end
