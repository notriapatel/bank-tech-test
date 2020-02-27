require 'bank_account'
require 'timecop'

describe BankAccount do
  let(:account) { BankAccount.new }

  describe 'initialization' do
    it 'is initialized with a balance of 0' do
      expect(account.balance).to eq 0
    end
  end

  describe '#deposit' do
    it 'updates balance after a deposit has been made' do
      expect { account.deposit(10) }.to change { account.balance }.by 10
    end

    it 'raises an error if deposit amount < 0' do
      expect { account.deposit(-10) }.to raise_error 'Invalid amount'
    end
  end

  describe '#withdraw' do
    it 'updates balance after a withdrawal has been made' do
      account.deposit(10)
      expect { account.withdraw(10) }.to change { account.balance }.by(-10)
    end

    it 'raises an error if withdrawal takes balance below 0' do
      expect { account.withdraw(10) }.to raise_error 'Insufficient funds'
    end
  end

  describe '#transactions' do
    it 'returns a sorted array of formatted transactions' do
      expect do
        Timecop.freeze(Time.local(2020, 2, 24))
        account.deposit(10)
        account.withdraw(5)
        account.statement
      end.to output("date || credit || debit || balance \n 24/02/2020 || || 5.00 || 5.00 \n 24/02/2020 || 10.00 || || 10.00").to_stdout
    end
  end
end
