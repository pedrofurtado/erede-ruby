module Erede
  module Models
    class Transaction < ::Erede::Models::Base
      CREDIT = 'credit'
      DEBIT  = 'debit'

      ORIGIN_EREDE         = 1
      ORIGIN_VISA_CHECKOUT = 4
      ORIGIN_MASTERPASS    = 6

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
        :returnCode,
        :returnMessage,
        :softDescriptor,
        :storageCard,
        :subscription,
        :threeDSecure,
        :tid,
        :urls,
        :paymentFacilitatorId,
        :subMerchant
      ]

      def creditcard(card_number, security_code, expiration_month, expiration_year, holder_name)
        card(card_number, security_code, expiration_month, expiration_year, holder_name, Transaction::CREDIT)
      end

      def debitcard(card_number, security_code, expiration_month, expiration_year, holder_name)
        card(card_number, security_code, expiration_month, expiration_year, holder_name, Transaction::DEBIT)
      end

      def card(card_number, security_code, expiration_month, expiration_year, holder_name, kind)
        @cardNumber      = card_number
        @securityCode    = security_code
        @expirationMonth = expiration_month
        @expirationYear  = expiration_year
        @card_holderName = holder_name
        @kind            = kind
        self
      end

      def mcc(soft_descriptor, payment_facilitator_id, sub_merchant)
        @soft_descriptor        = soft_descriptor
        @payment_facilitator_id = payment_facilitator_id
        @subMerchant           = sub_merchant
      end

      def set_threeDSecure(onFailure = ThreeDSecure::DECLINE_ON_FAILURE, embed = true, directoryServerTransactionId = '', threeDIndicator = '1')
        @three_d_secure                              = ThreeDSecure.new
        @three_d_secure.onFailure                    = onFailure
        @three_d_secure.embedded                     = embed
        @three_d_secure.directoryServerTransactionId = directoryServerTransactionId
        @three_d_secure.threeDIndicator              = threeDIndicator
      end
    end
  end
end
