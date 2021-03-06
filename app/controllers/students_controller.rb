class StudentsController < ApplicationController

  def index
    @wdiers = Wdier.all
    @students = Wdier.where(role: "Student")
  end

  # def new
  #   @student = Student.new
  # end

  # def create
  #   @student = Student.create!(student_params)
  #
  #   redirect_to students_path(@student)
  # end

  def show
    @wdier = Wdier.find(params[:id])
    @student = Wdier.where(role: "Student")
    # @student = Wdier.student.where(squad_id: @instructor.squad_id)
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @students = Wdier.where(role: "Student")
    @student.update(student_params)
    redirect_to students_path(@student)
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy

    redirect_to students_path(@student)
  end

  def photos
    @student = @student.photos.find(params[:id])
  end

  private
  def student_params
    params.require(:student).permit(:name, :img_url, :github_url, :portfolio_url, :project1_url, :project2_url, :project3_url, :project4_url, :quote, :squad_id, :codey_id, :q1, :q2, :q4, :fb, :linkedin, :email, :tag_list)
  end
end
