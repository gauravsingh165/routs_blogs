class PiletsController < ApplicationController
  before_action :set_pilet, only: %i[ show edit update destroy ]

  # GET /pilets or /pilets.json
  def index
    @pilets = Pilet.all
  end

  # GET /pilets/1 or /pilets/1.json
  def show
  end

  # GET /pilets/new
  def new
    @pilet = Pilet.new
  end

  # GET /pilets/1/edit
  def edit
  end

  # POST /pilets or /pilets.json
  def create
    @pilet = Pilet.new(pilet_params)

    respond_to do |format|
      if @pilet.save
        format.html { redirect_to pilet_url(@pilet), notice: "Pilet was successfully created." }
        format.json { render :show, status: :created, location: @pilet }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pilet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pilets/1 or /pilets/1.json
  def update
    respond_to do |format|
      if @pilet.update(pilet_params)
        format.html { redirect_to pilet_url(@pilet), notice: "Pilet was successfully updated." }
        format.json { render :show, status: :ok, location: @pilet }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pilet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pilets/1 or /pilets/1.json
  def destroy
    @pilet.destroy

    respond_to do |format|
      format.html { redirect_to pilets_url, notice: "Pilet was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pilet
      @pilet = Pilet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pilet_params
      params.require(:pilet).permit(:name, :email, :age, :company, :address)
    end
end
