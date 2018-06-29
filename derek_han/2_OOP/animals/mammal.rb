puts 'I am in the mammal file'

class Mammal
	def breath
		puts "Inhale and exhale"
	end

	def eat
		puts "Yum yum yum"
	end

	def calling_speak
		speak
	end
	def calling_cry
		cry
	end
	private
		def cry
			puts "Sniff sniff..."
		end

	protected
		def speak
			puts "I am a protected method"
		end
end