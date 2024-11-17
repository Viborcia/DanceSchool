class CoursesController < ApplicationController
  before_action :set_course, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index]

  # GET /courses or /courses.json
  def index
        @courses = Course.all.includes(:instructor)
  end
 
  # GET /courses/1 or /courses/1.json
  def show
    @course = Course.find(params[:id])
    @instructor = @course.instructor
    Rails.logger.debug "Course: #{@course.inspect}"
    Rails.logger.debug "Instructor: #{@instructor.inspect}"
  end
  

  # GET /courses/new
  def new
    @course = Course.new
  end

  # GET /courses/1/edit
  def edit
  end

  # POST /courses or /courses.json
  def create
    course_params[:weekday] = course_params[:weekday].to_i if course_params[:weekday].present?
    @course = Course.new(course_params)

    respond_to do |format|
      if @course.save
        format.html { redirect_to course_url(@course), notice: "Course was successfully created." }
        format.json { render :show, status: :created, location: @course }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /courses/1 or /courses/1.json
  def update
    respond_to do |format|
      if @course.update(course_params)
        format.html { redirect_to course_url(@course), notice: "Course was successfully updated." }
        format.json { render :show, status: :ok, location: @course }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /courses/1 or /courses/1.json
  def destroy
    @course.destroy!

    respond_to do |format|
      format.html { redirect_to courses_url, notice: "Course was successfully destroyed." }
      format.json { head :no_content }
    end
  end


  def unenroll
    course = Course.find(params[:id])
    if course.users.include?(current_user)
      course.users.delete(current_user)
      flash[:notice] = "Wypisałeś się z kursu."
    else
      flash[:alert] = "Nie jesteś zapisany na ten kurs."
    end
    redirect_to courses_path
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course
      @course = Course.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def course_params
      params.require(:course).permit(:name, :instructor_id, :description, :number_of_place, :number_of_lessons, :level, :start_date, :is_pair, :weekday)
    end
end
