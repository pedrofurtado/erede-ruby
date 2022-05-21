module Erede
  module Models
    class Brand < ::Erede::Models::Base
      API_ATTRIBUTES = [
        :name,
        :returnCode,
        :returnMessage
      ]
    end
  end
end
