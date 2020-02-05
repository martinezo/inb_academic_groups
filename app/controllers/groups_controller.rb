class GroupsController < ApplicationController
  before_action :set_group, only: [:show, :edit, :update, :destroy, :delete]
  helper_method :sort_column, :sort_direction

  # GET /groups
  # GET /groups.json
  def index
    @resources = Group.search(params[:search]).where(id: current_user.admin_groups).order("#{sort_column} #{sort_direction}").paginate(per_page: 11, page:  params[:page])
    authorize @resources
  end

  def by_department
    @resources = Group.from_department(params[:department_id]).search(params[:search]).order("#{sort_column} #{sort_direction}").paginate(per_page: 11, page:  params[:page])
  end

  # GET /groups/1
  # GET /groups/1.json
  def show
    authorize @resource
    respond_to do |format|
      format.html
      format.js
    end
  end

  # GET /groups/new
  def new
    @resource = Group.new
    authorize @resource
  end

  # GET /groups/1/edit
  def edit
    authorize @resource
  end

  # POST /groups
  # POST /groups.json
  def create
    @resource = Group.new(group_params)

    respond_to do |format|
      if @resource.save
        index

        flash[:success] = t('notices.saved_successfully')
        format.html { redirect_to @resource, notice: 'Group was successfully created.' }
        format.json { render :show, status: :created, location: @resource }
      else
        format.html { render :new }
        format.json { render json: @resource.errors, status: :unprocessable_entity }
      end
      format.js
    end
  end

  # PATCH/PUT /groups/1
  # PATCH/PUT /groups/1.json
  def update
    respond_to do |format|
      if @resource.update(group_params)
        # Load records in order to refresh index page
        index
        flash[:success] = t('notices.updated_successfully')
        format.html { redirect_to @resource, warning: 'Group was successfully updated.'}
        format.json { render :show, status: :ok, location: @resource }
      else
        format.html { render :edit }
        format.json { render json: @resource.errors, status: :unprocessable_entity }
      end
      format.js
    end
  end

  def delete
    authorize @resource
  end

  # DELETE /groups/1
  # DELETE /groups/1.json
  def destroy
    @resource.destroy
    respond_to do |format|
      format.html { redirect_to groups_url, flash: {warning: t('notices.destroyed') }}
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_group
    @resource = Group.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def group_params
    params.require(:group).permit(:name_es, :name_en, :catalogs_location_id, :catalogs_department_id)
  end

  def sort_column
    params[:sort] || 'name_es'
  end

  def sort_direction
    params[:direction] || 'asc'
  end
end
