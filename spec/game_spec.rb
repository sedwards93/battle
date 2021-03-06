require 'game'


describe Game do
  let(:player1) {double(:player1, hp: 60)}
  let(:player2) {double(:player2, hp: 60)}
  subject {Game.new(player1, player2)}

  describe '#damage' do
    it "reduces player HP" do
      expect(player2).to receive(:hp=)
      subject.damage
    end
  end

  describe '#damage' do
    it 'calling damage player for a second time causes player1 reduce health' do
      allow(player2).to receive(:hp=)
      subject.damage
      expect(player1).to receive(:hp=)
      subject.damage
    end
  end

  describe '#player_1' do
    it "returns the first player in the players array" do
      expect(subject.player_1).to eq(player1)
    end
  end

    describe '#player_2' do
      it "returns the last player in the players array" do
        expect(subject.player_2).to eq(player2)
      end
    end

    describe '#attacking_player' do
      it 'first returns player 1' do
        expect(subject.attacking_player).to be(player1)
      end
    end

    describe '#receiving_player' do
      it 'first returns player 2' do
        expect(subject.receiving_player).to be(player2)
      end
    end

    
end