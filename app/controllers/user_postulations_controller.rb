class UserPostulationsController < ApplicationController
  before_action :authenticate_user!

  def list
    @postulations_list = Postulation.where(:user_id => current_user.id)
    @user = current_user.id

  end

  def postulation_period
    t = DateTime.now
    region = current_user.region_id
    @period = PostulationDate.where(["date_end > ? AND region_id = #{region}", t.strftime("%Y %m %d") ])
  end

  def postulate
    @postulation_data = Postulation.new
  end

  def postulate_params
    params.require(:postulate).permit(poner campos del modelo acá)
  end
end
