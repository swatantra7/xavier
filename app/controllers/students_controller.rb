class StudentsController < ApplicationController

  before_action :authenticate_admin_user!, only: [:approve, :index]

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      flash[:notice] = 'Student Registered Successfully'
    else
      flash[:alert] = @student.errors.full_messages.join(', ')
    end
    redirect_to new_student_path
  end

  def approve
    student = Student.find(params[:id])
    student.approve!
    flash[:notice] = 'Student Approved Successfully'
    redirect_to students_path
  end

  private
    
  def student_params
    params.require(:student).permit(
      :name, :email, :dob, :aadhar_number, :address, documents_attributes: [:id, :resource_id, :resource_type, :category, :doc]
    )
  end

end