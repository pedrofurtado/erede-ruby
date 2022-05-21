RSpec.describe Erede::Models::Authorization do
  let(:model) { described_class.new }

  it { expect(described_class).to be < Erede::Models::Base }

  context 'has defined' do
    it 'api attributes' do
      expect(subject).to respond_to :affiliation
      expect(subject).to respond_to :amount
      expect(subject).to respond_to :authorizationCode
      expect(subject).to respond_to :cardBin
      expect(subject).to respond_to :cardholderName
      expect(subject).to respond_to :dateTime
      expect(subject).to respond_to :installments
      expect(subject).to respond_to :kind
      expect(subject).to respond_to :last4
      expect(subject).to respond_to :nsu
      expect(subject).to respond_to :origin
      expect(subject).to respond_to :reference
      expect(subject).to respond_to :status
      expect(subject).to respond_to :subscription
      expect(subject).to respond_to :softDescriptor
      expect(subject).to respond_to :distributorAffiliation
      expect(subject).to respond_to :tid
    end
  end
end
