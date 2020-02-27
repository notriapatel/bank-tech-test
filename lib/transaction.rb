require 'date'

class Transaction
  def initialize
    @date = DateTime.now.strftime('%d/%m/%Y')
  end

  def format_deposit(credit)
    "#{@date} || #{format('%.2f', credit)} || || "
  end

  def format_withdrawal(debit)
    "#{@date} || || #{format('%.2f', debit)} || "
  end
end
