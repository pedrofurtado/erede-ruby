RSpec.describe Erede::Models::Iata do
  let(:model) { described_class.new }

  it { expect(described_class).to be < Erede::Models::Base }

  context 'has defined' do
    it 'api attributes' do
      expect(subject).to respond_to :code
      expect(subject).to respond_to :departureTax
      expect(subject).to respond_to :flight
    end
  end
end
