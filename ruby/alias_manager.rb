def fake_name_generator(name)
#Swap the first and last name, and downcase
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
name = ''
#loop to allow user to enter many names
until name == 'quit'
    #Ask user for real name
    puts "Please enter your real name. To exit the program, type 'quit'."

    #store input in name variable
    name = gets.chomp
    #control flow to prevent 'quit' from generating a code name:
    if name == 'quit'
      break
    #invoke fake name generator method with user name:
    else
    fake_name_generator(name)
    end
end