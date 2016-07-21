class ResidentPortalController < ApplicationController
  before_action :authenticate_resident!

  def dashboard
  end

  def maintenance_requests
    @maintenance_requests = current_user.maintenance_requests
  end
end
