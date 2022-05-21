RSpec.describe Erede::Models::Address do
  let(:model) { described_class.new }

  it { expect(described_class).to be < Erede::Models::Base }

  context 'has defined' do
    it 'api attributes' do
      expect(subject).to respond_to :address
      expect(subject).to respond_to :addresseeName
      expect(subject).to respond_to :city
      expect(subject).to respond_to :complement
      expect(subject).to respond_to :neighbourhood
      expect(subject).to respond_to :number
      expect(subject).to respond_to :state
      expect(subject).to respond_to :type
      expect(subject).to respond_to :zipCode
    end
  end
end
