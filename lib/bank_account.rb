class BankAccount
  attr_reader :balance

  def initialize(printer = StatementPrinter.new)
    @balance = 0
    @transactions = []
    @date = DateTime.now.strftime('%d/%m/%Y')
  end

  def deposit(amount)
    raise 'Invalid amount' if amount.negative?
    @credit = amount
    @balance += amount
    @transactions.push("#{@date} || #{format('%.2f', @credit)} || || #{format('%.2f', @balance)}")
  end

  def withdraw(amount)
    raise 'Insufficient funds' if (@balance - amount).negative?
    @debit = amount
    @balance -= amount
    @transactions.push("#{@date} || || #{format('%.2f', @debit)} || #{format('%.2f', @balance)}")
  end

  def sort_transactions
    @transactions.reverse
  end

end
