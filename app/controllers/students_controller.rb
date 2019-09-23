require 'pry'
class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :update, :activate]

  def index
    @students = Student.all
  end

  def show

  end

  def activate
    p @student
    @student.active = !@student.active
    p @student
    @student.save
    redirect_to student_path(@student)
  end

  def update
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
