class DojosController < ApplicationController
    def index
        @count = Dojo.all.count
        @dojos = Dojo.all
        #p @dojos
    end

    def new
        flash[:success] = ""
    end

    def create
        new_dojo = Dojo.create(dojo_params)
        if new_dojo.valid? == true
            flash[:success] = "You have successfully created a Dojo!"
            redirect_to '/dojos/new'
        else
            flash[:errors] = new_dojo.errors.full_messages
            redirect_to '/dojos/new'
        end
        p new_dojo.errors.full_messages
    end

    private
        def dojo_params
            params.require(:dojo).permit(:branch, :street, :city, :state)
        end
        
end
