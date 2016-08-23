def employee_screening()
  puts "How many employees need to be processed?"
  num_employees = gets.chomp.to_i

  counter = 0
  while counter < num_employees

        puts "What is your name?"
        name = gets.chomp
        puts "How old are you?"
        age = gets.chomp.to_i
        puts "What year were you born?"
        birth_year = gets.chomp.to_i
        puts "Do you like garlic bread? (y/n)"
        garlic_preference = gets.chomp.downcase
        puts "Would you like to enroll in the company’s health insurance? (y/n)"
        health_insurance = gets.chomp.downcase
        allergy = ""
        until allergy == "done"
          puts "Please list allergies: (type 'done' when you're done)"
          allergy = gets.chomp.downcase
          if allergy == "sunshine"
            break
          end
        end

            if name == "Drake Cula" || name == "Tu Fang" || allergy == "sunshine"
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
      puts "Survey results: #{is_vamp}."
      counter += 1
  end
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."

end

employee_screening()
