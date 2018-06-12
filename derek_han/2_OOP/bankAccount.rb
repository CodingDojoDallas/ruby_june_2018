class BankAccount
	private
	attr_accessor :account_number, :checking, :savings
	@@number_of_accounts = 0
	@@interest_rate = 4.01
		private
	def create_acccount_number
		rand(10**16)
	end

	public
	def initialize(checking_diposit, savings_deposit)
		@account_number = create_acccount_number
		@checking = checking_diposit
		@savings = savings_deposit
		@@number_of_accounts += 1
		# p @@number_of_accounts
	end

	def deposit(account, amount)
		if account == "checking"
			@checking += amount
		elsif account == "savings"
			@savings =+ amount
		else
			p "account doen't exist"
		end
	end

	def withdraw(account, amount)
		if account == "checking"
			if amount > @checking
				p "Checking has insufficient funds"
			else
				@checking -= amount
			end
		elsif account == "savings"
			if amount > @savings
				p "Your saving account not enough money"
			else
				@savings -= amount
			end
		else
			p "Account doesn't exist"
		end
	end

	def get_total_money
		@checking + @savings
	end

	def account_infomation
		p "account Number is #{@account_number}"
		p "Total money is #{get_total_money}"
		p "Checking balance is $#{@checking}"
		p "Saving si $#{@savings}"
		p "interest rate is #{@@interest_rate}%"
	end

	def get_checking
		@checking
	end

	def get_savings
		@savings
	end

	def get_account_number
		@account_number
	end
end

mine = BankAccount.new(300, 40)
your = BankAccount.new(200, 35)
mine.account_infomation
# mine.deposit("401k", 300)
# mine.withdraw("401k", 500)
# mine.get_total_money
p mine.get_savings
p mine.get_checking
p mine.get_account_number


# mine.checking = 2000000000