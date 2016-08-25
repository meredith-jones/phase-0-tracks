# 1. Encrypt
#     -Take in a string
#     -Loop through the string
#       -for each letter in the string
#         -do .next

def encrypt(string)
  index = 0
  encrypted_word = ""
  while index < string.length
    encrypted_word += string[index].next
    index += 1
  end
  puts encrypted_word
end

encrypt("hello")




# 2. Decrypt
#     -Enter alphabet string
#     -Take in a string
#     - Loop through the string
#         -for each of the letters in the string
#           -return corresponding letter to index - 1 of the alphabet



def decrypt(string)
  index = 0
  decrypted_word = ""
  abc = "abcdefghijklmnopqrstuvwxyz"
  while index < string.length
    current_lett = string[index]
    abc_index = abc.index(current_lett) - 1
    decrypted_letter = abc[abc_index]
    decrypted_word += decrypted_letter
    index += 1
  end
  puts decrypted_word
end

decrypt("ifmmp")