module Erede
  module Models
    class Phone < ::Erede::Models::Base
      CELLPHONE = 1
      HOME      = 2
      WORK      = 3
      OTHER     = 4

      API_ATTRIBUTES = [
        :ddd,
        :number,
        :type
      ]
    end
  end
end
