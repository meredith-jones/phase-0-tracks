def data_gather()
  puts "What is your name?"
  name = gets.chomp
  puts "How old are you?"
  age = gets.chomp.to_i
  puts "What year were you born?"
  birth_year = gets.chomp.to_i
  puts "Do you like garlic bread? (y/n)"
  garlic_preference = gets.chomp
  puts "Would you like to enroll in the company’s health insurance? (y/n)"
  health_insurance = gets.chomp

      if name == "Drake Cula" || name == "Tu Fang"
        is_vamp = "Definitely a vampire"
      elsif (age != 2016 - birth_year) && (garlic_preference == "n") && (health_insurance == "n")
        is_vamp = "Almost certainly a vampire"
      elsif (age != 2016 - birth_year) && ((garlic_preference == "n") || (health_insurance == "n"))
        is_vamp = "Probably a vampire"
      elsif (age == 2016 - birth_year) && ((garlic_preference == "y") || (health_insurance == "y"))
        is_vamp = "Probably not a vampire"
      else
        is_vamp = "Results inconclusive"
      end
puts is_vamp


end

data_gather()
