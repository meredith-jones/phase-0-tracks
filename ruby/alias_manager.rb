def fake_name_generator(name)
#Swap the first and last name, and downcase
name = 'Meredith Jones'
last_name_first = name.split.reverse.join(' ').downcase
#=> 'Jones Meredith'

# Make strings of vowels and consonants  as a reference when replacing letters:
vowels = 'aeioua'
consonants = 'bcdfghjklmnpqrstvwxyzb'

#Identify vowels and switch them with the next vowel in line
vowel_switch = last_name_first.gsub(/[aeiou]/)  do |v|
v = vowels[vowels.index(v)+1]
end

#Identify consonants and switch them with the next consonant in line
cons_switch = vowel_switch.gsub(/[bcdfghjklmnpqrstvwxyz]/)  do |c|
c = consonants[consonants.index(c)+1]
end

#Output final code name:
puts "Your code name is: #{cons_switch.capitalize}."
end


# #DRIVER CODE
puts "Please enter your real name:"
name = gets.chomp

# puts "would you like to encrypt or decrypt?"
# response = gets.chomp
# if response == "encrypt"
#   puts "enter the password:"
#   password = gets.chomp
#   encrypt(password)
# else
#   puts "enter the password:"
#   password = gets.chomp
#   decrypt(password)
# end