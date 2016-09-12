def hamster_intake()
  puts "Please enter hamster name:"
  name = gets.chomp
  puts "Please enter sleep volume level"
  volume = gets.chomp.to_i
  puts "What color is your hamster?"
  color = gets.chomp
  puts "Is your hamster fit to be adopted? (y/n)"
  adopt = gets.chomp
  puts "How old is your hamster?"
  age = gets.chomp
    if age.empty?
      age = "nil"
    else
      age =  age.to_i
    end

  puts "Hamster name: #{name}"
  puts "Sleep volume: #{volume}"
  puts "Fur color: #{color}"
  puts "Can be adopted: #{adopt}"
  puts "Hamster age: #{age}"

end

hamster_intake()