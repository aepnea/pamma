class UserPostulationsController < ApplicationController
  def list
    @postulations_list = Postulation.where(:user_id => current_user.id)
    @user = current_user.id

  end

  def postulation_period
    t = DateTime.now
    @period = PostulationDate.where(['date_end > ?', t.strftime("%Y %m %d") ])
  end

  def postulate
    @postulation_data = Postulation.new
  end
end
