class Catalogs::MemberTypesController < ApplicationController
  before_action :set_catalogs_member_type, only: [:show, :edit, :update, :destroy]

  # GET /catalogs/member_types
  # GET /catalogs/member_types.json
  def index
    @catalogs_member_types = Catalogs::MemberType.all
  end

  # GET /catalogs/member_types/1
  # GET /catalogs/member_types/1.json
  def show
  end

  # GET /catalogs/member_types/new
  def new
    @catalogs_member_type = Catalogs::MemberType.new
  end

  # GET /catalogs/member_types/1/edit
  def edit
  end

  # POST /catalogs/member_types
  # POST /catalogs/member_types.json
  def create
    @catalogs_member_type = Catalogs::MemberType.new(catalogs_member_type_params)

    respond_to do |format|
      if @catalogs_member_type.save
        format.html { redirect_to @catalogs_member_type, notice: 'Member type was successfully created.' }
        format.json { render :show, status: :created, location: @catalogs_member_type }
      else
        format.html { render :new }
        format.json { render json: @catalogs_member_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /catalogs/member_types/1
  # PATCH/PUT /catalogs/member_types/1.json
  def update
    respond_to do |format|
      if @catalogs_member_type.update(catalogs_member_type_params)
        format.html { redirect_to @catalogs_member_type, notice: 'Member type was successfully updated.' }
        format.json { render :show, status: :ok, location: @catalogs_member_type }
      else
        format.html { render :edit }
        format.json { render json: @catalogs_member_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /catalogs/member_types/1
  # DELETE /catalogs/member_types/1.json
  def destroy
    @catalogs_member_type.destroy
    respond_to do |format|
      format.html { redirect_to catalogs_member_types_url, notice: 'Member type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_catalogs_member_type
      @catalogs_member_type = Catalogs::MemberType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def catalogs_member_type_params
      params.require(:catalogs_member_type).permit(:name_es, :name_en)
    end
end
