class GroupMembersController < ApplicationController
  require 'yaml'

  before_action :set_group_member, only: [:show, :edit, :update, :destroy, :delete, :switch_status]
  helper_method :sort_column, :sort_direction

  # GET /group_members
  # GET /group_members.json
  def index
    @resources = GroupMember.search(params[:search]).where(group_id: current_user.admin_groups).order("#{sort_column} #{sort_direction}").paginate(per_page: 11, page:  params[:page])
  end

  def by_group
    @resources = GroupMember.from_group(params[:group_id]).where(group_id: current_user.admin_groups).search(params[:search]).order("#{sort_column} #{sort_direction}").paginate(per_page: 11, page:  params[:page])
  end

  # GET /group_members/1
  # GET /group_members/1.json
  def show
  end

  # GET /group_members/new
  def new
    @resource = GroupMember.new
    #2.times do
    #  @resource.links.build
    #end
  end

  # GET /group_members/1/edit
  def edit
  end

  # POST /group_members
  # POST /group_members.json
  def create
    @resource = GroupMember.new(group_member_params)
    authorize @resource
    respond_to do |format|
      if @resource.save
        attach_active_resources
        format.html { redirect_to group_member_path(id: @resource, group_id: params[:group_id]), notice: 'Group member was successfully created.' }
        format.json { render :show, status: :created, location: @resource }
      else
        format.html { render :new }
        format.json { render json: @resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /group_members/1
  # PATCH/PUT /group_members/1.json
  def update
    respond_to do |format|
      if @resource.update(group_member_params)
        @resource.avatar.purge if params[:group_member][:remove_avatar] == '1'
        @resource.research_photo.purge if params[:group_member][:remove_research_photo] == '1'
        format.html { redirect_to group_member_path(id: @resource, group_id: params[:group_id]), notice: t('notices.updated_successfully')}
        format.json { render :show, status: :ok, location: @resource }
      else
        format.html { render :edit }
        format.json { render json: @resource.errors, status: :unprocessable_entity }
      end
    end
  end

  def delete
    @group_id = params[:group_id]
  end

  # DELETE /group_members/1
  # DELETE /group_members/1.json
  def destroy
    @resource.destroy
    respond_to do |format|
      if params[:group_id]
        format.html { redirect_to by_group_path(params[:group_id]), flash: {warning: t('notices.destroyed') }}
      else
        format.html { redirect_to group_members_url, flash: {warning: t('notices.destroyed') }}
      end
      format.json { head :no_content }
    end
  end

  def fields_setup
    config = YAML.safe_load(File.read('config/app_config.yml'))
    gm_default_attrs = config['gm_default_attrs']
    @gm_attrs = Catalogs::MemberType.find(params[:id]).gm_attrs_arr + gm_default_attrs
    @gm_attrs.map!{|attr| "group_member_#{attr}"}
  end

  def switch_status
    respond_to do |format|
      if @resource.catalogs_status_id == 1
        @resource.update!(catalogs_status_id: 2)
        flash[:warning] = t('notices.member_inactivated')
      else
        @resource.update!(catalogs_status_id: 1)
        flash[:alert] = t('notices.member_activated')
      end
      format.html { redirect_to group_members_url }
    end
  end

  def attach_active_resources
    @resource.avatar.attach(params[:avatar])
    @resource.avatar.attach(params[:research_photo])
  end

  def add_link
  end

  def destroy_link
    @link_id = params[:id]
  end

  def add_publication
  end

  def destroy_publication
    @publication_id = params[:id]
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_group_member
    @resource = GroupMember.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def group_member_params
    params.require(:group_member).permit(:group_id, :firstname, :lastname, :photo_file_name, :email,
                                         :phone_numbers, :academic_career_es, :academic_career_en, :activities_or_topics_es, :activities_or_topics_en,
                                         :research_interests_es, :research_interests_en, :photo_res_file_name,
                                         :research_photo_descr_es, :research_photo_descr_en, :catalogs_member_type_id,
                                         :catalogs_status_id, :current_position_es, :current_position_en,
                                         :current_workplace, :avatar, :research_photo, :resume, :catalogs_level_id,
                                         links_attributes: [:id, :name_es, :name_en, :link, :_destroy],
                                         publications_attributes: [:id, :catalogs_pub_type_id, :title, :link, :pub_date, :_destroy])
  end

  def sort_column
    params[:sort] || 'lastname'
  end

  def sort_direction
    params[:direction] || 'asc'
  end
end
