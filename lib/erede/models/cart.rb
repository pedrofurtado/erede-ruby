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

      def set_address(type = Address::BOTH)
        address = Address.new

        if type & Address::BILLING == Address::BILLING
          @billing = address
        end

        if type & Address::SHIPPING == Address::SHIPPING
          @shipping = address
        end

        address
      end

      def add_item(item)
        @items ||= []
        @items.push(item)
        self
      end

      def add_shipping_address(shipping_address)
        @shipping ||= []
        @shipping.push(shipping_address)
        self
      end

      def set_consumer(name, email, cpf)
        @consumer = Consumer.new(name, email, cpf)
      end
    end
  end
end
