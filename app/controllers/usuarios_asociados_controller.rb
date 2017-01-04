class UsuariosAsociadosController < ApplicationController
  before_action :set_asociative_user, only: [:show, :edit, :update, :destroy]
  #### Modificado por kna
    def index
      @asociative_users = AsociativeUser.all
    end

    def new
      @asociative_user = AsociativeUser.new
    end

    def edit
    end

    def destroy
      @asociative_user.destroy
      respond_to do |format|
        format.html { redirect_to asociative_user_url }
        format.json { head :no_content }
      end
    end

    def create
      @asociative_user = AsociativeUser.new(asociative_user_params)

      respond_to do |format|
        if @asociative_user.save
          format.html { redirect_to @asociative_user, notice: 'asociative_user was successfully created.' }
          format.json { render action: 'show', status: :created, location: @asociative_user }
        else
          format.html { render action: 'new' }
          format.json { render json: @asociative_user.errors, status: :unprocessable_entity }
        end
      end
    end

  #### hasta aca
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
    def set_asociative_user
      @asociative_user = AsociativeUser.find(params[:id])
    end

    def asociative_user_params
      params.require(:asociative_user).permit(:name, :rut, :address, :village,  :mobile, :landline, :region_id, :province_id, :commune_id, :date_foundation, :partners_number)
    end
end
