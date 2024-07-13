Rails.application.routes.draw do
  #devise_for :users
  #root to: "homes#top"
  #上記追加
  #ここに元々記載のあったHTTP（get）メソットは削除済
  devise_for :users
  root to: 'homes#top'
  #その後deviseを追加したため上記の修正
  # 下記に名前付きルートを設定
  get 'homes/about', to: 'homes#about', as: 'about'
  
end