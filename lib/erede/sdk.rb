module Erede
  class Sdk
    attr_accessor :store

    def initialize(store)
      @store = store
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

    def get_by_tid(tid)
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

    def get_refund(tid, refundId)
      service         = ::Erede::Services::GetTransaction.new(@store)
      service.tid     = tid
      service.refunds = true
      service.refundId = refundId
      service.execute
    end
  end
end
