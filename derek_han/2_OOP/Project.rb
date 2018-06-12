class Project
	attr_accessor :name, :description
	def initialize(nam, desc)
  		@name = nam
  		@description = desc
  	end
  	def elevator_pitch
  		puts @name, @description
  	end
end
project1 = Project.new("Project 1 is amazing!", "Description 1 is Something cool")
puts project1.name
puts project1.description
project1.elevator_pitch
