class UsersController < ApplicationController
    def hello
        render text: "Hello, Coding Dojo!"
    end

    def say_hello
        render text: "Saying Hello!"
    end

    def joe
        render text: "Saying Hello, Joe!"
    end

    def michael
        redirect_to "/say/hello/joe"
    end

    def times_visited
        session[:visits] += 1
        render text: "You have visited this URL #{session[:visits]} time(s)."
    end

    def restart
		session.clear
		render text: "Destroyed the session!"
	end
end
