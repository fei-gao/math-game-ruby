class Turn
    def initialize(player)
        puts "-----NEW TURN------"
        q = Question.new 
        puts "#{player.name}:#{q.create_question}"
        answer = gets.chomp.to_i
        if( q.check_answer answer)
            puts "#{player.name}: Yes! You are correct."
        else   
            puts "#{player.name}: Wrong Answer"
            player.lose_life
        end
    end 
end

# p1 = Player.new("p1")
# t = Turn.new(p1)