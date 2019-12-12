class BankAccount

    attr_reader :name
    attr_accessor :balance, :status

    def initialize(name)
        @name = name
        @balance = 1000
        @status = "open"
    end

    def deposit(deposit_total)
        self.balance += deposit_total
    end

    # display_balance
    # can display its balance (FAILED - 2)
    def display_balance
        "Your balance is $#{self.balance}."
    end

    # valid?
    # is valid with an open status and a balance greater than 0 (FAILED - 3)
    def valid?
        self.status == "open" && self.balance > 0
    end
    # close_account
    # can close its account (FAILED - 4)
    def close_account
        self.status = "closed"
    end

end # end of class
