require 'game'

describe Game do
  let(:picard) { double :player }
  let(:kirk) { double :player }

  describe '#attack' do
    it 'damages the player' do
      expect(kirk).to receive(:receive_damage)
      subject.attack(kirk)
    end
  end
end
