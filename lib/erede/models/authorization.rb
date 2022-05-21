module Erede
  module Models
    class Authorization < ::Erede::Models::Base
      API_ATTRIBUTES = [
        :affiliation,
        :amount,
        :authorizationCode,
        :cardBin,
        :cardHolderName,
        :dateTime,
        :installments,
        :kind,
        :last4,
        :nsu,
        :origin,
        :reference,
        :returnCode,
        :returnMessage,
        :status,
        :subscription,
        :tid
      ]
    end
  end
end
