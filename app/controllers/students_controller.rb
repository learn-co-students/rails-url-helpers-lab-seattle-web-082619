class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    # byebug
    @students = Student.all
  end

  def show
    set_student
    @active = active_status
  end

  def edit
    @student = set_student
    @student.update(active: !@student.active)
    redirect_to student_path(@student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end

    def active_status
      set_student.active ? "This student is currently active." : "This student is currently inactive."
    end
end