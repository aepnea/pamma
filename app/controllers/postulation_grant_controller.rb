class PostulationGrantController < ApplicationController
  def index
    @br = BenefitRequested.where(postulation_date_id: params[:id])
  end

  def edit
  end
  #### cambiar variable
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
end
