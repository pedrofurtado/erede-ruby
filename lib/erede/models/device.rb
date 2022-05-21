module Erede
  module Models
    class Device < ::Erede::Models::Base
      API_ATTRIBUTES = [
        :colorDepth,
        :deviceType3ds,
        :javaEnabled,
        :language,
        :screenHeight,
        :screenWidth
      ]
    end
  end
end
