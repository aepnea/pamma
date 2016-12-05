class BenefitRequestedsController < ApplicationController
  before_action :set_benefit_requested, only: [:show, :edit, :update, :destroy]

  # GET /benefit_requesteds
  # GET /benefit_requesteds.json
  def index
    @benefit_requesteds = BenefitRequested.all
  end

  # GET /benefit_requesteds/1
  # GET /benefit_requesteds/1.json
  def show
  end

  # GET /benefit_requesteds/new
  def new
    @benefit_requested = BenefitRequested.new
  end

  # GET /benefit_requesteds/1/edit
  def edit
  end

  # POST /benefit_requesteds
  # POST /benefit_requesteds.json
  def create
    @benefit_requested = BenefitRequested.new(benefit_requested_params)

    respond_to do |format|
      if @benefit_requested.save
        format.html { redirect_to @benefit_requested, notice: 'Benefit requested was successfully created.' }
        format.json { render :show, status: :created, location: @benefit_requested }
      else
        format.html { render :new }
        format.json { render json: @benefit_requested.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /benefit_requesteds/1
  # PATCH/PUT /benefit_requesteds/1.json
  def update
    respond_to do |format|
      if @benefit_requested.update(benefit_requested_params)
        format.html { redirect_to @benefit_requested, notice: 'Benefit requested was successfully updated.' }
        format.json { render :show, status: :ok, location: @benefit_requested }
      else
        format.html { render :edit }
        format.json { render json: @benefit_requested.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /benefit_requesteds/1
  # DELETE /benefit_requesteds/1.json
  def destroy
    @benefit_requested.destroy
    respond_to do |format|
      format.html { redirect_to benefit_requesteds_url, notice: 'Benefit requested was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_benefit_requested
      @benefit_requested = BenefitRequested.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def benefit_requested_params
      params.require(:benefit_requested).permit(:benefit_type_id, :estimated_investment, :comments, :user_id, :asociative_user_id, :postulation_id)
    end
end
