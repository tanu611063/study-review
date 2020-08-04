class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
    # devise以外で追加したキーはパラメータに許可されていない為、下記の記述が必要
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
