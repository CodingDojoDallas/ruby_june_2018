class RpgsController < ApplicationController
	def index
		if session[:gold]
			p 'You have gold'
		else
			session[:gold] = 0
		end

		render "index"
	end

	def farm
		session[:gold] += rand(10..20)
		
		redirect_to "/rpgs"
	end

	def cave

	end

	def casino

	end

	def house

	end
end
