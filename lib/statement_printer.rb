class StatementPrinter
  def print_statement(transactions)
    transaction_string = transactions.reverse.join(" \n ")
    print "date || credit || debit || balance \n " + transaction_string
  end
end
