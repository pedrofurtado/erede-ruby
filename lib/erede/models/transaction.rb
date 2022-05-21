module Erede
  module Models
    class Transaction < ::Erede::Models::Base
      API_ATTRIBUTES = [
        :reference,
        :amount,
        :cardholderName,
        :installments,
        :cardNumber,
        :expirationMonth,
        :expirationYear,
        :securityCode,
        :authorization,
        :authorizationCode,
        :brand,
        :brandTid,
        :cancelId,
        :capture,
        :cardBin,
        :cart,
        :dateTime,
        :distributorAffiliation,
        :iata,
        :kind,
        :last4,
        :nsu,
        :origin,
        :refundDateTime,
        :refundId,
        :refunds,
        :requestDateTime,
        :softDescriptor,
        :storageCard,
        :subscription,
        :threeDSecure,
        :independentSalesOrganizationID,
        :tid,
        :urls,
        :paymentFacilitatorId,
        :subMerchant
      ]
    end
  end
end
