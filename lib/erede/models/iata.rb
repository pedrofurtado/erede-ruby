module Erede
  module Models
    class Iata < ::Erede::Models::Base
      API_ATTRIBUTES = [
        :code,
        :departureTax,
        :flight
      ]

      def add_flight(flight)
        @flight ||= []
        @flight.push(flight)
        self
      end
    end
  end
end
