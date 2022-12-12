Rails.application.routes.draw do
  resources :posts
  devise_for :users
  root 'homes#top'
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
