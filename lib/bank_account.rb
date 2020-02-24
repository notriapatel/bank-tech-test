class BankAccount
  attr_reader :balance

  def initialize
    @balance = 0
  end

  def deposit(amount)
    raise 'Invalid amount' if amount.negative?
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end
end
