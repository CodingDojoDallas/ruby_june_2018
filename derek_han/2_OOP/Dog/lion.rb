require_relative 'mammal'

class Lion < Mammal
	def initialize 
		@health = 170
	end

	def fly
		@health -= 10
		self
	end

	def attack_down
		@health -= 50
		self
	end

	def eat_human
		@health += 20
		self
	end
end
lion = Lion.new
lion.attack_down.attack_down.attack_down.eat_human.eat_human.fly.fly.display_health
