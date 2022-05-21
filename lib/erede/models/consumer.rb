module Erede
  module Models
    class Consumer < ::Erede::Models::Base
      MALE   = 'M'
      FEMALE = 'F'

      API_ATTRIBUTES = [
        :name,
        :email,
        :phone, # Erede::Models::Phone
        :cpf,
        :documents, # Erede::Models::Document[]
        :gender
      ]
    end
  end
end
