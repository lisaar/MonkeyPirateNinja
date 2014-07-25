Feature: Playing
	In order to play Monkey Pirate Ninja
	As a player
	I need to get two players

Scenario: A player can register
	Given I am on the homepage
	When I click "New Game"
	And I enter my name
	When I press "Play!"
	Then I should be ready to play

Scenario: A player is playing
	Given I've registered to play
	When I choose monkey
	Then I should see "RESULTS"