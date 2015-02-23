class CoursesController < ApplicationController

  before_action :authenticate, except: [:index, :show]

  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      redirect_to course_path(@course)
    else
      render :new
    end
  end

  def show
    @course = Course.find(params[:id])
  end

  def destroy
    @course = Course.find(params[:id])
    @course.destroy
    redirect_path root_path, notice: 'Course deleted'
  end

  private

  def course_params
    params.require(:course).permit(:title, :day_or_night)
  end

end
