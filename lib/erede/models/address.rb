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
    end
  end
end
