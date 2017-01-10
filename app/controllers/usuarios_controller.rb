class UsuariosController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

#### Modificado por kna
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def edit
  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to user_url }
      format.json { head :no_content }
    end
  end

  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to root_path, notice: 'usuario was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

#### hasta aca
  def show
  end

  def update

      respond_to do |format|

      if @user.update(user_params)
        format.html { redirect_to root_path, notice: 'El usuario edito sus datos' }
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
      params.require(:user).permit(:first_name, :last_name, :surname, :rut, :birthdate, :gender_id, :civil_status_id, :address, :village, :mobile, :landline, :region_id, :province_id, :commune_id, :email, :password)
    end
end
