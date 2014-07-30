
def computer_guess(answer)
  win = false
  @guess = rand(100)
  while win == false

    if @guess == answer
      puts "You got it!!"
      exit
    elsif @guess > answer
      puts "You guessed #{@guess}. Too high."
      @guess = rand(1..@guess)
    elsif @guess < answer
      puts "You guessed #{@guess}. Too low"
      @guess = rand(@guess..100)
    else
      puts "Invalid choice"
    end
  end
end

computer_guess(44)



def human_guess
  win = false
  answer = rand(100)
  while win == false
    puts "Guess a number between 1 and 100."
    guess = gets.chomp.to_i
    if guess == answer
      puts "You got it!!"
      win = true
    elsif guess > answer
      puts "You guessed #{guess}. Too high."
    elsif guess < answer
      puts "You guessed #{guess}. Too low"
    else
      puts "Invalid choice"
    end
  end
end

#human_guess
