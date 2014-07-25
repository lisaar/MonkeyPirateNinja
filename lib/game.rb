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
		return "Draw" if player1.picks == player2.picks
		return player1  if BEATS[normalize(player1.picks)] == normalize(player2.picks)
		player2
	end

	def normalize(picks)
		picks.to_sym
	end
end