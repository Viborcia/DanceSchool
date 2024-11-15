class StudentController < ApplicationController
   before_action :authenticate_student!
   def home
  end

    def student
        unless current_user.student?
            flash[:error] = 'Brak dostępu!'
            redirect_to root_path
          end
          @users = User.all
    end

   def my_course
  @courses = current_user.courses
  Rails.logger.debug "Current user: #{current_user.inspect}"
  Rails.logger.debug "Courses: #{@courses.inspect}"
end


    
    private
    
    def authenticate_student!
      redirect_to root_path, alert: 'Brak dostępu!' unless current_user && current_user.student?
    end
  

end
