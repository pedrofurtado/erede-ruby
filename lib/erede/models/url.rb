module Erede
  module Models
    class Url < ::Erede::Models::Base
      CALLBACK               = 'callback'
      THREE_D_SECURE_FAILURE = 'threeDSecureFailure'
      THREE_D_SECURE_SUCCESS = 'threeDSecureSuccess'

      API_ATTRIBUTES = [
        :kind,
        :url # CALLBACK | THREE_D_SECURE_FAILURE | THREE_D_SECURE_SUCCESS
      ]
    end
  end
end
