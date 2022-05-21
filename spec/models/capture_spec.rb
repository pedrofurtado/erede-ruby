RSpec.describe Erede::Models::Capture do
  let(:model) { described_class.new }

  it { expect(described_class).to be < Erede::Models::Base }

  context 'has defined' do
    it 'api attributes' do
      expect(subject).to respond_to :amount
      expect(subject).to respond_to :dateTime
      expect(subject).to respond_to :nsu
    end
  end
end
