class User < ActiveRecord::Base
	EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
	validates :first_name, :last_name, presence: true, length: { in: 2..20 }
	validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }

	before_save :downcase_email

	after_create :successfully_created

	after_update :successfully_updated

	before_validation :default_age, on: [:create]

# Custom
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

	def succesfully_created
		puts "Succesfully created a new user"
	end

	def succesfully_updated
		puts "Successfully updated a existing user"
	end

	def default_age
		self.age = 0 unless self.age?
	end
end
