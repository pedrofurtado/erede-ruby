module Erede
  module Models
    class SubMerchant < ::Erede::Models::Base
      API_ATTRIBUTES = [
        :mcc,
        :city,
        :country
      ]
    end
  end
end
