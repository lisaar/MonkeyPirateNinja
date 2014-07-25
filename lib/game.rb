class Game
	def initialize(player1, player2)
		@player1 = player1
		@player2 = player2
		@players = [@player1, @player2]
	end

	attr_reader :players, :player1, :player2

	BEATS = {monkey: :ninja, ninja: :pirate, pirate: :monkey
		}

	def winner
		return "Draw" if player1.pick == player2.pick
		return player1  if BEATS[normalize(player1.pick)] == normalize(player2.pick)
		player2
	end

	def normalize(pick)
		pick.to_sym
	end
end