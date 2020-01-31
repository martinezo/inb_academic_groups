class Admin::UsersController < ApplicationController
  before_action :set_admin_user, only: [:show, :edit, :update, :destroy, :delete]
  helper_method :sort_column, :sort_direction

  # GET /admin/users
  # GET /admin/users.json
  def index
    @resources= Admin::User.search(params[:search]).order("#{sort_column} #{sort_direction}").paginate(per_page: 11, page:  params[:page])
  end

  # GET /admin/users/1
  # GET /admin/users/1.json
  def show
    respond_to do |format|
      format.html
      format.js
    end
  end

  # GET /admin/users/new
  def new
    @resource = Admin::User.new
  end

  # GET /admin/users/1/edit
  def edit
  end

  # POST /admin/users
  # POST /admin/users.json
  def create
    @resource = Admin::User.new(admin_user_params)

    respond_to do |format|
      if @resource.save
        index
        flash[:success] = t('notices.saved_successfully')
        format.html { redirect_to @resource, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @resource }
      else
        format.html { render :new }
        format.json { render json: @resource.errors, status: :unprocessable_entity }
      end
      format.js
    end
  end

  # PATCH/PUT /admin/users/1
  # PATCH/PUT /admin/users/1.json
  def update
    respond_to do |format|
      if @resource.update(admin_user_params)
        index
        flash[:success] = t('notices.updated_successfully')
        format.html { redirect_to @resource, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @resource }
      else
        format.html { render :edit }
        format.json { render json: @resource.errors, status: :unprocessable_entity }
      end
      format.js
    end
  end

  # DELETE /admin/users/1
  # DELETE /admin/users/1.json
  def destroy
    @resource.destroy
    respond_to do |format|
      format.html { redirect_to admin_user_url, flash: {warning: t('notices.destroyed') }}
      format.json { head :no_content }
    end
  end

  # EDIT GROUPS ADMINISTRATION
  def edit_groups_admin
    @user = Admin::User.find(params[:id])
  end

  # UPDATE GROUPS ADMINISTRATION
  def update_groups_admin
    user = Admin::User.find(params[:id])
    user.groups.delete_all
    groups = params[:groups_admin].select{|k,v| v=='1'}.keys.map(&:to_i)
    groups.each do |group_id|
      Admin::UserGroup.create(user_id: user.id, group_id: group_id)
    end
    index
    respond_to do |format|
      format.html { redirect_to admin_users_path, notice: t('notices.admin_groups_config_updated') }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_user
      @resource = Admin::User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_user_params
      params.require(:admin_user).permit(:name, :email, :login, :super_user)
    end

  def sort_column
    params[:sort] || 'name'
  end

  def sort_direction
    params[:direction] || 'asc'
  end
end
