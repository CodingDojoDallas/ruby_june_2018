class Bank_Account
    @@number_of_accounts = 0
    def initialize
        @checking_account = 0
        @savings_account = 0
        @acc_num
        @interest_rate = 0.01
        @@number_of_accounts += 1
        p "Created account! This bank now serves #{@@number_of_accounts} accounts"
    end

    def checking_balance
        "Your checking account balance: $#{@checking_account}"
    end

    def checking_savings
        p "Your savings account balance: $#{@savings_account}"
        self
    end

    def deposit_checking num
        @checking_account += num
        p "You have deposited $#{num} into your checking account"
        self
    end

    def deposit_savings num
        @savings_account += num
        p "You have deposited $#{num} into your savings account"
        self
    end

    def withdraw_checking num
        if (@checking_account - num) < 1
            "You don't have enough funds in your checking account to withdraw $#{num}"
        else
            @checking_account -= num
            "You have withdrawn $#{num} from your checking account"
        end
    end

    def withdraw_savings num
        if(@savings_account - num) < 1
            p "You don't have enough funds in your savings account to withdraw $#{num}"
            self
        else
            @savings_account -= num
            p "You have withdrawn $#{num} from your savings account"
            self
        end
    end

    def total_amount
        "Your total amount in checking and savings is $#{@checking_account + @savings_account}"
    end

    def account_info
        p "User account: ##{@acc_num}"
        p "Total money: $#{@checking_account + @savings_account}"
        p "Checking account: $#{@checking_account}"
        p "Savings account: $#{@savings_account}"
        p "Interest rate: #{@interest_rate}"
        self
    end

    private
    def account_number
        @acc_num = rand(10000..99999)
    end
end

# bank = Bank_Account.new
# bank1 = Bank_Account.new
# bank.deposit_checking(200).deposit_savings(400).account_info
# bank.savings_account(200)