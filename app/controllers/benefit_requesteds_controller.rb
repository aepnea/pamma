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

  # GET /benefit_requesteds/1/edit
  def edit
  end

  # POST /benefit_requesteds
  # POST /benefit_requesteds.json
  def create
    @benefit_requested = BenefitRequested.new(benefit_requested_params)

    respond_to do |format|
      if @benefit_requested.save
        ### Para crear postulacion
        if user_signed_in?
          user_id = current_user.id
          pb = PersonalBackground.select(:id).where(user_id: user_id)
          pb.each do |p|
             @pb_id = p.id
          end
          fg = FamilyGroup.select(:id).where(user_id: user_id)
          fg.each do |f|
            @fg_id = f.id
          end
          cw = CharacterizationWork.select(:id).where(user_id: user_id)
          cw.each do |c|
            @cw_id = c.id
          end
          br = BenefitRequested.select(:id).where(user_id: user_id)
          br.each do |b|
            @br_id = b.id
          end
          Postulation.create([{postulation_date_id: session[:postulation_date_id], user_id: user_id, personal_backgrounds_id: @pb_id, family_group_id: @fg_id, characterization_work_id: @cw_id, benefit_requested_id: @br_id, postulation_state_id: '3'}])
        elsif asociative_user_signed_in?
          asociative_user_id = current_asociative_user.id
          cw = CharacterizationWork.select(:id).where(asociative_user_id: asociative_user_id)
          cw.each do |c|
            @cw_id = c.id
          end
          br = BenefitRequested.select(:id).where(asociative_user_id: asociative_user_id)
          br.each do |b|
            @br_id = b.id
          end
          Postulation.create([{postulation_date_id: session[:postulation_date_id], asociative_users_id: asociative_user_id, characterization_work_id: @cw_id, benefit_requested_id: @br_id, postulation_state_id: '3'}])

        end

        format.html { redirect_to milestones_path, notice: 'Usted ha postulado a este fondo' }
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
      format.html { redirect_to milestones_path, notice: 'Benefit requested was successfully destroyed.' }
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
      params.require(:benefit_requested).permit(:benefit_type_id, :estimated_investment, :comments, :user_id, :asociative_user_id, :postulation_id, :postulation_date_id)
    end
end
