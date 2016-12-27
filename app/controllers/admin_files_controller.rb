class AdminFilesController < ApplicationController
  def user_list
    @user_list = User.where(region_id: current_admin.region_id)
  end

  def asociative_user_list
  end

  def user_create
  end

  def asociative_user_create
  end
end
