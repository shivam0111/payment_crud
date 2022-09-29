class NetbankingsController < ApplicationController
  before_action :set_netbanking, only: %i[ show edit update destroy ]

  # GET /netbankings or /netbankings.json
  def index
    @netbankings = Netbanking.all
  end

  # GET /netbankings/1 or /netbankings/1.json
  def show
  end

  # GET /netbankings/new
  def new
    @netbanking = Netbanking.new
  end

  # GET /netbankings/1/edit
  def edit
  end

  # POST /netbankings or /netbankings.json
  def create
    @netbanking = Netbanking.new(netbanking_params)

    respond_to do |format|
      if @netbanking.save
        format.html { redirect_to netbanking_url(@netbanking), notice: "Netbanking was successfully created." }
        format.json { render :show, status: :created, location: @netbanking }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @netbanking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /netbankings/1 or /netbankings/1.json
  def update
    respond_to do |format|
      if @netbanking.update(netbanking_params)
        format.html { redirect_to netbanking_url(@netbanking), notice: "Netbanking was successfully updated." }
        format.json { render :show, status: :ok, location: @netbanking }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @netbanking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /netbankings/1 or /netbankings/1.json
  def destroy
    @netbanking.destroy

    respond_to do |format|
      format.html { redirect_to netbankings_url, notice: "Netbanking was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_netbanking
      @netbanking = Netbanking.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def netbanking_params
      params.fetch(:netbanking, {})
    end
end
