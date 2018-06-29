require_relative 'appleTree'

RSpec.describe AppleTree do
  before(:each) do
    @mytree = AppleTree.new
  end

  it "has a getter and setter for name attribute" do
    
    expect(@mytree.age(2)).to eq(2)
  end

  it 'Apple Tree should have a height attribute with only a getter method.' do
    expect{@mytree.height(8)}.to raise_error(NoMethodError)
  end

  it 'Apple Tree should have an apple count attribute with only a getter method.' do
    expect{@mytree.count}.to raise_error(NoMethodError)
  end

  it 'Add one year to the age attribute' do
    @mytree.age(3)
    expect(@mytree.year_gone_by).to eq("4, 1.1, 2")
  end

  it 'Apple Tree should not grow apples for the first three years of its life' do
    @mytree.age(2)
    expect(@mytree.year_gone_by).to eq("3, 1.1, 0")
  end

  it 'method called pick_apples that takes all of the apples off the tree' do
    @mytree.age(4)
    @mytree.year_gone_by
    expect(@mytree.pick_apples).to eq(0)
  end

end
