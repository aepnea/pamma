class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

##### ESTO ES PARA EL ERROR DEL UPDATE
  rescue_from ActiveRecord::RecordNotFound, with: :home_redirect

  rescue_from ActionController::UnknownFormat, with: :home_redirect
  def home_redirect
      redirect_to usuarios_path
  end

###### HASTA ACA

  def set_postulation_cookie
    ### preguntando si el usuario tiene o no creado una postulacion
    if cookies[:id].blank?
      #si no tiene se le crea una
        @postulation_cookie = Postulation.create!(user_id: current_user.id)
    else
      # si ya tiene uno se busca y se mete  a variable de clase
      @postulation_cookie = Postulation.find(cookies[:id])
    end

      ### Log del carrito
      logger.info "Creando postulation_cookie"

    ## si por algun motivo no se encuentra el carro se le crea uno nuevo
    rescue ActiveRecord::RecordNotFound => e
      @postulation_cookie = Postulation.create!(user_id: current_user.id)
      #cookies[:cart_id] = @shopping_cart.id
      cookies[:id] = {:value => @postulation_cookie.id, :expires => 168.hour.from_now}
    end
end
