module MathGame
  class Question
    attr_reader :value1, :value2, :answer

    def initialize
      @value1 = rand(1..20)
      @value2 = rand(1..20)
      @answer = self.value1 + self.value2
    end

  end
end
