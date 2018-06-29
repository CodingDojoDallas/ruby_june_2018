require_relative 'bank_account'
RSpec.describe Bank_Account do
    before(:each) do
        @bank1 = Bank_Account.new
    end
    it 'has a getter method for retrieving the checking account balance' do
        expect(@bank1.checking_balance).to eq("Your checking account balance: $0")
    end
    it 'has a getter method for retrieving the total account balance' do
        expect(@bank1.total_amount).to eq("Your total amount in checking and savings is $0")
    end
    it 'has a function that allows the user to withdraw cash' do
        expect(@bank1.withdraw_checking(20)).to eq("You don't have enough funds in your checking account to withdraw $20")
    end
    it 'cannot withdraw without money' do
        @bank1.withdraw_checking 2
        expect{@bank1.withdraw_checking 2}.to raise_error(NoMethodError)
    end
    it 'cannot retrieve total number of bank accounts' do
		@bank1.get_acc_nos
		expect{@bank1.get_acc_nos}.to raise_error(NoMethodError)
    end
    it 'cannot change or set the interest rate' do
		@bank1.int_rate 0.03
		expect{@bank1.int_rate 0.03}.to raise_error(NoMethodError)
	end
end