class ResidentPortalController < ApplicationController
  before_action :authenticate_resident!

  def dashboard
  end
end
