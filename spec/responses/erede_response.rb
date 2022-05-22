RSpec.describe Erede::Responses::EredeResponse do
  let(:model) { described_class.new }

  context 'has defined' do
    it 'response attributes' do
      expect(subject).to respond_to :code
      expect(subject).to respond_to :response
    end
  end
end
