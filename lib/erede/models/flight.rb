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

      def add_passenger(passenger)
        @passenger ||= []
        @passenger.push(passenger)
        self
      end
    end
  end
end
