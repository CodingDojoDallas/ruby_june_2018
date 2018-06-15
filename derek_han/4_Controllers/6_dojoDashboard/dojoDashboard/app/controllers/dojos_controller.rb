class DojosController < ApplicationController
  def index
  	@dojos = Dojo.all
  end

  def new
  end

  def create
  	Dojo.create( dojo_params )
  	redirect_to '/dojos'
  end

  def show
  	@dojo = Dojo.find(params[:id])
  	@students = Student.where(dojo_id: params[:id])
  end

  def edit
  	@dojo = Dojo.find(params[:id])
  end

  def update
  	dojo = Dojo.find(params[:id])
  	#??? I can not use "dojo_params"!!!!
  	dojo.update(branch:params[:branch], street:params[:street], city:params[:city], state:params[:state])
  	 redirect_to '/dojos'
  end

  def destroy
  	dojo = Dojo.find(params[:id])
  	dojo.destroy
  	redirect_to '/dojos'
  end

  private
    def dojo_params
      params.require(:dojo).permit(:branch, :street, :city, :state)
    end
end
