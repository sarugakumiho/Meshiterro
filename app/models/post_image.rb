class PostImage < ApplicationRecord
  
  has_one_attached :image
  belongs_to :user
  has_many :post_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  # 上記追加
  
  validates :shop_name, presence: true
  validates :image, presence: true
  #shop_nameが存在しているかを確認するバリデーション
  #imageが存在しているかを確認するバリデーション
  # 上記追加（バリデーション設定）
  
  def get_image
    unless image.attached?
      file_path = Rails.root.join('app/assets/images/no_image.jpg')
      image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
    image
  end
  # 上記追加
  
  def favorited_by?(user)
    favorites.exists?(user_id: user.id)
  end
  # 上記追加
  
end
