module Erede
  module Services
    class CaptureTransaction < ::Erede::Services::Base
      attr_accessor :transaction

      def initialize(store, transaction)
        super(store)
        self.transaction = transaction
      end

      def url
        "#{super}/#{transaction.tid}"
      end

      def execute
        send_request(PUT, transaction.to_json)
      end
    end
  end
end
