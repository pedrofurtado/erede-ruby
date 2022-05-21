module Erede
  module Models
    class Consumer < ::Erede::Models::Base
      API_ATTRIBUTES = [
        :name,
        :email,
        :phone,
        :cpf,
        :documents,
        :gender
      ]
    end
  end
end
