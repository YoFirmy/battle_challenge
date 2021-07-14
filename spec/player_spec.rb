require 'player'

describe Player do
  subject(:picard) { described_class.new('Picard') }
  
  describe '#name' do
    it "should return the player name" do
      expect(picard.name).to eq('Picard')
    end
  end
end
