class ApplicationController < ActionController::API
    #esse metodo só vai ser executado no controller devise, só no momento do login
    before_action :configure_permitted_parameters, if: :devise_controller?
        
    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :password, :password_confirmation])
    end
end
