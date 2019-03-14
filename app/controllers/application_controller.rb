class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    before_action :configure_permitted_parameters, if: :devise_controller?



    protected 
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:age, :gender,:username,:district,:residence,:profile,:search])
        devise_parameter_sanitizer.permit(:account_update, keys: [:name, :age, :gender, :username, :district,:residence,:profile])
    end

end
