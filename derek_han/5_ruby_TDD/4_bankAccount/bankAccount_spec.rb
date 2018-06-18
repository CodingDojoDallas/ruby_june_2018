require_relative 'bankAccount'
RSpec.describe BankAccount do
	before(:each) do
		@mine = BankAccount.new(300, 40)
		@your = BankAccount.new(200, 35)
	end
	
	it 'Has a getter method for retrieving the checking account balance' do
		expect(@mine.get_checking).to eq(300)	
		expect(@your.get_checking).to eq(200)	
	end

	it 'Has a getter method that retrieves the total account balance' do
		expect(@mine.get_total_money).to eq(340)
		expect(@your.get_total_money).to eq(235)
	end

	it 'Has a function that allows the user to withdraw cash' do
		expect(@mine.withdraw("checking", 50)).to eq(250)
		expect(@your.withdraw("savings", 35)).to eq(0)
	end

	it 'Raises an error if a user tries to withdraw more money than they have in the account' do
		# p @mine.withdraw("checking", 500)
		# expect{@mine.withdraw("Checking", 600)}.to raise_error()
		expect{@mine.withdraw("checking", 500)}.to output("Checking has insufficient funds").to_stdout
		expect{@your.withdraw("savings", 500)}.to output("Your saving account not enough money").to_stdout
	end

	it 'Raises an error when the user attempts to retrieve the total number of bank accounts' do
		@mine.get_account_number()
		expect{@mine.get_account_number}.to output("Really want to know your account number??").to_stdout

		expect{@mine.total_account_number}.to raise_error(NoMethodError)
		expect{@your.get_account_number(total)}.to raise_error(NameError)
		expect{@your.getAccountNumber}.to raise_error(NoMethodError)
		# expect{@mine.get_account_number()}.to raise_error(nil)
	end

	it 'Raises an error when the user attempts to set the interest rate' do
		# p @mine.interest(2.34)
		expect{@mine.interest(2.34)}.to raise_error(NoMethodError)
		expect{@your.chageInterest(0.4)}.to raise_error(NoMethodError)

	end

		
end