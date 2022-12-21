Rails.application.routes.draw do
  get 'my_posts/index'
  resources :posts do
    resources :comments, only: %i[create destroy], shallow: true
  end
  devise_for :users
  root 'homes#top'
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
