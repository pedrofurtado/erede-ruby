module Erede
  module Models
    class ThreeDSecure < ::Erede::Models::Base
      CONTINUE_ON_FAILURE = 'continue'
      DECLINE_ON_FAILURE  = 'decline'

      API_ATTRIBUTES = [
        :cavv,
        :eci,
        :embedded,
        :onFailure,
        :url,
        :userAgent,
        :xid,
        :threeDIndicator,
        :directoryServerTransactionId
      ]

      def initialize
        super()
        @embedded = true
        @three_d_indicator = '1'
        @user_agent = Erede::USER_AGENT
      end
    end
  end
end
