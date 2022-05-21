module Erede
  module Models
    class Phone < ::Erede::Models::Base
      API_ATTRIBUTES = [
        :ddd,
        :number,
        :type
      ]
    end
  end
end
