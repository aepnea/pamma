class BeneficiariesController < ApplicationController
  before_action :set_beneficiary, only: [:show, :edit, :update, :destroy]

  # GET /beneficiaries
  # GET /beneficiaries.json
  def index
      if admin_signed_in?
        @beneficiaries = Beneficiary.where(user_id: session[:id])
    
      else
        @beneficiaries = Beneficiary.where(user_id: current_user.id)
      end
  end

  # GET /beneficiaries/1
  # GET /beneficiaries/1.json
  def show
  end

  # GET /beneficiaries/new
  def new
      @beneficiary = Beneficiary.new
  end

  # GET /beneficiaries/1/edit
  def edit
  end

  # POST /beneficiaries
  # POST /beneficiaries.json
  def create
    @beneficiary = Beneficiary.new(beneficiary_params)

    respond_to do |format|
      if @beneficiary.save
        format.html { redirect_to beneficiaries_path, notice: 'Beneficiary was successfully created.' }
        format.json { render :show, status: :created, location: @beneficiary }
      else
        format.html { render :new }
        format.json { render json: @beneficiary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /beneficiaries/1
  # PATCH/PUT /beneficiaries/1.json
  def update
    respond_to do |format|
      if @beneficiary.update(beneficiary_params)
        format.html { redirect_to @beneficiary, notice: 'Beneficiary was successfully updated.' }
        format.json { render :show, status: :ok, location: @beneficiary }
      else
        format.html { render :edit }
        format.json { render json: @beneficiary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beneficiaries/1
  # DELETE /beneficiaries/1.json
  def destroy
    @beneficiary.destroy
    respond_to do |format|
      format.html { redirect_to beneficiaries_url, notice: 'Beneficiary was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_beneficiary
      @beneficiary = Beneficiary.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def beneficiary_params
      params.require(:beneficiary).permit(:name, :rut, :address, :age, :user_id)
    end
end
