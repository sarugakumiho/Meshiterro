class PostImagesController < ApplicationController
  def new
    @post_image = PostImage.new
  end
  # 上記追加
  # 投稿データの保存 以下追加　修正（バリデーション設定含む）
  def create
    @post_image = PostImage.new(post_image_params)
    @post_image.user_id = current_user.id
    if @post_image.save
      redirect_to post_images_path
    else
      render :new
    end
  end
  
  
  def index
    @post_images = PostImage.page(params[:page])
  end
  # 上記追加　修正

  def show
    @post_image = PostImage.find(params[:id])
    @post_comment = PostComment.new
  end
  # 上記追加
  
  def destroy
    post_image = PostImage.find(params[:id])
    post_image.destroy
    redirect_to post_images_path
  end
  # 上記追加
  
  # 投稿データのストロングパラメータ　以下追加
  private

  def post_image_params
    params.require(:post_image).permit(:shop_name, :image, :caption)
  end
end
