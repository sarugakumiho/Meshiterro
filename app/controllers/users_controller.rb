class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @post_images = @user.post_images   
  end
  # 上記追加

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
end
