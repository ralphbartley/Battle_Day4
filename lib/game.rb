class Game

    @game = nil

    attr_reader :player_one, :player_two, :whos_turn, :winner

    def initialize(player_one, player_two)
        @player_one = player_one
        @player_two = player_two
        @whos_turn = player_one.name
    end

    def self.set(game)
        @game = game
    end

    def self.get
        @game
    end

    def attack(player)
        player.hit
        check_hitpoints
        turn
    end

    def turn
        return @whos_turn = @player_two.name if @whos_turn == @player_one.name
        @whos_turn = @player_one.name
    end

    def check_hitpoints
        @winner = @player_two.name if @player_one.hitpoints == 0 
        @winner = @player_one.name if @player_two.hitpoints == 0
    end

end