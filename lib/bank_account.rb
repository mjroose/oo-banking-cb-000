class BankAccount
  attr_accessor :name, :balance, :status

  def initialize(name)
    self.name = name
    self.balance = 1000
    self.status = "open"
  end
end
