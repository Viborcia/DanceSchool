class CourseRegistrationsController < ApplicationController
    def create
        course = Course.find(params[:course_id])
    
        # Sprawdzenie, czy użytkownik już jest zapisany na kurs
        if course.users.include?(current_user)
          redirect_to course, alert: 'You are already enrolled in this course.'
        # Sprawdzenie, czy są dostępne miejsca
        elsif course.users.count >= course.number_of_place
          redirect_to course, alert: 'The course is full.', notice: 'The course is full.'
        else
          # Dodanie użytkownika do kursu
          course.users << current_user
          redirect_to course, notice: 'You have successfully enrolled in the course.'
        end
      end
end
