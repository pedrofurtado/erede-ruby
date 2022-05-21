module Erede
  module Models
    class Flight < ::Erede::Models::Base
      API_ATTRIBUTES = [
        :date,
        :from,
        :number,
        :passenger,
        :to
      ]
    end
  end
end
