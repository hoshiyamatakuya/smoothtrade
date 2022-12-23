Rails.application.routes.draw do
  get 'bookmarks/create'
  get 'bookmarks/destroy'
  get 'my_posts/index'
  resources :posts do
    resources :comments, only: %i[create destroy], shallow: true
    collection do
      get :bookmarks
    end
  end
  resources :bookmarks, only: %i[create destroy]
  devise_for :users
  root 'homes#top'
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
