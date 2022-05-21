RSpec.describe Erede::Models::Store do
  let(:model) { described_class.new }

  it { expect(described_class).to be < Erede::Models::Base }

  context 'has defined' do
    it 'api attributes' do
      expect(subject).to respond_to :token
      expect(subject).to respond_to :filiation
      expect(subject).to respond_to :environment
    end
  end
end
