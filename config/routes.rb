Rails.application.routes.draw do
  #devise_for :users
  #root to: "homes#top"
  #上記追加
  #ここに元々記載のあったHTTP（get）メソットは削除済
  devise_for :users
  root to: 'homes#top'
  #その後deviseを追加したため上記の修正
end