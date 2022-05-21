module Erede
  module Models
    class Item < ::Erede::Models::Base
      PHYSICAL = 1
      DIGITAL  = 2
      SERVICE  = 3
      AIRLINE  = 4

      API_ATTRIBUTES = [
        :amount,
        :description,
        :discount,
        :freight,
        :id,
        :quantity,
        :shippingType,
        :type
      ]
    end
  end
end
