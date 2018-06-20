class ChoresController < ApplicationController
    def index
        # return render 'index'
    end

    # def show
    # end

    def create
        p params # {authenticity_token: '...', name: 'Take garbage out '}

        # return redirect :back
    end
end
