module Erede
  module Models
    class Passenger < ::Erede::Models::Base
      API_ATTRIBUTES = [
        :email,
        :name,
        :phone,
        :ticket
      ]
    end
  end
end
