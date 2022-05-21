module Erede
  module Models
    class Store < ::Erede::Models::Base
      API_ATTRIBUTES = [
        :token,
        :filiation
      ]

      attr_accessor :environment
    end
  end
end
