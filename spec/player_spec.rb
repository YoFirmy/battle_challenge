require 'player'

describe Player do
  subject(:picard) { described_class.new('Picard') }
  subject(:kirk) { described_class.new('Kirk') }

  describe '#name' do
    it "should return the player name" do
      expect(picard.name).to eq('Picard')
    end
  end

  describe '#hit_points' do
    it 'returns the HP' do
      expect(subject.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(kirk).to receive(:receive_damage)
      picard.attack(kirk)
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { kirk.receive_damage }.to change { kirk.hit_points }.by(-10)
    end
  end
end
