class PostulationDatesController < ApplicationController
  before_action :set_postulation_date, only: [:show, :edit, :update, :destroy]

  # GET /postulation_dates
  # GET /postulation_dates.json
  def index
    @postulation_dates = PostulationDate.all
  end

  # GET /postulation_dates/1
  # GET /postulation_dates/1.json
  def show
  end

  # GET /postulation_dates/new
  def new
    @postulation_date = PostulationDate.new
  end

  # GET /postulation_dates/1/edit
  def edit
  end

  # POST /postulation_dates
  # POST /postulation_dates.json
  def create
    @postulation_date = PostulationDate.new(postulation_date_params)

    respond_to do |format|
      if @postulation_date.save
        format.html { redirect_to @postulation_date, notice: 'Postulation date was successfully created.' }
        format.json { render :show, status: :created, location: @postulation_date }
      else
        format.html { render :new }
        format.json { render json: @postulation_date.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /postulation_dates/1
  # PATCH/PUT /postulation_dates/1.json
  def update
    respond_to do |format|
      if @postulation_date.update(postulation_date_params)
        format.html { redirect_to @postulation_date, notice: 'Postulation date was successfully updated.' }
        format.json { render :show, status: :ok, location: @postulation_date }
      else
        format.html { render :edit }
        format.json { render json: @postulation_date.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /postulation_dates/1
  # DELETE /postulation_dates/1.json
  def destroy
    @postulation_date.destroy
    respond_to do |format|
      format.html { redirect_to postulation_dates_url, notice: 'Postulation date was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_postulation_date
      @postulation_date = PostulationDate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def postulation_date_params
      params.require(:postulation_date).permit(:name, :date_begin, :date_end, :user_type, :postulation_standard_id, :state, :region_id)
    end
end
