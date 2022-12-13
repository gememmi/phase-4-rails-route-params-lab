class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

  def name
    student = Student.where(first_name: params[:name]) || Student.where(last_name: params[:name])
    render json: student
  end

end
