module MathGame
  class Player
    attr_reader :lives, :number

    def initialize(number)
      @number = number
      @lives = 3
    end

    def lose_life
      @lives -= 1
    end

  end
end
