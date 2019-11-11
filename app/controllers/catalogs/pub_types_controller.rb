class Catalogs::PubTypesController < ApplicationController
  before_action :set_catalogs_pub_type, only: [:show, :edit, :update, :destroy]

  # GET /catalogs/pub_types
  # GET /catalogs/pub_types.json
  def index
    @catalogs_pub_types = Catalogs::PubType.all
  end

  # GET /catalogs/pub_types/1
  # GET /catalogs/pub_types/1.json
  def show
  end

  # GET /catalogs/pub_types/new
  def new
    @catalogs_pub_type = Catalogs::PubType.new
  end

  # GET /catalogs/pub_types/1/edit
  def edit
  end

  # POST /catalogs/pub_types
  # POST /catalogs/pub_types.json
  def create
    @catalogs_pub_type = Catalogs::PubType.new(catalogs_pub_type_params)

    respond_to do |format|
      if @catalogs_pub_type.save
        format.html { redirect_to @catalogs_pub_type, notice: 'Pub type was successfully created.' }
        format.json { render :show, status: :created, location: @catalogs_pub_type }
      else
        format.html { render :new }
        format.json { render json: @catalogs_pub_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /catalogs/pub_types/1
  # PATCH/PUT /catalogs/pub_types/1.json
  def update
    respond_to do |format|
      if @catalogs_pub_type.update(catalogs_pub_type_params)
        format.html { redirect_to @catalogs_pub_type, notice: 'Pub type was successfully updated.' }
        format.json { render :show, status: :ok, location: @catalogs_pub_type }
      else
        format.html { render :edit }
        format.json { render json: @catalogs_pub_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /catalogs/pub_types/1
  # DELETE /catalogs/pub_types/1.json
  def destroy
    @catalogs_pub_type.destroy
    respond_to do |format|
      format.html { redirect_to catalogs_pub_types_url, notice: 'Pub type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_catalogs_pub_type
      @catalogs_pub_type = Catalogs::PubType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def catalogs_pub_type_params
      params.require(:catalogs_pub_type).permit(:name_es, :name_en)
    end
end
