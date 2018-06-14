require 'date'

class RpgsController < ApplicationController

	
	def index
		if !session[:gold] 
			session[:gold] = 0 # session[:gold] ||= 0
			session[:activities] = [] # session[:activities] ||= []
		end
		@currentTime = "#{Time.zone.now.strftime("%B %e, %Y %I:%M %p")}"
		render "index"
	end
	

	def farm
		@farmGold = rand(10..20)
		session[:gold] += @farmGold
		p @currentTime
		session[:activities] << {
			message: "Earned #{@farmGold} golds from the farm! - ( #{Time.zone.now.strftime("%B %e, %Y %I:%M %p")} )",
			color: "green"
		}
		redirect_to "/rpgs"
	end

	def cave
		@caveGold = rand(5..10)
		session[:gold] += @caveGold
		session[:activities] << {
			message: "Earned #{@caveGold} golds from the cave! ( #{Time.zone.now.strftime("%B %e, %Y %I:%M %p")} )",
			color: "green"
		}
		redirect_to "/rpgs"
	end

	def house
		@houseGold = rand(2..5)
		session[:gold] += @houseGold
		session[:activities] << {
			message: "Earned #{@houseGold} golds from the house! ( #{Time.zone.now.strftime("%B %e, %Y %I:%M %p")} )",
			color: "green"
		}
		redirect_to "/rpgs"
	end

	def casino
		@casinoGold = rand(-50..50)
		session[:gold] += @casinoGold
		if @casinoGold >= 0
			session[:activities] << {
				message: "Earned #{@casinoGold} golds from the casino! ( #{Time.zone.now.strftime("%B %e, %Y %I:%M %p")} )",
				color: "green"
			}
		else
			session[:activities] << {
				message: "Enter a casino and lost #{@casinoGold} golds... Ouch.. ( #{Time.zone.now.strftime("%B %e, %Y %I:%M %p")} )",
				color: "red"
			}
		end
			redirect_to "/rpgs"
	end

	def destroy
		p "clear"
		session[:gold] = 0
		session[:activities] = []
		redirect_to '/rpgs'
	end
end

