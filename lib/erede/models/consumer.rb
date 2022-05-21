module Erede
  module Models
    class Consumer < ::Erede::Models::Base
      MALE   = 'M'
      FEMALE = 'F'

      API_ATTRIBUTES = [
        :cpf,
        :documents, # Erede::Models::Document[]
        :email,
        :gender,
        :name,
        :phone # Erede::Models::Phone
      ]
    end
  end
end
