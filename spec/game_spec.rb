require 'game'


describe Game do
  let(:player1) {double(:player1, hp: 60)}
  let(:player2) {double(:player2, hp: 60)}
  subject {Game.new(player1, player2)}

  it '#damage' do
    expect(player2).to receive(:hp=)
    subject.damage(player2)
  end
end