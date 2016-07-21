class StaffPortalController < ApplicationController
  before_action :authenticate_staff!

  def dashboard
  end

  def residents
    @residents = User.where(role: "resident")
  end
end
