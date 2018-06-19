class RegistrationsController < Devise::RegistrationsController

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:account_update, keys: [:name])
    end


def after_sign_up_path_for(resource)
    user_path(resource)
end

def after_update_path_for(resource)
      edit_user_path(resource)
end

  private

      def sign_up_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
      end
end
