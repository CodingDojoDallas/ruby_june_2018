require_relative 'fixnum'
RSpec.describe Fixnum do
    before(:each) do
        @fixnum1 = 100
        @fixnum2 = 200
        @fixnum3 = 300
        @result1 = 99
        @result2 = 400
        @result3 = 305
    end
    it 'has a method to subtract 1' do
        expect(@fixnum1.prev).to eq(@result1)
    end
    it 'has a method to double' do
        expect(@fixnum2.double).to eq(@result2)
    end
    it 'has a method to skip by 5' do
        expect(@fixnum3.skip).to eq(@result3)
    end
end
