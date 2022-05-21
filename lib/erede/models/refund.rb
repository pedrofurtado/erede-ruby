module Erede
  module Models
    class Refund < ::Erede::Models::Base
      API_ATTRIBUTES = [
        :amount,
        :refundDateTime,
        :refundId,
        :status
      ]
    end
  end
end
