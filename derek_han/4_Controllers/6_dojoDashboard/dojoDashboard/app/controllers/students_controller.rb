class StudentsController < ApplicationController

  def show
    print params
    @student = Student.find(params[:id])
    @students = Student.where(dojo_id: @student.dojo_id)
    puts @students.count, "$$$$$$$$$$$$$$$$$$$$$$"
    @dojo = Dojo.find(@student.dojo_id)
  end

  def new
    @dojo = Dojo.find(params[:id])
    @all_dojos = Dojo.all
  end

  def edit
    @student = Student.find(params[:id])
    @all_dojos = Dojo.all
    # @dojo = Dojo.find(@student.dojo_id)
  end

  def update
    p params
    @student = Student.find(params[:id])
    @student.update( student_params ) ########
    @dojo = Dojo.find_by_id(@student[:dojo_id])
    redirect_to "/dojos/#{@student.dojo_id}"
    # redirect_to "/dojos/#{@student.dojo_id}/students/#{@student.id}"
  end

  def create
    p params, "**********************"
    Student.create( student_params )
    dojo = Dojo.find(params[:dojo_id])
    p params[:dojo_id], params[:student][:dojo_id]

    redirect_to "/dojos/#{params[:student][:dojo_id]}"
  end

  def destroy
    student = Student.find(params[:id])
    @dojo = Dojo.find(student.dojo_id)
    student.destroy
    redirect_to "/dojos/#{@dojo.id}"
  end

  private
    def student_params
      params.require(:student).permit(:first_name, :last_name, :email, :dojo_id)
    end
end
