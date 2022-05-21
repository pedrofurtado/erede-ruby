module Erede
  module Models
    class Document < ::Erede::Models::Base
      API_ATTRIBUTES = [
        :type,
        :number
      ]
    end
  end
end
