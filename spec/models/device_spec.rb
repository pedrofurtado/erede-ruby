RSpec.describe Erede::Models::Device do
  let(:model) { described_class.new }

  it { expect(described_class).to be < Erede::Models::Base }

  context 'has defined' do
    it 'api attributes' do
      expect(subject).to respond_to :colorDepth
      expect(subject).to respond_to :deviceType3ds
      expect(subject).to respond_to :javaEnabled
      expect(subject).to respond_to :language
      expect(subject).to respond_to :screenHeight
      expect(subject).to respond_to :screenWidth
    end
  end
end
