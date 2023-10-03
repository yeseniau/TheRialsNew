class ApplicationController < ActionController::Base

    #se agrego estas lineas para poder guardar en la base de datos los campos adicionales del usuario creado a traves de devise

    before_action :configure_permitted_parameters, if: :devise_controller?
    protected
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :role])
        devise_parameter_sanitizer.permit(:account_update, keys: [:username, :role])
    end
    def after_sign_in_path_for(resource)
        #ruta a la que va cuando se logea el usuario
        notices_path
   end


    def authorize_request(kind = nil)
        unless kind.include?(current_user.role)
            redirect_to welcome_index_path, notice: "You are not authorized to perform this action"
        end
    end
end