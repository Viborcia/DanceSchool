class LessonsController < ApplicationController
  before_action :set_lesson, only: [:show, :enroll]

  # Akcja 'show' wyświetla szczegóły wybranej lekcji
  def show
    @lesson = Lesson.find(params[:id])
    @courses = @lesson.course
  end

  # Akcja 'enroll' zapisuje użytkownika na lekcję
  def enroll
    if current_user.lessons.include?(@lesson)
      flash[:alert] = "Jesteś zapisany na tą lekcje."
    else
      current_user.lessons << @lesson
      flash[:notice] = "Zostałeś pomyślnie zapisany na lekcje.!"
    end

    redirect_to course_path(@lesson.course)
  end

  def unenroll
    lesson = Lesson.find(params[:id])
    if lesson.users.include?(current_user)
      lesson.users.delete(current_user)
      flash[:notice] = "Wypisałeś się z lekcji."
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
