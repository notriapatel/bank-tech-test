require 'transaction'
require 'timecop'

describe Transaction do
  let(:transaction) { Transaction.new }
  let(:amount) { 10.00 }
  Timecop.freeze(Time.local(2020, 2, 24))

  it 'converts a deposit into a formatted string' do
    expect(transaction.format_deposit(amount)).to eq '24/02/2020 || 10.00 || || '
  end

  it 'converts a withdrawal into a formatted string' do
    expect(transaction.format_withdrawal(amount)).to eq '24/02/2020 || || 10.00 || '
  end
end
