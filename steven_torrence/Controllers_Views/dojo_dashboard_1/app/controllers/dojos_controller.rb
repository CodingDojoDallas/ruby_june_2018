class DojosController < ApplicationController
    def index
        @count = Dojo.all.count
        @dojos = Dojo.all
        p @dojos
    end
end
