Rails.application.routes.draw do
  get 'notices/top'
  get 'supports/top'
  get 'web_plofiles/top'
  get 'helps/top'
  get 'terms_of_services/top'
  get 'privacypolicys/top'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'users/index'
  get 'users/show'
  get 'mypage/index'
  get 'bookmarks/create'
  get 'bookmarks/destroy'
  get 'my_posts/index'
  get 'users/index_followers'
  resources :messages, only: [:create]
  resources :rooms, only: [:create, :index, :show]
  resources :posts do
    resources :comments, only: %i[create destroy], shallow: true
    collection do
      get :bookmarks
    end
    member do
      get :index_user
    end
  end
  resources :bookmarks, only: %i[create destroy]
  devise_for :users
  resources :users do
    resource :relationships, only: [:create, :destroy]
    get 'followings' => 'relationships#followings', as: 'followings'
    get 'followers' => 'relationships#followers', as: 'followers'
  end
  root 'homes#top'
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :notifications, only: [:index, :update]
end
