class Catalogs::LocationsController < ApplicationController
  before_action :set_catalogs_location, only: [:show, :edit, :update, :destroy, :delete]
  helper_method :sort_column, :sort_direction

  # GET /catalogs/locations
  # GET /catalogs/locations.json
  def index
    @resources = Catalogs::Location.search(params[:search]).order("#{sort_column} #{sort_direction}").paginate(per_page: 11, page:  params[:page])
  end

  # GET /catalogs/locations/1
  # GET /catalogs/locations/1.json
  def show
    respond_to do |format|
      format.html
      format.js
    end
  end

  # GET /catalogs/locations/new
  def new
    @resource = Catalogs::Location.new
  end

  # GET /catalogs/locations/1/edit
  def edit
  end

  # POST /catalogs/locations
  # POST /catalogs/locations.json
  def create
    @resource = Catalogs::Location.new(catalogs_location_params)

    respond_to do |format|
      if @resource.save
        index

        flash[:success] = t('notices.saved_successfully')
        format.html { redirect_to @resource, notice: 'Location was successfully created.' }
        format.json { render :show, status: :created, location: @resource }
        format.js
      else
        format.html { render :new }
        format.json { render json: @resource.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /catalogs/locations/1
  # PATCH/PUT /catalogs/locations/1.json
  def update
     respond_to do |format|
       if @resource.update(catalogs_location_params)
         # Load records in order to refresh index page
         index
         flash[:success] = t('notices.updated_successfully')
         format.html { redirect_to @resource, warning: 'Location was successfully updated.' }
         format.json { render :show, status: :ok, location: @resource }
         format.js
       else
         format.html { render :edit }
         format.json { render json: @resource.errors, status: :unprocessable_entity }
         format.js
       end
     end
  end

  # DELETE /catalogs/locations/1z
  # DELETE /catalogs/locations/1.json
  def destroy
    @resource.destroy
    respond_to do |format|
      format.html { redirect_to catalogs_locations_url, flash: {warning: t('notices.destroyed') }}
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    #@todo change set_catalogs_locations to set_resource
    def set_catalogs_location
      @resource = Catalogs::Location.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    #@todo change catalogs_locations_params to resource_params
    def catalogs_location_params
      params.require(:catalogs_location).permit(:abbr, :name_es, :name_en)
    end

  def sort_column
    params[:sort] || 'abbr'
  end

  def sort_direction
    params[:direction] || 'asc'
  end
end
