RSpec.describe Erede::Models::SubMerchant do
  let(:model) { described_class.new }

  it { expect(described_class).to be < Erede::Models::Base }

  context 'has defined' do
    it 'api attributes' do
      expect(subject).to respond_to :mcc
      expect(subject).to respond_to :city
      expect(subject).to respond_to :country
      expect(subject).to respond_to :subMerchantID
      expect(subject).to respond_to :address
      expect(subject).to respond_to :city
      expect(subject).to respond_to :state
      expect(subject).to respond_to :country
      expect(subject).to respond_to :cep
      expect(subject).to respond_to :cnpj
      expect(subject).to respond_to :taxIdNumber
    end
  end
end
