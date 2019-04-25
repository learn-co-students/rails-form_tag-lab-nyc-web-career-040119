class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    find_student
  end

  def new
  end

  def create
    @student = Student.create(student_params)
    redirect_to student_path(@student)
  end

  private

  def find_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end
  
end
