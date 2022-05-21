module Erede
  module Models
    class Iata < ::Erede::Models::Base
      API_ATTRIBUTES = [
        :code,
        :departureTax,
        :flight
      ]
    end
  end
end
