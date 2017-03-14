module MathGame
  class Question

    attr_reader :question, :value1, :value2, :answer
    # def initialize
    #   @question = `What does #{rand(1..20)} plus #{rand(1..20)} equal?`
    # end

    def make_equation
      @value1 = rand(1..20)
      @value2 = rand(1..20)
      @answer = self.value1 + self.value2
    end

  end
end
