require 'player'

describe Player do
  subject(:teddy) { Player.new('Teddy') }

  describe '#name' do
    it 'returns the name' do
      expect(teddy.name).to eq 'Teddy'
    end
  end
end