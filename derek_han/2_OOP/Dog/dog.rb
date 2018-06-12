require_relative 'mammal'

class Dog < Mammal
	def pet
		@health += 5
		self
	end

	def walk
		@health -= 1
		self
	end

	def run
		@health -= 10
		self
	end
end

pit = Dog.new
pit.pet.pet.walk.walk.run.run.display_health
kal = Dog.new
kal.walk.walk.walk.run.run.pet.display_health
speed = Dog.new
speed.run.run.run.run.run.run.run.run.display_health


