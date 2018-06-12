class HellosController < ApplicationController
	def index
		render text: "What do ypu want me to say???"
	end

	def times
		if !session[:count]
			session[:count] =0
		elsif session[:count]
			session[:count] += 1
		end
		puts session[:count]
		render text: "You visited this url #{session[:count]} time."
	end

	def restart
			session[:count] =0
		redirect_to '/times'
	end

	def say
		render text: "Hello Coding Dojo!"
	end

	def say_hello
		render text: "Saying Hello!"
	end

	def say_hello_joe
		render text: "Saying Hello Joe!"
	end	

	def say_hello_michael
		redirect_to  "/say/hello/joe"
	end
end
