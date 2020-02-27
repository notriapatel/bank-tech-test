require_relative 'statement_printer'
require_relative 'transaction'

class BankAccount
  attr_reader :balance, :transactions

  def initialize(printer = StatementPrinter.new, transaction = Transaction.new)
    @printer = printer
    @transaction = transaction
    @balance = 0
    @transactions = []
  end

  def deposit(amount)
    raise 'Invalid amount' if amount.negative?
    @balance += amount
    @transactions << (@transaction.format_deposit(amount) + "#{format('%.2f', @balance)}")
    "You have successfully deposited #{format('%.2f', amount)}"
  end

  def withdraw(amount)
    raise 'Insufficient funds' if (@balance - amount).negative?
    @balance -= amount
    @transactions << (@transaction.format_withdrawal(amount) + "#{format('%.2f', @balance)}")
    "You have successfully withdrawn #{format('%.2f', amount)}"
  end

  def statement
    @printer.print_statement(@transactions)
  end
end
