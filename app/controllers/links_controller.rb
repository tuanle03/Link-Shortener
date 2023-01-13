class LinksController < ApplicationController
  # before_action :set_link, only: %i[ edit update destroy ]
    before_action :set_link, only: [:show]


  # GET /links or /links.json
  def index
    @links = Link.all
    @links_count = Link.count


  end

  # GET /links/1 or /links/1.json
  def show
    if params[:slug]
      @link = Link.find_by(slug: params[:slug])
      @link.clicked += 1
      @link.save
      redirect_to @link.url, allow_other_host: true
    else
      @link = Link.find(params[:id])
    end
  end

  # GET /links/new
  def new
    @link = Link.new
  end

  # GET /links/1/edit
  def edit
  end

  # POST /links or /links.json
  def create
    @link = Link.new(link_params)

    respond_to do |format|
      if @link.save

        format.html { redirect_to links_path, notice: "Link was successfully created." }
        format.json { render :show, status: :created, location: @link }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /links/1 or /links/1.json
  def update
    respond_to do |format|
      if @link.update(link_params)
        format.html { redirect_to link_url(@link), notice: "Link was successfully updated." }
        format.json { render :show, status: :ok, location: @link }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /links/1 or /links/1.json
  def destroy
    # @link.destroy
    @link = Link.find(params[:id])
    @link.destroy
    respond_to do |format|
      format.html { redirect_to links_url, notice: "Link was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_link
      @link = Link.find_by(slug: params[:slug])
    end

    # Only allow a list of trusted parameters through.
    def link_params
      params.require(:link).permit(:url, :slug, :clicked)
    end
end
