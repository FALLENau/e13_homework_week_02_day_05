require "minitest/autorun"
require "minitest/rg"
require_relative "../bank_accounts"

class TestBankAccount < MiniTest::Test

  def setup
      @account = BankAccount.new("Jarrod", 5, "business")
  end

  def test_account_has_name
    assert_equal("Jarrod", @account.name())
  end

end
