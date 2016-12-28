class AdminFilesController < ApplicationController
  def user_list
    @user_list = User.where(region_id: current_admin.region_id)
  end

  def asociative_user_list
    ### utilizar esta variable en la vista
    @asociative_user = AsociativeUser.where(region_id: current_admin.region_id)
  end

  def user_create_background
    ### Con este método muestro la ventana para crear antecedentes para un usuario determinado
  end

  def asociative_user_create_background
    ### Con este método muestro la ventana para crear antecedentes para un usuario_asociativo determinado
  end
end
