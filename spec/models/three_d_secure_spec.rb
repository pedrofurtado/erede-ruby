RSpec.describe Erede::Models::ThreeDSecure do
  let(:model) { described_class.new }

  it { expect(described_class).to be < Erede::Models::Base }

  context 'has defined' do
    it 'api attributes' do
      expect(subject).to respond_to :cavv
      expect(subject).to respond_to :eci
      expect(subject).to respond_to :embedded
      expect(subject).to respond_to :onFailure
      expect(subject).to respond_to :device
      expect(subject).to respond_to :url
      expect(subject).to respond_to :urls
      expect(subject).to respond_to :userAgent
      expect(subject).to respond_to :xid
      expect(subject).to respond_to :threeDIndicator
      expect(subject).to respond_to :directoryServerTransactionId
    end
  end
end
