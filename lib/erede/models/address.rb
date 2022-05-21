module Erede
  module Models
    class Address < ::Erede::Models::Base
      API_ATTRIBUTES = [
        :address,
        :addresseeName,
        :city,
        :complement,
        :neighbourhood,
        :number,
        :state,
        :type,
        :zipCode
      ]

      BILLING  = 1
      SHIPPING = 2
      BOTH     = 3

      APARTMENT  = 1
      HOUSE      = 2
      COMMERCIAL = 3
      OTHER      = 4
    end
  end
end
