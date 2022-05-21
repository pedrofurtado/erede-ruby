RSpec.describe Erede::Models::Refund do
  let(:model) { described_class.new }

  it { expect(described_class).to be < Erede::Models::Base }

  context 'has defined' do
    it 'api attributes' do
      expect(subject).to respond_to :amount
      expect(subject).to respond_to :refundDateTime
      expect(subject).to respond_to :refundId
      expect(subject).to respond_to :status
    end
  end
end
