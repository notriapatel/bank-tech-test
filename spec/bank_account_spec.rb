require 'bank_account'

describe BankAccount do
  let(:account) { BankAccount.new }

  describe 'initialization' do
    it 'is initialized with a balance of zero' do
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
end
