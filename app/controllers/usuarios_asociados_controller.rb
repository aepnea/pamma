class UsuariosAsociadosController < ApplicationController
  before_action :set_user

  def show
    
  end

  def update
    respond_to do |format|
      if @asociative_user.update(asociative_user_params)
        format.json { respond_with_bip(@asociative_user) }
      else
        format.html{redirect_to root_path, notice: @asociative_user.errors.full_messages}
        format.json { respond_with_bip(@asociative_user) }
      end
    end
  end

  private
    def set_user
      @asociative_user = AsociativeUser.find(params[:id])
    end
  
    def asociative_user_params
      params.require(:user).permit(:name, :rut, :address, :village,  :mobile, :landline, :region_id, :province_id, :commune_id, :date_foundation, :partners_number, :email, :password, :password_confirmation)
    end
end