RSpec.describe Erede::Models::Passenger do
  let(:model) { described_class.new }

  it { expect(described_class).to be < Erede::Models::Base }

  context 'has defined' do
    it 'api attributes' do
      expect(subject).to respond_to :email
      expect(subject).to respond_to :name
      expect(subject).to respond_to :phone
      expect(subject).to respond_to :ticket
    end
  end
end
