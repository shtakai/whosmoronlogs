class UdonsController < ApplicationController
  before_action :set_udon, only: [:show, :edit, :update, :destroy]

  # GET /udons
  # GET /udons.json
  def index
    @udons = Udon.all
  end

  # GET /udons/1
  # GET /udons/1.json
  def show
  end

  # GET /udons/new
  def new
    @udon = Udon.new
  end

  # GET /udons/1/edit
  def edit
  end

  # POST /udons
  # POST /udons.json
  def create
    @udon = Udon.new(udon_params)
    respond_to do |format|
      if @udon.save
        UdonJob.perform_now(@udon)
        format.html { redirect_to @udon, notice: 'Udon was successfully created.' }
        format.json { render :show, status: :created, location: @udon }
      else
        format.html { render :new }
        format.json { render json: @udon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /udons/1
  # PATCH/PUT /udons/1.json
  def update
    respond_to do |format|
      if @udon.update(udon_params)
        UdonJob.perform_now(@udon)
        format.html { redirect_to @udon, notice: 'Udon was successfully updated.' }
        format.json { render :show, status: :ok, location: @udon }
      else
        format.html { render :edit }
        format.json { render json: @udon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /udons/1
  # DELETE /udons/1.json
  def destroy
    @udon.destroy
    respond_to do |format|
      format.html { redirect_to udons_url, notice: 'Udon was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_udon
      @udon = Udon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def udon_params
      params.require(:udon).permit(:name, :kill_count)
    end
end
