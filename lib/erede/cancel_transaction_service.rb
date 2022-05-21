class CancelTransactionService < TransactionService
  attr_accessor :transaction

  def initialize(store, transaction)
    super(store)
    self.transaction = transaction
  end

  def url
    "#{super}/#{transaction.tid}/refunds"
  end

  def execute
    send_request(TransactionService::POST, transaction.to_json)
  end
end
