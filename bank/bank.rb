require "pry"

class Bank

  attr_reader :name, :accounts

  def initialize(name, accounts)
    @name = name
    @accounts = accounts
  end

  def total_cash()
    sum = 0
    for account in @accounts
      # binding.pry
      sum += account.amount()
    end
    return sum
  end

  def find_account_by_name(holder_name)
    found_account = nil
    for account in @accounts
      found_account = account if account.name() == holder_name
    end
    return found_account
  end
end
