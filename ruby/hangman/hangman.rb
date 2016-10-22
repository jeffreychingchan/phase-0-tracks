# HANGMAN PROGRAM

###Pseudo Code###
# ask user 1 to input the secret word into the word guessing game.
# display the blank word with ___________
# user 2 will be allowed the number guess: with the length of the word + 5 additional guesses.  
# ask user 2 to input a letter to guess
# if user guess correctly, display the the letter in the blank  word. ex: _____c_____. Then display "great job, that is a correct guess" and the remainder of guesses availability.
#if not, tell user the guess is incorrect and display the remainder of guesses availability.

# ask user to input letters again, until guesses run out. 

# when user 2 uses all of the guess availability, display "you lose loser!"
#when user 2 is able solve the word, display "EXCELLENT JOB YOU WIN!"

class Hangman
attr_reader :word, :is_over, :status, :guess_count

  
  def initialize(word)
    @word = word
    @guess_count = word.length + 5
    @is_over = false
    @status = "*" * word.length 
  end


  def check_for_letter(guessed_letter)
    
    @word.split('').each_with_index do |word_letter, index|
      
      if word_letter == guessed_letter
        puts "Great Guess. That is correct!"
        @status[index] = guessed_letter
        @guess_count -= 1
        puts "You have #{@guess_count} guesses left."
      end
    end
    
    if !@word.include?(guessed_letter)
      puts "WRONG GUESS! Please try again. "
      @guess_count -= 1
      puts "You have #{@guess_count} guesses left."
    end
  end


  def game_over
    if @status == @word
      puts "WINNER! Great Job!"
      game_over = true
    elsif @guess_count == 0
      puts "You Lose."
      game_over = true
    else
      false
    end
  end

  
end




# DIRVER CODE CODE

puts "Welcome to the Hangman Game Program."
puts "Please input the secret word for your friend to guess."
secret_word = gets.chomp 

hangman = Hangman.new(secret_word)


until hangman.game_over
  p hangman.status
    puts "What letter would you like to guess."
    guessed_letter = gets.chomp
    hangman.check_for_letter(guessed_letter)
end
