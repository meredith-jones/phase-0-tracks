class GuessMyWord

    attr_accessor :secret_word, :letters, :guesses_left, :letter_guess, :board, :letters_guessed, :repeat_guess

# Initialize method: takes a seret word inputted by player 1.
    # Initializes an array to contain letters guessed.
    # Initializes the number of guesses Player 2 has to guess the secret word.

    def initialize(secret_word)
      @secret_word = secret_word
      @letters_guessed = []
      @guesses_left = @secret_word.length * 2
    end

# Game board method: takes secret word, and creates a "board" with a blank space for every letter of the secret word.
    # Will return the board (the string of blank spaces)

    def game_board
      @letters =  @secret_word.split('')
      @board = []
      @letters.map{| letter | @board << " _ "}
      p @board.join
    end
end

# Method for repeat letter guess: runs if user guesses the same letter a 2nd time.
    # Returns a string indicating how many guesses they have left.
      def repeat_guess(letter_guess)
        @letter_guess = letter_guess
        puts "Letters you've guessed thus far:"
        p @letters_guessed
        "You already guessed '#{@letter_guess}'. Guess another letter. You have #{@guesses_left} guesses left."
      end

# Method for correct letter guess: intakes a letter that has been identified as included in the secret word.
    # Decrements letters guessed. Adds that letter to the array of already guessed letters.
    # Checks for all instances of that letter, and fills board in with any instances of the letter in their respective places.
    # Checks to see IF the board is completely filled out, and
        # IF so, displays winning message,
        # ELSE displays letters guessed so far and guesses remaining.

    def correct_guess(letter_guess)
      @letter_guess = letter_guess
      @letters_guessed << @letter_guess
      @guesses_left -= 1
      #find index of letter on secret word
      indices = @letters.each_index.select { |i| @letters[i] == @letter_guess}
      #put the letter on same index of game board
      indices.each{|i| @board[i] = @letter_guess}
      #display game board
      p @board.join
          if @secret_word == @board.join
              puts "That's right! It's #{@secret_word}!!"
              puts "<3 You win! You're awesome!!! <3"
          else
              puts "Letters you've guessed thus far:"
              p @letters_guessed
              puts "Excellent! You have #{@guesses_left} guesses left."
          end
      end

     # method for incorrect letter guess
     def incorrect_guess(letter_guess)
      @letter_guess = letter_guess
      @letters_guessed << @letter_guess
      puts "Letters you've guessed thus far:"
      p @letters_guessed
      @guesses_left -= 1
      puts "There is no '#{@letter_guess}' in the secret word! You have #{@guesses_left} guesses left."
    end

end
# Method for incorrect letter guess: intakes a letter that has been identified as not included in the secret word.      # Adds that letter to the array of letters guessed.
      # Decrements letters guessed.
      # Displays a message saying the letter is not in the secret word, and how many guesses remain.


#DRIVER CODE:

puts "Welcome to the Word Guessing Game"
puts "Player 1: Enter a word!"
secret_word = gets.chomp
30.times{puts "*"}
game = GuessMyWord.new(secret_word)
game.game_board

puts "Player 2: Guess a letter. You have #{game.guesses_left} guesses!"

while game.guesses_left >= 0
      letter_guess = gets.chomp
      if game.letters_guessed.include?(letter_guess)
          puts "Letters you've guessed thus far:"
          puts game.letters_guessed
          puts "You already guessed '#{letter_guess}'. Guess another letter. You have #{game.guesses_left} guesses left."
      elsif secret_word.include?(letter_guess)
        game.correct_guess(letter_guess)
      else
        game.incorrect_guess(letter_guess)
      end
    break if game.board.join == secret_word
end

puts "You lose. You should work on your skills." if game.board.join != secret_word