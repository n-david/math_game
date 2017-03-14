module MathGame
  class Game

    def initialize(num_players)
      @players = []
      num_players.times do |number|
        @players.push(Player.new(number))
      end
      @current_player = 1
    end

    def game_over?
      @players.any? { |player| player.lives == 0 }
    end

    def start
      puts 'Game Started!'
      loop do
        new_question = Question.new
        puts "Player #{@current_player}: What does #{new_question.value1} plus #{new_question.value2} equal?"
        answer = gets.chomp
        if new_question.answer.to_s != answer
          @players[@current_player - 1].lose_life
          puts "Player #{@current_player}: ***************************************noob alert***************************************"
        else
          puts 'correct!'
        end
        puts @current_player
        if game_over?
          @current_player == 1 ? @current_player = 2 : @current_player = 1
          puts "Player #{@current_player} wins with a score of #{@players[@current_player - 1].lives}/3"
          puts '----- GAME OVER -----'
          puts 'Good Bye!'
          break
        end
        puts "P1: #{@players[0].lives}/3 vs P2: #{@players[1].lives}/3"
        puts '----- NEW TURN -----'
        @current_player += 1
        @current_player = 1 if @current_player == @players.length + 1
      end
    end

  end
end
