class StudentsController < ApplicationController
def index
  	@students = Student.all
  end

  def edit
     @student = Student.find(params[:id])
  end

  def show
  	@student = Student.find(params[:id])
  end

  def new
  	@student = Student.new
  end

  def create
    @student = Student.create(student_params)
    redirect_to students_path
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params)
    redirect_to student_path(params[:id])
  end

  private

  def student_params
     params.require(:student).permit(:title, :location, :skills, :summary, :github, :linkedin, :school, :jobtypes, :photo, :user_id)
  end
end
