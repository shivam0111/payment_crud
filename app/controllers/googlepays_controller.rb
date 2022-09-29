class GooglepaysController < ApplicationController
  before_action :set_googlepay, only: %i[ show edit update destroy ]

  # GET /googlepays or /googlepays.json
  def index
    @googlepays = Googlepay.all
  end

  # GET /googlepays/1 or /googlepays/1.json
  def show
  end

  # GET /googlepays/new
  def new
    @googlepay = Googlepay.new
  end

  # GET /googlepays/1/edit
  def edit
  end

  # POST /googlepays or /googlepays.json
  def create
    @googlepay = Googlepay.new(googlepay_params)

    respond_to do |format|
      if @googlepay.save
        format.html { redirect_to googlepay_url(@googlepay), notice: "Googlepay was successfully created." }
        format.json { render :show, status: :created, location: @googlepay }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @googlepay.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /googlepays/1 or /googlepays/1.json
  def update
    respond_to do |format|
      if @googlepay.update(googlepay_params)
        format.html { redirect_to googlepay_url(@googlepay), notice: "Googlepay was successfully updated." }
        format.json { render :show, status: :ok, location: @googlepay }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @googlepay.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /googlepays/1 or /googlepays/1.json
  def destroy
    @googlepay.destroy

    respond_to do |format|
      format.html { redirect_to googlepays_url, notice: "Googlepay was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_googlepay
      @googlepay = Googlepay.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def googlepay_params
      params.fetch(:googlepay, {})
    end
end
