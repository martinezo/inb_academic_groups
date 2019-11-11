class MemberPublicationsController < ApplicationController
  before_action :set_member_publication, only: [:show, :edit, :update, :destroy]

  # GET /member_publications
  # GET /member_publications.json
  def index
    @member_publications = MemberPublication.all
  end

  # GET /member_publications/1
  # GET /member_publications/1.json
  def show
  end

  # GET /member_publications/new
  def new
    @member_publication = MemberPublication.new
  end

  # GET /member_publications/1/edit
  def edit
  end

  # POST /member_publications
  # POST /member_publications.json
  def create
    @member_publication = MemberPublication.new(member_publication_params)

    respond_to do |format|
      if @member_publication.save
        format.html { redirect_to @member_publication, notice: 'Member publication was successfully created.' }
        format.json { render :show, status: :created, location: @member_publication }
      else
        format.html { render :new }
        format.json { render json: @member_publication.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /member_publications/1
  # PATCH/PUT /member_publications/1.json
  def update
    respond_to do |format|
      if @member_publication.update(member_publication_params)
        format.html { redirect_to @member_publication, notice: 'Member publication was successfully updated.' }
        format.json { render :show, status: :ok, location: @member_publication }
      else
        format.html { render :edit }
        format.json { render json: @member_publication.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /member_publications/1
  # DELETE /member_publications/1.json
  def destroy
    @member_publication.destroy
    respond_to do |format|
      format.html { redirect_to member_publications_url, notice: 'Member publication was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member_publication
      @member_publication = MemberPublication.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def member_publication_params
      params.require(:member_publication).permit(:group_member_id, :publication_id)
    end
end
