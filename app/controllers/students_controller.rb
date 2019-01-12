class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
    # binding.pry
    @student = Student.last
    # binding.pry
  end

  def create
    @student = Student.create(first_name:params[:first_name],last_name:params[:last_name])
    # @student = Student.create(params[:student])
    # binding.pry
    flash[:notice] = "#{@student.to_s}"

    redirect_to action: "new"
  end

  def show
    @student = Student.find(params[:id])
  end

end
