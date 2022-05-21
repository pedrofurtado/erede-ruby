RSpec.describe Erede::Models::Transaction do
  let(:model) { described_class.new }

  it { expect(described_class).to be < Erede::Models::Base }

  context 'has defined' do
    it 'api attributes' do
      expect(subject).to respond_to :reference
      expect(subject).to respond_to :amount
      expect(subject).to respond_to :cardholderName
      expect(subject).to respond_to :installments
      expect(subject).to respond_to :cardNumber
      expect(subject).to respond_to :expirationMonth
      expect(subject).to respond_to :expirationYear
      expect(subject).to respond_to :securityCode
      expect(subject).to respond_to :authorization
      expect(subject).to respond_to :authorizationCode
      expect(subject).to respond_to :brand
      expect(subject).to respond_to :brandTid
      expect(subject).to respond_to :cancelId
      expect(subject).to respond_to :capture
      expect(subject).to respond_to :cardBin
      expect(subject).to respond_to :cart
      expect(subject).to respond_to :dateTime
      expect(subject).to respond_to :distributorAffiliation
      expect(subject).to respond_to :iata
      expect(subject).to respond_to :kind
      expect(subject).to respond_to :last4
      expect(subject).to respond_to :nsu
      expect(subject).to respond_to :origin
      expect(subject).to respond_to :refundDateTime
      expect(subject).to respond_to :refundId
      expect(subject).to respond_to :refunds
      expect(subject).to respond_to :requestDateTime
      expect(subject).to respond_to :softDescriptor
      expect(subject).to respond_to :storageCard
      expect(subject).to respond_to :subscription
      expect(subject).to respond_to :threeDSecure
      expect(subject).to respond_to :independentSalesOrganizationID
      expect(subject).to respond_to :tid
      expect(subject).to respond_to :urls
      expect(subject).to respond_to :paymentFacilitatorId
      expect(subject).to respond_to :subMerchant
    end
  end
end
