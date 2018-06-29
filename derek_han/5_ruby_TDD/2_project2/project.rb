class Project
	attr_accessor :name, :description
	def initialize name, description, owner
		@name = name
		@description = description
		@owner = owner
		@tasks = []
	end
	def elevator_pitch
		"#{@name}, #{@description}"
	end
	def owner
		"#{@name}, #{@description}, #{@owner}"
	end

	def tasks
		@tasks
	end

	def add_tasks tasks
		@tasks.push(tasks)
	end

	def print_tasks
		@tasks
	end

end	 

# project1 = Project.new("smile", "KKK", "derek")
# project1.add_tasks("smile")
# project1.add_tasks("Happy")
# project1.print_tasks