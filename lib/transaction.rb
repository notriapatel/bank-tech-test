require 'date'

class Transaction
  def initialize
    @balance = 0
    @date = DateTime.now.strftime('%d/%m/%Y')
  end

  def format_deposit(credit)
    "#{@date} || #{format('%.2f', credit)} || || #{format('%.2f', @balance += credit)}"
  end

  def format_withdrawal(debit)
    "#{@date} || || #{format('%.2f', debit)} || #{format('%.2f', @balance -= debit)}"
  end
end
