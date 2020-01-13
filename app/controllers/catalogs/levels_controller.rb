class Catalogs::LevelsController < ApplicationController
  before_action :set_catalogs_level, only: [:show, :edit, :update, :destroy, :delete]
  helper_method :sort_column, :sort_direction

  # GET /catalogs/levels
  # GET /catalogs/levels.json
  def index
    @resources = Catalogs::Level.search(params[:search]).order("#{sort_column} #{sort_direction}").paginate(per_page: 11, page:  params[:page])
  end

  # GET /catalogs/levels/1
  # GET /catalogs/levels/1.json
  def show
    respond_to do |format|
      format.html
      format.js
    end
  end

  # GET /catalogs/levels/new
  def new
    @resource = Catalogs::Level.new
  end

  # GET /catalogs/levels/1/edit
  def edit
  end

  # POST /catalogs/levels
  # POST /catalogs/levels.json
  def create
    @resource = Catalogs::Level.new(catalogs_level_params)

    respond_to do |format|
      if @resource.save
        index
        flash[:success] = t('notices.saved_successfully')
        format.html { redirect_to @resource, notice: 'Level was successfully created.' }
        format.json { render :show, status: :created, location: @resource }
      else
        format.html { render :new }
        format.json { render json: @resource.errors, status: :unprocessable_entity }
      end
      format.js
    end
  end

  # PATCH/PUT /catalogs/levels/1
  # PATCH/PUT /catalogs/levels/1.json
  def update
    respond_to do |format|
      if @resource.update(catalogs_level_params)
        index
        flash[:success] = t('notices.updated_successfully')
        format.html { redirect_to @resource, notice: 'Level was successfully updated.' }
        format.json { render :show, status: :ok, location: @resource }
      else
        format.html { render :edit }
        format.json { render json: @resource.errors, status: :unprocessable_entity }
      end
      format.js
    end
  end

  # DELETE /catalogs/levels/1
  # DELETE /catalogs/levels/1.json
  def destroy
    @resource.destroy
    respond_to do |format|
      format.html { redirect_to catalogs_levels_url, flash: {warning: t('notices.destroyed') }}
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_catalogs_level
      @resource = Catalogs::Level.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def catalogs_level_params
      params.require(:catalogs_level).permit(:name_es, :name_en)
    end

  def sort_column
    params[:sort] || 'name_es'
  end

  def sort_direction
    params[:direction] || 'asc'
  end
end
