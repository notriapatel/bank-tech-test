require 'statement_printer'

describe StatementPrinter do
  let(:printer) { StatementPrinter.new }
  
  it 'prints the title line first' do
    expect(printer.print_statement).to eq 'date || credit || debit || balance'
  end
end 