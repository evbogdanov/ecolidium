class ServicesController < ApplicationController
  before_action :set_service, only: [:show, :edit, :update, :destroy]

  ##############################################################################
  ### My custom controllers for regular users
  ##############################################################################

  # GET /services
  def show_all
    @services = Service.all
  end

  # GET /services/some-slug
  def show_by_slug
    @service = Service.find_by(slug: params[:slug])

    if @service.nil?
      render :show_not_found, status: :not_found
    end
  end


  ##############################################################################
  ### Auto-generated controllers for admin
  ##############################################################################

  # GET /admin/services
  # GET /admin/services.json
  def index
    @services = Service.all
  end

  # GET /admin/services/1
  # GET /admin/services/1.json
  def show
  end

  # GET /admin/services/new
  def new
    @service = Service.new
  end

  # GET /admin/services/1/edit
  def edit
  end

  # POST /admin/services
  # POST /admin/services.json
  def create
    @service = Service.new(service_params)

    respond_to do |format|
      if @service.save
        format.html { redirect_to @service, notice: 'Service was successfully created.' }
        format.json { render :show, status: :created, location: @service }
      else
        format.html { render :new }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/services/1
  # PATCH/PUT /admin/services/1.json
  def update
    respond_to do |format|
      if @service.update(service_params)
        format.html { redirect_to @service, notice: 'Service was successfully updated.' }
        format.json { render :show, status: :ok, location: @service }
      else
        format.html { render :edit }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/services/1
  # DELETE /admin/services/1.json
  def destroy
    @service.destroy
    respond_to do |format|
      format.html { redirect_to services_url, notice: 'Service was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  ##############################################################################
  ### Private methods
  ##############################################################################

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_service
    @service = Service.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def service_params
    params.require(:service).permit(:title, :slug)
  end
end
