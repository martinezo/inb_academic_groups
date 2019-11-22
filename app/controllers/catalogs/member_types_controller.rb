class Catalogs::MemberTypesController < ApplicationController
  before_action :set_catalogs_member_type, only: [:show, :edit, :update, :destroy, :delete]
  before_action :set_group_member_attrs, only: [:edit, :new, :show ]
  helper_method :sort_column, :sort_direction

  # GET /catalogs/member_types
  # GET /catalogs/member_types.json
  def index
    @resources = Catalogs::MemberType.search(params[:search]).order("#{sort_column} #{sort_direction}").paginate(per_page: 11, page:  params[:page])
  end

  # GET /catalogs/member_types/1
  # GET /catalogs/member_types/1.json
  def show
    respond_to do |format|
      format.html
      format.js
    end
  end

  # GET /catalogs/member_types/new
  def new
    @resource = Catalogs::MemberType.new
  end

  # GET /catalogs/member_types/1/edit
  def edit; end

  # POST /catalogs/member_types
  # POST /catalogs/member_types.json
  def create
    @resource = Catalogs::MemberType.new(catalogs_member_type_params)
    respond_to do |format|
      @resource.gm_attrs = get_attrs
      if @resource.save
        index
        flash[:success] = t('notices.saved_successfully')
        format.html { redirect_to @resource, notice: 'Member type was successfully created.' }
        format.json { render :show, status: :created, location: @resource }
      else
        format.html { render :new }
        format.json { render json: @resource.errors, status: :unprocessable_entity }
      end
      format.js
    end
  end

  # PATCH/PUT /catalogs/member_types/1
  # PATCH/PUT /catalogs/member_types/1.json
  def update
    respond_to do |format|
      @resource.gm_attrs = get_attrs
      if @resource.update(catalogs_member_type_params)
        index
        flash[:success] = t('notices.updated_successfully')
        format.html { redirect_to @resource, notice: 'Member type was successfully updated.' }
        format.json { render :show, status: :ok, location: @resource }
      else
        format.html { render :edit }
        format.json { render json: @resource.errors, status: :unprocessable_entity }
      end
      format.js
    end
  end

  # DELETE /catalogs/member_types/1
  # DELETE /catalogs/member_types/1.json
  def destroy
    @resource.destroy
    respond_to do |format|
      format.html { redirect_to catalogs_member_types_url, flash: {warning: t('notices.destroyed') }}
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_catalogs_member_type
    @resource = Catalogs::MemberType.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def catalogs_member_type_params
    params.require(:catalogs_member_type).permit(:name_es, :name_en, :attrs)
  end

  def get_attrs
    a = []
    params[:catalogs_member_type].each do |p|
      a << p[0][5..] if (p[0].start_with? 'attr_') && p[1] == '1'
    end

    a.join ','
  end

  def set_group_member_attrs
    @member_attrs = GroupMember.new.attribute_names + %w[links publications] - %w[id firstname lastname photo_file_name email phone_numbers
    group_id catalogs_member_type_id catalogs_status_id current_position_es current_position_en current_workplace created_at updated_at]
  end

  def sort_column
    params[:sort] || 'name_es'
  end

  def sort_direction
    params[:direction] || 'asc'
  end
end
