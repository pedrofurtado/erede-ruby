RSpec.describe Erede::Models::Phone do
  let(:model) { described_class.new }

  it { expect(described_class).to be < Erede::Models::Base }

  context 'has defined' do
    it 'api attributes' do
      expect(subject).to respond_to :ddd
      expect(subject).to respond_to :number
      expect(subject).to respond_to :type
    end
  end
end
