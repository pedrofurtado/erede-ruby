class CreateTransactionService < TransactionService
  attr_accessor :transaction

  def initialize(store, transaction)
    super(store)
    self.transaction = transaction
  end

  def execute
    send_request(TransactionService::POST, transaction.to_json)
  end
end
