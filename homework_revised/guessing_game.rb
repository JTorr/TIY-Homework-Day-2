class GuessingGame
    def initialize
      @answer = (0..100).to_a.sample
      @tries_left = 5
      @won = false
    end

    def guess(number)
      #Remove 1 from remaining tries
      @tries_left -= 1
      #Evaluate guess
      if number == @answer
        @won = true
      elsif number < @answer
        puts "Your guess is too low"
      else
        puts "Your guess is too high"
      end
    end

    def finished?
      #If there are no tries left or game is won, returns true
      @tries_left.zero? || @won
    end

    def won?
      #makes @won true
      @won
    end
end
