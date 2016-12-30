class AdminFilesController < ApplicationController
  def user_list
    logger.info "#################### ID DE REGION: #{current_admin.region_id}"
    logger.info "#################### TIPO DE ADMIN: #{current_admin.admin_type_id}"
    if current_admin.admin_type_id = 1
      logger.info "#################### ESTOY DENTRO DEL IF"

        @user_list = User.all
    else
        @user_list = User.where(region_id: current_admin.region_id)
    end
  end

  def asociative_user_list
    ### utilizar esta variable en la vista
    @asociative_user_list = AsociativeUser.where(region_id: current_admin.region_id)
  end

  def user_create_background
    ### Con este método muestro la ventana para crear antecedentes para un usuario determinado
    id = params[:id]
    session[:id] = id
  end

  def asociative_user_create_background
    ### Con este método muestro la ventana para crear antecedentes para un usuario_asociativo determinado
    id = params[:asociative_user_id]
    session[:asociative_user_id] = id
  end
end
