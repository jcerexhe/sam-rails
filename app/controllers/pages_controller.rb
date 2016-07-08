class PagesController < ApplicationController
  def home
  end

  def residents
    @residents = User.where(role: "resident")
  end

  def configuration
  end
end
