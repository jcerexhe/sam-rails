class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def authenticate_staff!
    if user_signed_in?
      redirect_to root_path if current_user.role != "staff"
    else
      redirect_to new_user_session_path
    end
  end

  def authenticate_resident!
    if user_signed_in?
      redirect_to root_path if current_user.role != "resident"
    else
      redirect_to new_user_session_path
    end
  end
  def after_sign_in_path_for(user)
    if user.role == "staff"
      return staff_portal_path
    elsif user.role == "resident"
      return resident_portal_path
    else
      return root_path
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_in) do |user_params|
      user_params.permit(:first_name, :last_name, :street, :city, :postcode, :state, :country, :mobile)
    end
  end
end
