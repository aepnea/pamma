class HomeController < ApplicationController
  def admin_dashboard
  end

  def index
  end

  def index_user_dashboard
    @user = current_user
  end

  def index_user_asociative_dashboard
  end
end
