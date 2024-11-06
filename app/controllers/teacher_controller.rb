class TeacherController < ApplicationController
    before_action :authenticate_teacher!
    def teacher
        unless current_user.teacher?
            flash[:error] = 'Brak dostępu!'
            redirect_to root_path
          end
          @users = User.all
          
    end

    def own_course
      # Sprawdzamy, czy current_user jest prawidłowo ustawiony
      Rails.logger.debug "current_user.id: #{current_user.id}"
  
      # Pobieramy kursy prowadzone przez użytkownika (instruktora)
      @courses = Course.where(instructor: current_user.id.to_s)
  
      # Logujemy wynik zapytania
      Rails.logger.debug "Courses found: #{@courses.inspect}"
  
      # Sprawdzamy, ile kursów zostało znalezionych
      Rails.logger.debug "Number of courses: #{@courses.count}"
    end
    
    

    private

    def authenticate_teacher!
      redirect_to root_path, alert: 'Brak dostępu!' unless current_user && current_user.teacher?
    end
end
