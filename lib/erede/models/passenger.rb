module Erede
  module Models
    class Passenger < ::Erede::Models::Base
      API_ATTRIBUTES = [
        :email,
        :name,
        :phone,
        :ticket
      ]

      def set_phone(ddd, number, type = Phone::CELLPHONE)
        @phone = Phone.new(ddd, number, type)
        self
      end
    end
  end
end
