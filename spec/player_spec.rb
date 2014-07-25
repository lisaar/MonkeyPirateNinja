require 'player'

describe Player do
	let(:player) {Player.new("Lisa")}
	it "has a name" do
		expect(player.name).to eq "Lisa"
	end

	it 'can make a pick' do
		player.pick = "monkey"
		expect(player.pick).to eq("monkey")
	end
end