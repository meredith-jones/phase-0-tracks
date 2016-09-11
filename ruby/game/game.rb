# Initialize method: takes a seret word inputted by player 1.
    # Initializes an array to contain letters guessed.
    # Initializes the number of guesses Player 2 has to guess the secret word.

# Game board method: takes secret word, and creates a "board" with a blank space for every letter of the secret word.
    # Will return the board (the string of blank spaces)

# Method for repeat letter guess: runs if user guesses the same letter a 2nd time.
    # Returns a string indicating how many guesses they have left.

# Method for correct letter guess: intakes a letter that has been identified as included in the secret word.
    # Decrements letters guessed. Adds that letter to the array of already guessed letters.
    # Checks for all instances of that letter, and fills board in with any instances of the letter in their respective places.
    # Checks to see IF the board is completely filled out, and
        # IF so, displays winning message,
        # ELSE displays letters guessed so far and guesses remaining.

# Method for incorrect letter guess: intakes a letter that has been identified as not included in the secret word.      # Adds that letter to the array of letters guessed.
      # Decrements letters guessed.
      # Displays a message saying the letter is not in the secret word, and how many guesses remain.
