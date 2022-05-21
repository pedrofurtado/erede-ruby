module Erede
  class Sdk
    attr_accessor :store

    def initialize(store)
      @store = store
    end

    def authorize(transaction)
      create(transaction)
    end

    def create(transaction)
      service = ::Erede::Services::CreateTransaction.new(@store, transaction)
      service.execute
    end

    def cancel(transaction)
      service = ::Erede::Services::CancelTransaction.new(@store, transaction)
      service.execute
    end

    def capture(transaction)
      service = ::Erede::Services::CaptureTransaction.new(@store, transaction)
      service.execute
    end

    def get_by_id(tid)
      service     = ::Erede::Services::GetTransaction.new(@store)
      service.tid = tid
      service.execute
    end

    def get_by_reference(reference)
      service           = ::Erede::Services::GetTransaction.new(@store)
      service.reference = reference
      service.execute
    end

    def get_refunds(tid)
      service         = ::Erede::Services::GetTransaction.new(@store)
      service.tid     = tid
      service.refunds = true
      service.execute
    end

    def zero(transaction)
      amount  = transaction.amount
      capture = transaction.capture

      transaction.amount  = 0
      transaction.capture = true

      transaction = create(transaction)

      transaction.amount  = amount
      transaction.capture = capture

      transaction
    end
  end
end
