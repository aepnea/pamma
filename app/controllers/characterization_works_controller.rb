class CharacterizationWorksController < ApplicationController
  before_action :set_characterization_work, only: [:show, :edit, :update, :destroy]

  # GET /characterization_works
  # GET /characterization_works.json
  def index
    @characterization_works = CharacterizationWork.where(user_id: current_user.id)
  end

  # GET /characterization_works/1
  # GET /characterization_works/1.json
  def show
  end

  # GET /characterization_works/new
  def new
      @characterization_work = CharacterizationWork.new    
  end

  # GET /characterization_works/1/edit
  def edit
  end

  # POST /characterization_works
  # POST /characterization_works.json
  def create
    @characterization_work = CharacterizationWork.new(characterization_work_params)

    respond_to do |format|
      if @characterization_work.save
        format.html { redirect_to @characterization_work, notice: 'Characterization work was successfully created.' }
        format.json { render :show, status: :created, location: @characterization_work }
      else
        format.html { render :new }
        format.json { render json: @characterization_work.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /characterization_works/1
  # PATCH/PUT /characterization_works/1.json
  def update
    respond_to do |format|
      if @characterization_work.update(characterization_work_params)
        format.html { redirect_to @characterization_work, notice: 'Characterization work was successfully updated.' }
        format.json { render :show, status: :ok, location: @characterization_work }
      else
        format.html { render :edit }
        format.json { render json: @characterization_work.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /characterization_works/1
  # DELETE /characterization_works/1.json
  def destroy
    @characterization_work.destroy
    respond_to do |format|
      format.html { redirect_to characterization_works_url, notice: 'Characterization work was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_characterization_work
      @characterization_work = CharacterizationWork.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def characterization_work_params
      params.require(:characterization_work).permit(:work_name, :location, :sector, :mountain_range, :region_id, :province_id, :commune_id, :utm_north_coordinate, :utm_east_coordinate, :buyer_power, :distance, :mining_district, :number_workers, :owner_type_id, :mining_properties_constitution_type_id, :operation_type_id, :extracted_mineral_type_id, :mining_information_available_type_id, :user_id, :asociative_user_id)
    end
end
