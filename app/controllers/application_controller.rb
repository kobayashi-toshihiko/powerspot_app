class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    #ストロングパラメータに「:birthday, :prefecture_id, :blood_type, :profile, :avatar」の追加
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :birthday, :prefecture_id, :blood_type, :profile, :avatar])
  end
end
