class Player

	def initialize(name)
		@name = name
	end

	attr_reader :name
	attr_writer :pick

	def pick
		@pick
	end
end