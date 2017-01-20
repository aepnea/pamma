class AdminPostulationsController < ApplicationController
  before_action :set_postulation, only: [:show, :edit, :update, :destroy]

  # GET /postulations
  # GET /postulations.json
  def index
  #  @postulations = PostulationDate.all
    t = DateTime.now
    @period = PostulationDate.where(["date_end > ?", t.strftime("%Y %m %d") ])
  # Descomentar  para regionalizacion
  #  region = current_admin.region_id
  #  @period = PostulationDate.where(["date_end > ? AND region_id = #{region}", t.strftime("%Y %m %d") ])
  end


  # GET /postulations/1
  # GET /postulations/1.json
  def show
  end

  # GET /postulations/new
  def new
    @postulation = Postulation.new
  end

  # GET /postulations/1/edit
  def edit
    t = DateTime.now
    region = current_user.region_id
    @period = PostulationDate.where(["date_end > ? AND region_id = #{region}", t.strftime("%Y %m %d") ])
  end

  # POST /postulations
  # POST /postulations.json
  def create
    @postulation = Postulation.new(postulation_params)

    respond_to do |format|
      if @postulation.save
        format.html { redirect_to @postulation, notice: 'Postulation was successfully created.' }
        format.json { render :show, status: :created, location: @postulation }
      else
        format.html { render :new }
        format.json { render json: @postulation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /postulations/1
  # PATCH/PUT /postulations/1.json
  def update
    respond_to do |format|
      if @postulation.update(postulation_params)
        format.html { redirect_to user_postulations_postulation_period_path, notice: 'Postulation was successfully updated.' }
        format.json { render :show, status: :ok, location: @postulation }
      else
        format.html { render :edit }
        format.json { render json: @postulation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /postulations/1
  # DELETE /postulations/1.json
  def destroy
    @postulation.destroy
    respond_to do |format|
      format.html { redirect_to postulations_url, notice: 'Postulation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_postulation
      @postulation = Postulation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def postulation_params
      params.require(:postulation).permit(:user_id, :asociative_users_id, :personal_backgrounds_id, :family_group_id, :pamma_participation_id, :beneficiary_id, :characterization_work_id, :benefit_requested_id, :representative_id, :milestone_name, :milestone_description, :milestone_date_begin, :milestone_date_end)
    end
end
