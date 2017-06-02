require "minitest/autorun"
require "minitest/rg"
require_relative "../bank"
require_relative "../bank_accounts"

class TestBank < MiniTest::Test

  def setup
    @account1 = BankAccount.new("Jarrod", 5 , "business")
    @account2 = BankAccount.new("Zsolt", 6, "personal")
    @account3 = BankAccount.new("Sandy", 20, "business")
    @accounts = [@account1, @account2, @account3]
    @bank = Bank.new("CC Bank", @accounts)
  end

  def test_bank_has_name
    assert_equal("CC Bank", @bank.name())
  end

  def test_bank_total_cash
    assert_equal(31, @bank.total_cash())
  end

  def test_find_account_by_name
    result = @bank.find_account_by_name("Sandy")
    assert_equal("Sandy", result.name())
  end

end
