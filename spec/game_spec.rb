require 'game'


describe Game do
  let(:player1) {double(:player1, hp: 60)}
  let(:player2) {double(:player2, hp: 60)}
  subject {Game.new(player1, player2)}

  describe '#damage' do
    it "reduces player HP" do
      expect(player2).to receive(:hp=)
      subject.damage(player2)
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
end