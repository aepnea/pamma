class HomeController < ApplicationController

  def admin_dashboard

  end
  
  def create_files
  end

  def index
  end

  def index_user_dashboard
    @user = current_user
    @postulations_list = Postulation.where(:user_id => current_user.id)
  end

  def index_user_asociative_dashboard
    @asociative_user = current_asociative_user
    @postulations_list = Postulation.where(:asociative_users_id => current_asociative_user.id)

  end
end
