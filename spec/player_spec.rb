require 'player'

describe Player do
  subject(:teddy) { Player.new('Teddy') }
  let(:jasper) { Player.new('Jasper') }

  describe '#name' do
    it 'returns the name' do
      expect(teddy.name).to eq 'Teddy'
    end
  end

  describe '#initialize' do
    it 'returns the health' do
      expect(teddy.hp).to eq(60)
    end
  end

  describe '#attack' do
    it 'reduces player hp by 10' do
      expect {teddy.attack(jasper)}.to change{jasper.hp}.by(-10)
    end
  end
end