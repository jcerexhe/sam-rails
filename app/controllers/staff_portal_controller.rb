class StaffPortalController < ApplicationController
  before_action :authenticate_staff!

  def dashboard
  end
end
