require 'game'

describe Game do
	let(:player1) {double :player1, name: "Lisa"}
	let(:player2) {double :player2, name: "Francisco"}
	let(:game) {Game.new(player1, player2)}
	

	it "has two players" do
		expect(game.players).to eq [player1, player2]
	end

	context 'when playing' do
		it "player one picks monkey, player two picks ninja" do
			allow(player1).to receive(:pick).and_return("monkey")
			allow(player2).to receive(:pick).and_return("ninja")
			expect(game.winner).to eq player1
			
		end

		it "player two picks monkey, player one picks ninja" do
			allow(player2).to receive(:pick).and_return("monkey")
			allow(player1).to receive(:pick).and_return("ninja")
			expect(game.winner).to eq player2
		end

		it "player one picks pirate, player two picks monkey" do
			allow(player1).to receive(:pick).and_return("pirate")
			allow(player2).to receive(:pick).and_return("monkey")
			expect(game.winner).to eq player1
		end

		it "can be a draw" do
			allow(player1).to receive(:pick).and_return("monkey")
			allow(player2).to receive(:pick).and_return("monkey")
			expect(game.winner).to eq "Draw"
		end
	end
end