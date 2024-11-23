class MainController < ApplicationController
  def main_stage
  end
  def instructors
    @instructors=User.where(role: 1)
  end
  
  def instructor_grafik
    @instructor = User.find(params[:id])
    unless @instructor.teacher?
      redirect_to root_path, alert: "Brak dostępu!"
    end

    @courses = Course.where(instructor: @instructor)

  end
end
