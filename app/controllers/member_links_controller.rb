class MemberLinksController < ApplicationController
  before_action :set_member_link, only: [:show, :edit, :update, :destroy]

  # GET /member_links
  # GET /member_links.json
  def index
    @member_links = MemberLink.all
  end

  # GET /member_links/1
  # GET /member_links/1.json
  def show
  end

  # GET /member_links/new
  def new
    @member_link = MemberLink.new
  end

  # GET /member_links/1/edit
  def edit
  end

  # POST /member_links
  # POST /member_links.json
  def create
    @member_link = MemberLink.new(member_link_params)

    respond_to do |format|
      if @member_link.save
        format.html { redirect_to @member_link, notice: 'Member link was successfully created.' }
        format.json { render :show, status: :created, location: @member_link }
      else
        format.html { render :new }
        format.json { render json: @member_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /member_links/1
  # PATCH/PUT /member_links/1.json
  def update
    respond_to do |format|
      if @member_link.update(member_link_params)
        format.html { redirect_to @member_link, notice: 'Member link was successfully updated.' }
        format.json { render :show, status: :ok, location: @member_link }
      else
        format.html { render :edit }
        format.json { render json: @member_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /member_links/1
  # DELETE /member_links/1.json
  def destroy
    @member_link.destroy
    respond_to do |format|
      format.html { redirect_to member_links_url, notice: 'Member link was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member_link
      @member_link = MemberLink.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def member_link_params
      params.require(:member_link).permit(:group_member_id, :link_id)
    end
end
