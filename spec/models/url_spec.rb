RSpec.describe Erede::Models::Url do
  let(:model) { described_class.new }

  it { expect(described_class).to be < Erede::Models::Base }

  context 'has defined' do
    it 'api attributes' do
      expect(subject).to respond_to :kind
      expect(subject).to respond_to :url
    end
  end
end
