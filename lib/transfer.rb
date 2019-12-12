class Transfer

  attr_reader :sender, :receiver, :amount
  attr_accessor :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"  
  end

  # valid?
  # can check that both accounts are valid (FAILED - 2) 
  # calls on the sender and receiver's #valid? methods (FAILED - 3)
  def valid?
  sender.valid? && receiver.valid?
  end

  # execute_transaction
  # can execute a successful transaction between two accounts (FAILED - 4)
  # each transfer can only happen once (FAILED - 5)
  # rejects a transfer if the sender does not have enough funds (does not have a valid account) (FAILED - 6)
  def execute_transaction 
    if valid? && sender.balance > amount && self.status = "pending"
      sender.balance -= amount
      receiver.balance += amount
      self.status = "complete"
    else
      self.status = "rejected"
      return "Transaction rejected. Please check your account balance."
    end
  end


  # reverse_transfer
  # can reverse a transfer between two accounts (FAILED - 7)
  # it can only reverse executed transfers (FAILED - 8)
  def reverse_transfer
    if valid? && receiver.balance > amount && self.status = "complete"
      sender.balance += amount
      receiver.balance -= amount
      self.status = "reversed" 
    end

  end


