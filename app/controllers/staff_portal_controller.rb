class StaffPortalController < ApplicationController
  before_action :authenticate_staff!

  def configuration
  end

  def dashboard
  end

  def residents
    @residents = User.where(role: "resident")
  end

  # view and change user roles
  def user_roles
    @users = User.all
  end

  def edit_role
    @user = User.find(params[:id])
    puts @user
  end

  def update_role
    @user = User.find(params[:id])
    if @user.update(user_role_param)
      redirect_to user_roles_path, notice: 'User role updated successfully.'
    else
      render :edit_role, notice: 'Unsuccessful'
    end
  end

  private
  def user_role_param
    params.require(:user).permit(:role)
  end
end
