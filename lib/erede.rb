require 'erede/transaction_service'
require 'erede/create_transaction_service'
require 'erede/capture_transaction_service'
require 'erede/cancel_transaction_service'
require 'erede/get_transaction_service'
require 'erede/version'
require 'erede/iata'
require 'erede/authorization'
require 'erede/document'
require 'erede/threedsecure'
require 'erede/capture'
require 'erede/consumer'
require 'erede/transaction'
require 'erede/submerchant'
require 'erede/item'
require 'erede/phone'
require 'erede/url'
require 'erede/refund'
require 'erede/environment'
require 'erede/store'
require 'erede/passenger'
require 'erede/flight'
require 'erede/address'
require 'erede/cart'
require 'json'

module EREDE
  USER_AGENT = 'eRede/1.0 (SDK Ruby)'

  class ERede
    attr_accessor :store

    def initialize(store)
      @store = store
    end

    def authorize(transaction)
      create(transaction)
    end

    def create(transaction)
      service = CreateTransactionService.new(@store, transaction)

      service.execute
    end

    def cancel(transaction)
      service = CancelTransactionService.new(@store, transaction)

      service.execute
    end

    def capture(transaction)
      service = CaptureTransactionService.new(@store, transaction)

      service.execute
    end

    def get_by_id(tid)
      service = GetTransactionService.new(@store)
      service.tid = tid

      service.execute
    end

    def get_by_reference(reference)
      service = GetTransactionService.new(@store)
      service.reference = reference

      service.execute
    end

    def get_refunds(tid)
      service = GetTransactionService.new(@store)
      service.tid = tid
      service.refunds = true

      service.execute
    end

    def zero(transaction)
      amount = transaction.amount
      capture = transaction.capture

      transaction.amount = 0
      transaction.capture = true
      transaction = create(transaction)
      transaction.amount = amount
      transaction.capture = capture
      transaction
    end
  end
end
