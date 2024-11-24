class CourseRegistrationsController < ApplicationController
    def create
        course = Course.find(params[:course_id])
    
        # Sprawdzenie, czy użytkownik już jest zapisany na kurs
        if course.users.include?(current_user)
          redirect_to course, alert: 'Jesteś zapisany na ten kurs.'
        # Sprawdzenie, czy są dostępne miejsca
        elsif course.number_of_place <= 0
          redirect_to course, alert: 'Brak miejsc. Kurs jest pełny.'
        else
          # Dodanie użytkownika do kursu
          course.users << current_user
          redirect_to course, notice: 'Zostałeś pomyślnie zapisany na kurs!'
          course.update(number_of_place: course.number_of_place - 1)
        end
      end
end
