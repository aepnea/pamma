class FamilyGroupsController < ApplicationController
  before_action :set_family_group, only: [:show, :edit, :update, :destroy]

  # GET /family_groups
  # GET /family_groups.json
  def index
    @family_groups = FamilyGroup.where(user_id: current_user.id)
  end

  # GET /family_groups/1
  # GET /family_groups/1.json
  def show
  end

  # GET /family_groups/new
  def new
    @family_group = FamilyGroup.new
  end

  # GET /family_groups/1/edit
  def edit
  end

  # POST /family_groups
  # POST /family_groups.json
  def create
    @family_group = FamilyGroup.new(family_group_params)

    respond_to do |format|
      if @family_group.save
        format.html { redirect_to @family_group, notice: 'Family group was successfully created.' }
        format.json { render :show, status: :created, location: @family_group }
      else
        format.html { render :new }
        format.json { render json: @family_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /family_groups/1
  # PATCH/PUT /family_groups/1.json
  def update
    respond_to do |format|
      if @family_group.update(family_group_params)
        format.html { redirect_to @family_group, notice: 'Family group was successfully updated.' }
        format.json { render :show, status: :ok, location: @family_group }
      else
        format.html { render :edit }
        format.json { render json: @family_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /family_groups/1
  # DELETE /family_groups/1.json
  def destroy
    @family_group.destroy
    respond_to do |format|
      format.html { redirect_to family_groups_url, notice: 'Family group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_family_group
      @family_group = FamilyGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def family_group_params
      params.require(:family_group).permit(:name, :age, :relationship_type_id, :activity, :scholarship_type_id, :user_id)
    end
end
