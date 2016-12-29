class UsuariosController < ApplicationController
  before_action :set_user

  def show
    
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.json { respond_with_bip(@user) }
      else
        format.html{redirect_to root_path, notice: @user.errors.full_messages}
        format.json { respond_with_bip(@user) }
      end
    end
  end

  private
    def set_user
      @user = User.find(params[:id])
    end
  
    def user_params
      params.require(:user).permit(:first_name, :last_name, :surname, :rut, :birthdate, :gender_id, :civil_status_id, :address, :village, :mobile, :landline, :region_id, :province_id, :commune_id, :email, :password, :password_confirmation)
    end
end