Rails.application.routes.draw do
  #root to: "homes#top"
  #上記追加
  #ここに元々記載のあったHTTP（get）メソットは削除済
  
  root to: 'homes#top'
  devise_for :users
  #その後deviseを追加したため上記のとおり追加
  
  # 下記に名前付きルートを設定
  get 'homes/about', to: 'homes#about', as: 'about'
  
  # get 'post_images/new'
  # get 'post_images/index'
  # get 'post_images/show'
  # post_imagesコントローラ作成時に上記が自動的に追加されるため、
  # 上記は削除し、以下のとおり修正
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resource :favorite, only: [:create, :destroy]
    resources :post_comments, only: [:create, :destroy]
  end
  
  # get 'users/show'
  # get 'users/edit'
  # 上記追加されるが削除し以下のとおり追加
  resources :users, only: [:show, :edit, :update]
end