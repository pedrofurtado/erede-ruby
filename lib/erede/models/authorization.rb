module Erede
  module Models
    class Authorization < ::Erede::Models::Base
      API_ATTRIBUTES = [
        :affiliation,
        :amount,
        :authorizationCode,
        :cardBin,
        :cardholderName,
        :dateTime,
        :installments,
        :kind,
        :last4,
        :nsu,
        :origin,
        :reference,
        :status,
        :subscription,
        :softDescriptor,
        :distributorAffiliation,
        :tid
      ]
    end
  end
end
