class StudentsController < ApplicationController



  def create
    @teacher = Teacher.find(params[:teacher_id])
    @student = @teacher.students.create(student_params)
    redirect_to teacher_path(@teacher)
  end

  

  def destroy
    @teacher = Teacher.find(params[:teacher_id])
    @student = @teacher.students.find(params[:id])
    @student.destroy
    redirect_to teacher_path(@teacher), status: 303
  end

  private
    def student_params
      params.require(:student).permit(:name, :subject)
    end
end
