RSpec.describe Erede::Models::Document do
  let(:model) { described_class.new }

  it { expect(described_class).to be < Erede::Models::Base }

  context 'has defined' do
    it 'api attributes' do
      expect(subject).to respond_to :type
      expect(subject).to respond_to :number
    end
  end
end
