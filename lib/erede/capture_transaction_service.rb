class CaptureTransactionService < TransactionService
  attr_accessor :transaction

  def initialize(store, transaction)
    super(store)
    self.transaction = transaction
  end

  def url
    "#{super}/#{transaction.tid}"
  end

  def execute
    send_request(TransactionService::PUT, transaction.to_json)
  end
end
