class MathDojo
	
	def initialize
		@result = 0
	end

	def add *num
		if num.class ==Array
			# @result += num.flatten.inject(0) {|sum, i| sum + i }
			num.flatten.each{|i| @result = @result + i }

		else 
			@result += num
		end
		self
	end
	def subtract *num
		if num.class == Array
			# @result -= num.flatten.inject(0) {|sum, i| sum + i }
			num.flatten.each{|i| @result -= i }
		else
			@result -= num
		end
		self
	end
	def result
		puts "The result is #{@result}."
	end
end

challenge1 = MathDojo.new.add(4).add(2, 6).subtract(3, 3).result # => 6
challenge2 = MathDojo.new.add(1).add([3, 5, 7 ,8], [2, 4.3, 1.25]).subtract([2, 3], [1.1, 2.3]).result