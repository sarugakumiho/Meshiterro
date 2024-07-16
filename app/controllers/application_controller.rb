class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!, except: [:top]
  # 上記　ログインしていない場合はログイン画面へリダイレク
  def after_sign_in_path_for(resource)
    post_images_path
  end
  # 上記追加&修正
  def after_sign_out_path_for(resource)
    about_path
  end
  # 上記追加
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end