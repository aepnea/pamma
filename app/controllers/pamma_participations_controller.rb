class PammaParticipationsController < ApplicationController
  before_action :set_pamma_participation, only: [:show, :edit, :update, :destroy]

  # GET /pamma_participations
  # GET /pamma_participations.json
  def index
      if admin_signed_in?
        @pamma_participations = PammaParticipation.where(user_id: session[:id])

      else
        @pamma_participations = PammaParticipation.where(user_id: current_user.id)
      end
  end

  # GET /pamma_participations/1
  # GET /pamma_participations/1.json
  def show
  end

  # GET /pamma_participations/new
  def new
    @pamma_participation = PammaParticipation.new
  end

  # GET /pamma_participations/1/edit
  def edit
  end

  # POST /pamma_participations
  # POST /pamma_participations.json
  def create
    @pamma_participation = PammaParticipation.new(pamma_participation_params)

    respond_to do |format|
      if @pamma_participation.save
        format.html { redirect_to @pamma_participation, notice: 'Pamma participation was successfully created.' }
        format.json { render :show, status: :created, location: @pamma_participation }
      else
        format.html { render :new }
        format.json { render json: @pamma_participation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pamma_participations/1
  # PATCH/PUT /pamma_participations/1.json
  def update
    respond_to do |format|
      if @pamma_participation.update(pamma_participation_params)
        format.html { redirect_to @pamma_participation, notice: 'Pamma participation was successfully updated.' }
        format.json { render :show, status: :ok, location: @pamma_participation }
      else
        format.html { render :edit }
        format.json { render json: @pamma_participation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pamma_participations/1
  # DELETE /pamma_participations/1.json
  def destroy
    @pamma_participation.destroy
    respond_to do |format|
      format.html { redirect_to pamma_participations_url, notice: 'Pamma participation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pamma_participation
      @pamma_participation = PammaParticipation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pamma_participation_params
      params.require(:pamma_participation).permit(:previous_beneficiary, :number_times, :benefit_type_id, :project_state_type_id, :support_type_id, :user_id, :asociative_user_id)
    end
end
