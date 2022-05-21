RSpec.describe Erede::Models::Item do
  let(:model) { described_class.new }

  it { expect(described_class).to be < Erede::Models::Base }

  context 'has defined' do
    it 'api attributes' do
      expect(subject).to respond_to :amount
      expect(subject).to respond_to :description
      expect(subject).to respond_to :discount
      expect(subject).to respond_to :freight
      expect(subject).to respond_to :id
      expect(subject).to respond_to :quantity
      expect(subject).to respond_to :shippingType
      expect(subject).to respond_to :type
    end
  end
end
