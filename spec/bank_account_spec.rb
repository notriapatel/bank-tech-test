require 'bank_account'

describe BankAccount do

  describe 'initialization' do
    it 'is initialized with a balance of zero' do
      subject = BankAccount.new
      expect(subject.balance).to eq 0
    end
  end
end
