class AppleTree
	attr_accessor :age
	def initialize 
		@age = 0
		@height = 1
		@appleCount = 0
	end

	def age (age)
		@age = age
	end

	def year_gone_by
		if @age.between?(3, 10)
			@appleCount += 2
		end
		@age += 1
		@height *= 1.1
		return "#{@age}, #{@height}, #{@appleCount}"
	end

	def pick_apples
		@appleCount = 0
		return @appleCount
	end
end

# mytree = AppleTree.new
# mytree.age(3)
# mytree.year_gone_by