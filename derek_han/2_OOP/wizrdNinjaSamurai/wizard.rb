require_relative 'human'

class Wizard < Human
  attr_accessor :strength, :intelligence, :health, :stealth
	  def initialize
	    @intelligence = 20
	    @health = 50
	end
	def heal
		@health += 10
	end

	def display_health
		p @health
	end
end

wizard = Wizard.new
wizard.heal.display_health