require 'statement_printer'

describe StatementPrinter do
  let(:printer) { StatementPrinter.new }
  let(:transactions) do
    [
      '24/02/2020 || 5.00 || || 5.00',
      '25/02/2020 || || 1.00 || 1.00'
    ]
  end

  it 'prints the title line first' do
    expect(printer.print_statement([])).to eq "date || credit || debit || balance \n "
  end

  it 'adds a transaction to the statement' do
    expect(printer.print_statement(transactions)).to eq "date || credit || debit || balance \n 25/02/2020 || || 1.00 || 1.00 \n 24/02/2020 || 5.00 || || 5.00"
  end
end
