module Erede
  module Models
    class ThreeDSecure < ::Erede::Models::Base
      API_ATTRIBUTES = [
        :cavv,
        :eci,
        :embedded,
        :onFailure,
        :device,
        :url,
        :urls,
        :userAgent,
        :xid,
        :threeDIndicator,
        :directoryServerTransactionId
      ]
    end
  end
end
