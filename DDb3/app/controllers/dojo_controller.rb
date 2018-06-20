class DojoController < ApplicationController
    def index
        @dojos = Dojo.all
    end

    def new
        render 'new'
    end

    def create
        @dojo = Dojo.create(dojo_params)
        redirect_to '/dojos'
    end

    def show
        @dojo = Dojo.find(params[:id])
    end

    def edit
        puts 'hello edit'
        @dojo = Dojo.find(params[:id])
    end

    def update
        @dojo = Dojo.find(params[:id]).update(dojo_params)
        redirect_to '/dojos'
    end
    private
        def dojo_params
            params.require(:dojo).permit(:brand, :city, :street, :state)
        end
      
end
