class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @students = Student.all
  end

  def create
    # byebug
    # @student = Student.create(first_name: params[:first_name], last_name: params[:last_name])
    @student = Student.create(student_params)
    redirect_to students_path
  end

  private

  def student_params
    params.require(:student).permit!

  end
end
