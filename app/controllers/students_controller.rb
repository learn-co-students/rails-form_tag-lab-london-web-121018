class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
   
  end

  def create
    @student = Student.create(first_name: params[:first_name], last_name: params[:last_name])
    flash[:notice] = "#{@student.to_s}"
    # binding.pry
    redirect_to action: "new"
  end

end
