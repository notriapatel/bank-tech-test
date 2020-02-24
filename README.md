# Bank Tech Test

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
```

