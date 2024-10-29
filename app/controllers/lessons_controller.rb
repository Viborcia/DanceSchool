class LessonsController < ApplicationController
  before_action :set_lesson, only: [:show, :enroll]

  # Akcja 'show' wyświetla szczegóły wybranej lekcji
  def show
  end

  # Akcja 'enroll' zapisuje użytkownika na lekcję
  def enroll
    if current_user.lessons.include?(@lesson)
      flash[:alert] = "You are already enrolled in this lesson."
    else
      current_user.lessons << @lesson
      flash[:notice] = "Successfully enrolled in the lesson!"
    end

    redirect_to course_path(@lesson.course)
  end

  private

  # Ustawienie instancji lekcji na podstawie przekazanego ID
  def set_lesson
    @lesson = Lesson.find(params[:id])
  end
end
