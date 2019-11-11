class Catalogs::StatusesController < ApplicationController
  before_action :set_catalogs_status, only: [:show, :edit, :update, :destroy]

  # GET /catalogs/statuses
  # GET /catalogs/statuses.json
  def index
    @catalogs_statuses = Catalogs::Status.all
  end

  # GET /catalogs/statuses/1
  # GET /catalogs/statuses/1.json
  def show
  end

  # GET /catalogs/statuses/new
  def new
    @catalogs_status = Catalogs::Status.new
  end

  # GET /catalogs/statuses/1/edit
  def edit
  end

  # POST /catalogs/statuses
  # POST /catalogs/statuses.json
  def create
    @catalogs_status = Catalogs::Status.new(catalogs_status_params)

    respond_to do |format|
      if @catalogs_status.save
        format.html { redirect_to @catalogs_status, notice: 'Status was successfully created.' }
        format.json { render :show, status: :created, location: @catalogs_status }
      else
        format.html { render :new }
        format.json { render json: @catalogs_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /catalogs/statuses/1
  # PATCH/PUT /catalogs/statuses/1.json
  def update
    respond_to do |format|
      if @catalogs_status.update(catalogs_status_params)
        format.html { redirect_to @catalogs_status, notice: 'Status was successfully updated.' }
        format.json { render :show, status: :ok, location: @catalogs_status }
      else
        format.html { render :edit }
        format.json { render json: @catalogs_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /catalogs/statuses/1
  # DELETE /catalogs/statuses/1.json
  def destroy
    @catalogs_status.destroy
    respond_to do |format|
      format.html { redirect_to catalogs_statuses_url, notice: 'Status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_catalogs_status
      @catalogs_status = Catalogs::Status.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def catalogs_status_params
      params.require(:catalogs_status).permit(:name)
    end
end
