require "./player"
require "./turn"
require "./question"

class Game
    def initialize
        @player1 = Player.new("P1")
        @player2 = Player.new("P2")
        @isPlayer1 = true
    end

    def start
        puts "-----START GAME------"
        while @player1.lives > 0 && @player2.lives > 0
           if (@isPlayer1)
            Turn.new(@player1)
            puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
            @isPlayer1 = false
        
           else 
            Turn.new(@player2)
            puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
            @isPlayer1 = true
           end
        end
    
        @winner = ''
        @winner_score = 0
        if @player1.lives = 0
            @winner = @player2.name
            @winner_score = @player2.lives 
        else 
            @winner = @player1.name
            @winner_score = @player1.lives 
        end 
        puts "#{@winner} wins with a score of #{@winner_score}/3"
        puts "------GAME OVER------"
        puts "Good bye!"
    end 
end

g = Game.new
g.start
        
    