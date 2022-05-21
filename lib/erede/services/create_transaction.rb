module Erede
  module Services
    class CreateTransaction < ::Erede::Services::Base
      attr_accessor :transaction

      def initialize(store, transaction)
        super(store)
        self.transaction = transaction
      end

      def execute
        send_request(POST, transaction.to_json)
      end
    end
  end
end
