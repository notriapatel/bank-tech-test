require 'date'
require_relative 'statement_printer'
require_relative 'transaction'

class BankAccount
  attr_reader :balance, :transactions

  def initialize(printer = StatementPrinter.new, transaction = Transaction.new)
    @printer = printer
    @transaction = transaction
    @balance = 0
    @transactions = []
    @date = DateTime.now.strftime('%d/%m/%Y')
  end

  def deposit(amount)
    raise 'Invalid amount' if amount.negative?
    @credit = amount
    @balance += amount
    @transactions << @transaction.format_deposit(@credit)
  end

  def withdraw(amount)
    raise 'Insufficient funds' if (@balance - amount).negative?
    @debit = amount
    @balance -= amount
    @transactions << @transaction.format_withdrawal(@debit)
  end

  def statement
    @printer.print_statement(@transactions)
  end
end
