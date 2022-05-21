module Erede
  module Models
    class Item < ::Erede::Models::Base
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
