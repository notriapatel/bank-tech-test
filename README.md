# Bank Tech Test

An interactive program run from the command line that replicates the basic banking functions. The program was written in Ruby using a TDD process, testing with RSpec.

### Running the app

```
$ git clone https://github.com/notriapatel/bank-tech-test.git
$ bundle install
$ irb -r ./lib/bank_account.rb # run IRB and require the file
> account = BankAccount.new # create a new instance of the bank account
> account.deposit(100) # make a deposit
> account.withdraw(5) # make a withdrawal
> account.statement # print the accounts transaction history
> exit # exit IRB
```

## Specification

### Requirements

* You should be able to interact with your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

## User stories

```
As an account holder
So that I can know how much money I have
I want my account to initialize with a balance of zero

As an account holder
So that I can store my money
I want to be able to deposit into my account and have the balance update to reflect this

As an account holder
So I can deposit my money
I want to be alerted when I try to deposit a negative amount

As an account holder
So that I can access my money
I want to be able to withdraw from my account and have the balance update to reflect this

As an account holder
So that I don't overdraw my account
I want to be warned when I attempt to withdraw more than my balance

As an account holder
So that I can keep track of my activity
I want my transactions to be stored with their respective dates

As an account holder
So that I can view my expenses
I want to see a statement of all my transactions in reverse chronological order
```

## Current status

Current test coverage is 100%, 3 rubocop failures.