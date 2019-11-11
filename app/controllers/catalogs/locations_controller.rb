class Catalogs::LocationsController < ApplicationController
  before_action :set_catalogs_location, only: [:show, :edit, :update, :destroy]

  # GET /catalogs/locations
  # GET /catalogs/locations.json
  def index
    @catalogs_locations = Catalogs::Location.all
  end

  # GET /catalogs/locations/1
  # GET /catalogs/locations/1.json
  def show
  end

  # GET /catalogs/locations/new
  def new
    @catalogs_location = Catalogs::Location.new
  end

  # GET /catalogs/locations/1/edit
  def edit
  end

  # POST /catalogs/locations
  # POST /catalogs/locations.json
  def create
    @catalogs_location = Catalogs::Location.new(catalogs_location_params)

    respond_to do |format|
      if @catalogs_location.save
        format.html { redirect_to @catalogs_location, notice: 'Location was successfully created.' }
        format.json { render :show, status: :created, location: @catalogs_location }
      else
        format.html { render :new }
        format.json { render json: @catalogs_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /catalogs/locations/1
  # PATCH/PUT /catalogs/locations/1.json
  def update
    respond_to do |format|
      if @catalogs_location.update(catalogs_location_params)
        format.html { redirect_to @catalogs_location, notice: 'Location was successfully updated.' }
        format.json { render :show, status: :ok, location: @catalogs_location }
      else
        format.html { render :edit }
        format.json { render json: @catalogs_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /catalogs/locations/1
  # DELETE /catalogs/locations/1.json
  def destroy
    @catalogs_location.destroy
    respond_to do |format|
      format.html { redirect_to catalogs_locations_url, notice: 'Location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_catalogs_location
      @catalogs_location = Catalogs::Location.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def catalogs_location_params
      params.require(:catalogs_location).permit(:abbr, :name_es, :name_en)
    end
end
