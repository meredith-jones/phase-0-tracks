#PSEUDOCODE:

#Have player1 enter a word for player2 to try to guess

#Index for user guesses

#Method to show underscores based on how many letters there are in the word.

#Method to handle user guesses
# WHILE guesses <= length of secret word
#User guesses a letter in the word.
    # IF the guessed letter is in the word, show the blank spaces, with the letter in the correct space.
        #User guesses +=1
    # IF the guessed letter is not in the word, show message "No <letter> in this word."
        #User guesses +=1
    # IF the guessed letter has already been guessed, show message "You already guessed <letter>."
    # IF user enters a whole word and it is the correct word, congratulatory message
    # IF user enters a whole word and it is the incorrect word, show message "The word is not <user guess>."
        # User guesses += 1
    # IF user guesses index == secret word length, tell the user they lose because they've exhausted their guesses.