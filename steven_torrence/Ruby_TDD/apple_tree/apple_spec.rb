require_relative 'apple'
RSpec.describe Apple_Tree do
	before(:each) do
    	@tree1 = Apple_Tree.new
	end

	it "has a getter and a setter for age" do
    	@tree1.age = 15
    	expect(@tree1.age).to eq(15)
  	end

  	it "can't set height" do
    	expect{@tree1.height = 50}.to raise_error(NoMethodError)
  	end

  	it "can't set count" do
    	expect{@tree1.count = 12}.to raise_error(NoMethodError)
  	end

	  it "has a year_gone_by method" do
		@tree1.year_gone_by
  		expect(@tree1.year_gone_by).to eq("2, 1.2100000000000002, 0")
  	end

  	it "should not grow apples for first 3 years of life" do
  		@tree1.age = 1
  		expect(@tree1.year_gone_by).to eq("2, 1.1, 0")
  	end 

  	it "has a method pick_apples method to take all apples" do
    	expect(@tree1.pick_apples).to eq(0)
  	end

  	it "should not grow apples after 10 years" do
  		@tree1.age = 12
  		expect(@tree1.year_gone_by).to eq("13, 1.1, 0")
  	end
end
