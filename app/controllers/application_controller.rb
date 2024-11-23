class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :phone_number, :address, :gender])
      devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :phone_number, :address, :gender])
    end

    def after_sign_in_path_for(resource)
        if current_user.student?
          student_path
        elsif current_user.teacher?
          teacher_path
        elsif current_user.admin?
          admin_path
        else
          root_path
        end
      end

      def after_update_path_for(resource)
        Rails.logger.info "User role: #{resource.role}"
        if resource.student?
          Rails.logger.info "Redirecting to student profile"
          student_profile_path
        elsif resource.teacher?
          Rails.logger.info "Redirecting to teacher profile"
          teacher_profile_path
        else
          Rails.logger.info "Redirecting to root path"
          root_path
        end
      end
      
end
