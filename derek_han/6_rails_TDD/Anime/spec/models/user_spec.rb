require 'rails_helper'


RSpec.describe User do
	context "With valid attributes" do
		it "should save" do
			user = User.new(
			first_name: "",
			last_name: 'chang',
			email: 'schanh@codingdojo.com'
			)
		expect(user).to be_invalid
		end
	end

	context "With invalid attributes" do
	it "should not save if first_name field is blank" do
		user = User.new(
			first_name: "",
			last_name: 'chang',
			email: 'schanh@codingdojo.com'
			)
		expect(user).to be_invalid
		end
	it "should not save if last_name field is blank" do
		user = User.new(
			first_name: "Derek",
			last_name: "",
			email: 'derek@han.com'
			)
		expect(user).to be_invalid
		end


	it "should not save if email already exist" do
		user = User.create(
			first_name: "Derek",
			last_name: "Han",
			email: 'derek@han.com'
			)
		user2 = User.create(
			first_name: "Derek",
			last_name: "Han",
			email: 'derek@han.com'
			)
		# expect.(user).to be_valid
		expect(user2).to be_invalid
	end


	it "shold not save if be_invalid email format" do
		user = User.create(
			first_name: "Derek",
			last_name: "Han",
			email: "derekhan.com"
			)
		expect(user).to be_invalid
	end
end

end





