class PaytmsController < ApplicationController
  before_action :set_paytm, only: %i[ show edit update destroy ]

  # GET /paytms or /paytms.json
  def index
    
    user=User.find(params[:user_id])
    paytm = user.paytms
    @paytms = paytm.paginate(page: params[:page], per_page: 10)

    render json: @paytms
  end

  # GET /paytms/1 or /paytms/1.json
  def show
  end

  # GET /paytms/new
  def new
    @paytm = Paytm.new
  end

  # GET /paytms/1/edit
  def edit
  end

  # POST /paytms or /paytms.json
  def create
    @paytm = Paytm.new(paytm_params)

    respond_to do |format|
      if @paytm.save
        format.html { redirect_to paytm_url(@paytm), notice: "Paytm was successfully created." }
        format.json { render :show, status: :created, location: @paytm }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @paytm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /paytms/1 or /paytms/1.json
  def update
    respond_to do |format|
      if @paytm.update(paytm_params)
        format.html { redirect_to paytm_url(@paytm), notice: "Paytm was successfully updated." }
        format.json { render :show, status: :ok, location: @paytm }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @paytm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paytms/1 or /paytms/1.json
  def destroy
    @paytm.destroy

    respond_to do |format|
      format.html { redirect_to paytms_url, notice: "Paytm was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paytm
      @paytm = Paytm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def paytm_params
      params.fetch(:paytms).permit(:mobile, :name, :user_id)
    end
end
