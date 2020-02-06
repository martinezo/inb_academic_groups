class Catalogs::PubTypesController < ApplicationController
  before_action :set_catalogs_pub_type, only: [:show, :edit, :update, :destroy, :delete]
  helper_method :sort_column, :sort_direction

  # GET /catalogs/pub_types
  # GET /catalogs/pub_types.json
  def index
    @resources = Catalogs::PubType.search(params[:search]).order("#{sort_column} #{sort_direction}").paginate(per_page: 11, page:  params[:page])
    authorize @resources
  end


  # GET /catalogs/pub_types/1
  # GET /catalogs/pub_types/1.json
  def show
    authorize @resource
    respond_to do |format|
      format.html
      format.js
    end
  end

  # GET /catalogs/pub_types/new
  def new
    @resource = Catalogs::PubType.new
    authorize @resource
  end

  # GET /catalogs/pub_types/1/edit
  def edit
    authorize @resource
  end

  # POST /catalogs/pub_types
  # POST /catalogs/pub_types.json
  def create
    @resource = Catalogs::PubType.new(catalogs_pub_type_params)

    respond_to do |format|
      if @resource.save
        index
        flash[:success] = t('notices.saved_successfully')
        format.html { redirect_to @resource, notice: 'Pub type was successfully created.' }
        format.json { render :show, status: :created, location: @resource }
        format.js
      else
        format.html { render :new }
        format.json { render json: @resource.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /catalogs/pub_types/1
  # PATCH/PUT /catalogs/pub_types/1.json
  def update
    respond_to do |format|
      if @resource.update(catalogs_pub_type_params)
        index
        flash[:success] = t('notices.updated_successfully')
        format.html { redirect_to @resource, notice: 'Pub type was successfully updated.' }
        format.json { render :show, status: :ok, location: @resource }
        format.js
      else
        format.html { render :edit }
        format.json { render json: @resource.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  def delete
    authorize @resource
  end

  # DELETE /catalogs/pub_types/1
  # DELETE /catalogs/pub_types/1.json
  def destroy
    @resource.destroy
    respond_to do |format|
      format.html { redirect_to catalogs_pub_types_url, flash: {warning: t('notices.destroyed') }}
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_catalogs_pub_type
    @resource = Catalogs::PubType.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def catalogs_pub_type_params
    params.require(:catalogs_pub_type).permit(:name_es, :name_en)
  end

  def sort_column
    params[:sort] || 'name_es'
  end

  def sort_direction
    params[:direction] || 'asc'
  end
end
