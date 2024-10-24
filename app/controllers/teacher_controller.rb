class TeacherController < ApplicationController
    before_action :authenticate_teacher!
    def teacher
        unless current_user.teacher?
            flash[:error] = 'Brak dostępu!'
            redirect_to root_path
          end
          @users = User.all
    end
    def authenticate_teacher!
      redirect_to root_path, alert: 'Brak dostępu!' unless current_user && current_user.teacher?
    end
end
