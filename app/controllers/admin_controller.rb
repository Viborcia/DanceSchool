class AdminController < ApplicationController
    before_action :authenticate_admin!
    def admin
        unless current_user.admin?
            flash[:error] = 'Brak dostępu!'
            redirect_to root_path
          end
          @users = User.all
    end
    def authenticate_admin!
      redirect_to root_path, alert: 'Brak dostępu!' unless current_user && current_user.admin?
    end
end
