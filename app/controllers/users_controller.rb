class UsersController < ApplicationController
  before_action :is_matching_login_user, only: [:edit, :update]
  # 上記追加
  def show
    @user = User.find(params[:id])
    @post_images = @user.post_images.page(params[:page])
  end
  # 上記追加　修正

  def edit
    @user = User.find(params[:id])
  end
  # 上記追加
  
  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  private

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end
  # 上記追加
  def is_matching_login_user
    user = User.find(params[:id])
    unless user.id == current_user.id
      redirect_to post_images_path
    end
  end
  
end
