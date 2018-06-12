class Human
	attr_accessor :strength, :intelligence, :stealth, :health
	def initialize (strength, intelligence, stealth)
		@strength = strength
		@intelligence = intelligence
		@stealth = stealth
		@health = 100
	end

	def attack obj
		# p obj.class.ancestors
		if obj.class.ancestors == self.class.ancestors
			obj.health -= @strength
		end
		self

	end
	def display_health
		p @health
	end

end



derek = Human.new(10, 10, 10)
steven = Human.new(10, 10, 10)
derek.attack steven.attack steven.attack steven.attack steven
steven.display_health

# p derek.attack steven
