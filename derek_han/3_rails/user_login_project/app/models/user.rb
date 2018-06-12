class User < ActiveRecord::Base
	EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
	validates :first_name, presence: true, length: { in: 2..20 }
	validates_numericality_of :age, greater_than: 10
	validates_numericality_of :age, less_than: 150

	before_save :downcase_email
	after_create :successfully_created
	after_update :successfully_updated
	before_validation :default_age, on: [:create]

	def full_name
		"#{self.first_name} #{self.last_name}"
	end

	def self.average_age
		self.sum(:age) / self.count
	end

	private
		def downcase_email
			self.email.downcase!
		end

		def successfully_created
			puts "successfully created a new user"
		end

		def successfully_updated
			puts "successfully updated a existing user"
		end

		def default_age
			self.age = 0 unless self.age?
		end

end
