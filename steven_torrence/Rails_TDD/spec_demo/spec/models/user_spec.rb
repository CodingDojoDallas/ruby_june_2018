require 'rails_helper'

RSpec.describe User do
  # This is our control
  context "With valid attributes" do 
    it "should save" do 
      user = User.new(
        first_name: 'shane',
        last_name: 'chang',
        email: 'schang@codingdojo.com'
      )
      expect(user).to be_valid
    end
  end
  
  context "With invalid attributes" do 
    it "should not save if first_name field is blank" do
      user = User.new(
            first_name: '', 
            last_name: 'chang', 
            email: 'schang@codingdojo.com'
        )
      expect(user).to be_invalid
    end
  end
  
  context "With vaild attributes" do
    it "should save" do
      user = User.new(
        first_name: 'Steven',
        last_name: 'Torrence',
        email: 'storrence88@gmail.com'
      )
      expect(user).to be_valid
    end
  end

  context "With invalid attributes" do
    it "should not save if last_name field is blank" do
      user = User.new(
        first_name: 'Steven',
        last_name: '',
        email: 'storrence88@gmail.com'
      )
      expect(user).to be_invalid
    end
  end

  context "With valid attributes" do
    it "should save" do
      user = User.new(
        first_name: 'Steven',
        last_name: 'Torrence',
        email: 'storrence88@gmail.com'
      )
      expect(user).to be_valid
    end
  end

  context "With invalid attributes" do
    it "should not save if email already exists" do
      user = User.new(
        first_name: 'Steven',
        last_name: 'Torrence',
        email: 'storrence88@gmail.com'
      )
      user.save

      user2 = User.new(
        first_name: 'Steven',
        last_name: 'Torrence',
        email: 'storrence88@gmail.com'
      )
      expect(user2).to be_invalid
    end
  end

  context "With valid attributes" do
    it "should save" do
      user = User.new(
        first_name: 'Steven',
        last_name: 'Torrence',
        email: 'storrence88@gmail.com'
      )
      expect(user).to be_valid
    end
  end

  context "With invalid attributes" do
    it "should not save if invalid email format" do
      user = User.new(
        first_name: 'Steven',
        last_name: 'Torrence',
        email: 'storrence88'
      )
      expect(user).to be_invalid
    end
  end
end
