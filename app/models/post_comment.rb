class PostComment < ApplicationRecord
  
  belongs_to :user
  belongs_to :post_image
  # 上記追加
end
