RSpec.describe Erede::Models::Flight do
  let(:model) { described_class.new }

  it { expect(described_class).to be < Erede::Models::Base }

  context 'has defined' do
    it 'api attributes' do
      expect(subject).to respond_to :date
      expect(subject).to respond_to :from
      expect(subject).to respond_to :number
      expect(subject).to respond_to :passenger
      expect(subject).to respond_to :to
    end
  end
end
