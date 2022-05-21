module Erede
  module Models
    class Cart < ::Erede::Models::Base
      API_ATTRIBUTES = [
        :billing,
        :consumer,
        :environment,
        :iata,
        :items,
        :shipping
      ]
    end
  end
end
