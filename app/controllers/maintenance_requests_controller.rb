class MaintenanceRequestsController < ApplicationController
  before_action :set_maintenance_request, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_resident!, only: [:new, :create]
  before_action :authenticate_staff!, only: [:index, :edit, :update, :destroy]
  before_action :authenticate_show!, only: [:show]

  def index
    @maintenance_requests = MaintenanceRequest.all
  end

  def show
  end

  def new
    @maintenance_request = MaintenanceRequest.new
  end

  def create
    @maintenance_request = MaintenanceRequest.new(maintenance_request_params)

    respond_to do |format|
      if @maintenance_request.save
        format.html { redirect_to @maintenance_request, notice: 'Maintenance request was successfully created.' }
        format.json { render :show, status: :created, location: @maintenance_request }
      else
        format.html { render :new }
        format.json { render json: @maintenance_request.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @maintenance_request.update(maintenance_request_params)
        format.html { redirect_to @maintenance_request, notice: 'Maintenance request was successfully updated.' }
        format.json { render :show, status: :ok, location: @maintenance_request }
      else
        format.html { render :edit }
        format.json { render json: @maintenance_request.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @maintenance_request.destroy
    respond_to do |format|
      format.html { redirect_to maintenance_requests_url, notice: 'Maintenance request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def set_maintenance_request
    @maintenance_request = MaintenanceRequest.find(params[:id])
  end

  def maintenance_request_params
    params.require(:maintenance_request).permit(:user, :location, :description, :urgency, :status)
  end

  def authenticate_show!
    redirect_to unauthorised_path unless user_signed_in? && (current_user == @maintenance_request.user || current_user.role == "staff")
  end
end
