class Transfer
  attr_accessor :status
  attr_reader :sender, :receiver, :amount
  @@all = []

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    self.status = "pending"
    @@all << self
  end

  def valid?
    self.sender.valid? && self.receiver.valid?
  end

  def execute_transaction
    if self.valid?
      self.sender.balance -= self.amount
      self.receiver.balance -= self.amount
    end
  end
end
