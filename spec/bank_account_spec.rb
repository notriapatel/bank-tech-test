require 'bank_account'

describe BankAccount do
  let(:account) { BankAccount.new }

  describe 'initialization' do
    it 'is initialized with a balance of zero' do
      expect(account.balance).to eq 0
    end
  end
end
