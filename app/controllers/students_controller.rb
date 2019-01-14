class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def new
  end

  def show
    #byebug
    @student = Student.find(params[:id])
  end  

  def create
    #byebug
    student = Student.create(first_name: params[:first_name], last_name: params[:last_name])
    redirect_to "/students/#{student.id}"
  end

end
