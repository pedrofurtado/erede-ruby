class GetTransactionService < TransactionService
  attr_accessor :tid,
                :refunds,
                :reference

  def initialize(store)
    super(store)
    self.tid = nil
  end

  def url
    return "#{super}?reference=#{reference}" if reference

    raise 'You need to specify one: the tid or the reference' if !tid

    return "#{super}/#{tid}/refunds" if refunds

    "#{super}/#{tid}"
  end

  def execute
    send_request(TransactionService::GET)
  end
end
