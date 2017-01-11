class MilestonesController < ApplicationController
  before_action :set_milestone, only: [:show, :edit, :update, :destroy]
  before_action :set_benefit_requested, only: [:show, :edit, :update, :destroy]


  # GET /milestones
  # GET /milestones.json
  def index
    if asociative_user_signed_in?
      @milestones = Milestone.where(asociative_user_id: current_asociative_user.id)
      @benefit_requesteds= BenefitRequested.where(asociative_user_id: current_asociative_user.id)
    elsif user_signed_in?
      @milestones = Milestone.where(user_id: current_user.id)
      @benefit_requesteds = BenefitRequested.where(user_id: current_user.id)
    else
      #### aca tengo que hacer la querie que me mostrara las postulaciones hechas por los usuarios
      #####

      
      @milestones = Milestone.all
      @benefit_requesteds = BenefitRequested.all
    end
  end

  # GET /milestones/1
  # GET /milestones/1.json
  def show
  end

  # GET /milestones/new
  def new
    @postulation = cookies[:id]
    if current_asociative_user.blank?
      @user = current_user.id
      @milestone = Milestone.new
      @benefit_requested = BenefitRequested.new

    else
      @asociative_user = current_asociative_user.id
      @milestone = Milestone.new
      @benefit_requested = BenefitRequested.new
      @benefit_requested = BenefitRequested.new

    end
  end

  # GET /milestones/1/edit
  def edit
  end

  # POST /milestones
  # POST /milestones.json
  def create
    @milestone = Milestone.new(milestone_params)
#    @benefit_requested = BenefitRequested.new(benefit_requested_params)

    respond_to do |format|
      if @milestone.save
        format.html { redirect_to @milestone, notice: 'Milestone was successfully created.' }
        format.json { render :show, status: :created, location: @milestone }
      else
        format.html { render :new }
        format.json { render json: @milestone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /milestones/1
  # PATCH/PUT /milestones/1.json
  def update
    respond_to do |format|
      if @milestone.update(milestone_params)
        format.html { redirect_to @milestone, notice: 'Milestone was successfully updated.' }
        format.json { render :show, status: :ok, location: @milestone }
      else
        format.html { render :edit }
        format.json { render json: @milestone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /milestones/1
  # DELETE /milestones/1.json
  def destroy
    @milestone.destroy
    respond_to do |format|
      format.html { redirect_to milestones_url, notice: 'Milestone was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_milestone
      @milestone = Milestone.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def milestone_params
      params.require(:milestone).permit(:name, :description, :date_begin, :date_end, :user_id, :asociative_user_id)
    end
    def set_benefit_requested
      @benefit_requested = BenefitRequested.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    #def benefit_requested_params
    #  params.require(:benefit_requested).permit(:benefit_type_id, :estimated_investment, :comments, :user_id, :asociative_user_id, :postulation_id)
    #end
end
