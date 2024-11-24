class LessonsController < ApplicationController
  before_action :set_lesson, only: [:show, :enroll]

  # Akcja 'show' wyświetla szczegóły wybranej lekcji
  def show
    @lesson = Lesson.find(params[:id])
    @courses = @lesson.course
  end

  # Akcja 'enroll' zapisuje użytkownika na lekcję
  def enroll
    lesson = Lesson.find(params[:id])
    if lesson.users.include?(current_user)
      flash[:alert] = "Jesteś zapisany na tą lekcje."
    elsif lesson.number_of_additional_places <= 0
      flash[:alert] = "Brak miejsc na tą lekcje."
    else
      lesson.users << current_user
      flash[:notice] = "Zostałeś pomyślnie zapisany na lekcje!"
      lesson.update(number_of_additional_places: lesson.number_of_additional_places - 1)
    end
    redirect_to course_path(lesson.course)
  end
  

  def unenroll
    lesson = Lesson.find(params[:id])
    if lesson.users.include?(current_user)
      lesson.users.delete(current_user)
      flash[:notice] = "Wypisałeś się z lekcji."
      lesson.update(number_of_additional_places: lesson.number_of_additional_places + 1)
    else
      flash[:alert] = "Nie jesteś zapisany na tę lekcję."
    end
    redirect_to course_path(lesson.course)
  end

  private

  # Ustawienie instancji lekcji na podstawie przekazanego ID
  def set_lesson
    @lesson = Lesson.find(params[:id])
    @courses = @lesson.course
  end
end
