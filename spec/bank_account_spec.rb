require 'bank_account'

describe BankAccount do
  let(:account) { BankAccount.new }

  describe 'initialization' do
    it 'is initialized with a balance of 0' do
      expect(account.balance).to eq 0
    end
  end

  describe '#deposit' do
    it 'updates balance after a deposit has been made' do
      account.deposit(10)
      expect(account.balance).to eq 10
    end

    it 'raises an error if deposit amount < 0' do
      expect { account.deposit(-10) }.to raise_error 'Invalid amount'
    end
  end

  describe '#withdraw' do
    it 'updates balance after a withdrawal has been made' do
      account.deposit(10)
      expect(account.withdraw(10)).to eq 0
    end

    it 'raises an error if withdrawal takes balance below 0' do
      expect { account.withdraw(10) }.to raise_error 'Insufficient funds'
    end
  end
end
