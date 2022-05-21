RSpec.describe Erede::Models::Cart do
  let(:model) { described_class.new }

  it { expect(described_class).to be < Erede::Models::Base }

  context 'has defined' do
    it 'api attributes' do
      expect(subject).to respond_to :billing
      expect(subject).to respond_to :consumer
      expect(subject).to respond_to :environment
      expect(subject).to respond_to :iata
      expect(subject).to respond_to :items
      expect(subject).to respond_to :shipping
    end
  end
end
