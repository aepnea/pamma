class PersonalBackgroundsController < ApplicationController
  before_action :set_personal_background, only: [:show, :edit, :update, :destroy]

  # GET /personal_backgrounds
  # GET /personal_backgrounds.json
  def index

    if admin_signed_in?
      @personal_backgrounds = PersonalBackground.where(user_id: session[:id])
    else
      @personal_backgrounds = PersonalBackground.where(user_id: current_user.id)
  
    end
  end

  # GET /personal_backgrounds/1
  # GET /personal_backgrounds/1.json
  def show
  end

  # GET /personal_backgrounds/new
  def new
    @personal_background = PersonalBackground.new
  end

  # GET /personal_backgrounds/1/edit
  def edit
  end

  # POST /personal_backgrounds
  # POST /personal_backgrounds.json
  def create
    @personal_background = PersonalBackground.new(personal_background_params)

    respond_to do |format|
      if @personal_background.save
        format.html { redirect_to @personal_background, notice: 'Personal background was successfully created.' }
        format.json { render :show, status: :created, location: @personal_background }
      else
        format.html { render :new }
        format.json { render json: @personal_background.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /personal_backgrounds/1
  # PATCH/PUT /personal_backgrounds/1.json
  def update
    respond_to do |format|
      if @personal_background.update(personal_background_params)
        format.html { redirect_to @personal_background, notice: 'Personal background was successfully updated.' }
        format.json { render :show, status: :ok, location: @personal_background }
      else
        format.html { render :edit }
        format.json { render json: @personal_background.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personal_backgrounds/1
  # DELETE /personal_backgrounds/1.json
  def destroy
    @personal_background.destroy
    respond_to do |format|
      format.html { redirect_to personal_backgrounds_url, notice: 'Personal background was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_personal_background
      @personal_background = PersonalBackground.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def personal_background_params
      params.require(:personal_background).permit(:scholarship_type_id, :retirement_system_type_id, :activity_type_id, :training_type_id, :social_record_status_type_id, :score, :last_poll, :user_id)
    end
end
