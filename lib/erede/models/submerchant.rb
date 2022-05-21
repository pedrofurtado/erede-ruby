module Erede
  module Models
    class SubMerchant < ::Erede::Models::Base
      API_ATTRIBUTES = [
        :mcc,
        :city,
        :country,
        :subMerchantID,
        :address,
        :city,
        :state,
        :country,
        :cep,
        :cnpj,
        :taxIdNumber
      ]
    end
  end
end
