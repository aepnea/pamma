class UserPostulationsController < ApplicationController
  #before_action :authenticate_user!
  #before_action :authenticate_asociative_user!


  # def show
  #   current_user
  # end

  def list
    if asociative_user_signed_in?
      @postulations_list = Postulation.where(:asociative_users_id => current_asociative_user.id)
      @asociative_user = current_asociative_user.id
    else
      @postulations_list = Postulation.where(:user_id => current_user.id)
      @user = current_user.id
    end
  end

  def postulation_period
    if asociative_user_signed_in?
      t = DateTime.now
      region = current_asociative_user.region_id
      @period = PostulationDate.where(["date_end > ? AND region_id = #{region}", t.strftime("%Y %m %d") ])
    else
      t = DateTime.now
      region = current_user.region_id
      @period = PostulationDate.where(["date_end > ? AND region_id = #{region}", t.strftime("%Y %m %d") ])
    end
  end

#  def postulate
#    @postulate_data = Postulation.new
#  end
#
#  def create
#    @postulate_data = Postulation.new(postulate_params)
#  end
#  def postulate_params
#    params.require(:postulate).permit(:user_id, :asociative_user_id, :personal_backgrounds_id, :family_group_id, :pamma_participation_id, :beneficiary_id, :characterization_work_id, :benefit_requested_id, :representative_id, :milestone_name, :milestone_description, :milestone_date_begin, :milestone_date_end)
#  end
end
