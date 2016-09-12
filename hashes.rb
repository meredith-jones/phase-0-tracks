#pseudocode and write a program that will allow an interior designer to enter the details of a given client: the client's name, age, number of children, decor theme, and so on (you can choose your own as long as it's a good mix of string, integer, and boolean data).

#Interior design client handler:

client_info = {}  #initiate client info hash

puts "Welcome to client tracker. Please answer the following questions:"
# Prompt the designer/user for all of this information
    # -Ask user for (the following will be keys in a hash):
    #     -Client name
    #     -client age
    #     -number of children
    #     -any pets?
    #     -decor theme
    #     -allergies?
    #     -favorite color
puts "Enter your client's name:"
client_info[:name] = gets.chomp #Store user input as values in corresponding keys
puts "Enter your client's age:"
client_info[:age] = gets.chomp.to_i  #converts input to appropriate data type
puts "How many children does your client have:"
client_info[:num_kids] = gets.chomp.to_i
puts "Does your client have any pets? (y/n):"
client_info[:pets?] = gets.chomp.downcase
  if client_info[:pets?] == "y" #control flow to convert to boolean
    client_info[:pets?] = true
  else
    client_info[:pets?] = false
  end
puts "What is your client's preferred decor theme?"
client_info[:decor_theme] = gets.chomp
puts "Does your client have any allergies? (y/n):"
client_info[:allergies?] = gets.chomp.downcase
  if client_info[:allergies?] == "y" #control flow to convert to boolean
    client_info[:allergies?] = true
  else
    client_info[:allergies?] = false
  end
puts "What is your client's favorite color?"
client_info[:fav_color] = gets.chomp

puts client_info #Print hash back when questions are all answered

puts "Please review the above data. Do any changes need to be made? (y/n):" #Asks user if any changes need to be made
changes = gets.chomp
if changes == "y" #if yes, ask for the key and value that need to be changed
  puts "please enter the name of the category that needs to be changed:"
  key_change = gets.chomp.to_sym #convert input for key to symbol
  puts "Please enter the answer that needs to be changed:"
  value_change = gets.chomp
  client_info[key_change] = value_change #Take input and update hash
  puts "Thanks for the update. Here is the final info:"
  puts client_info #Print final hash and exit
else
  puts "Here is the final info:"
  puts client_info #Print final hash and exit
end



