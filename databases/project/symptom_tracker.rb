# require gems
require 'sqlite3'
require 'date'

# create SQLite3 database
$db = SQLite3::Database.new("symptoms.db")
$db.results_as_hash = true

# Creates a symptoms table (if it's not there already)
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS symptoms(
    id INTEGER PRIMARY KEY,
    symptom VARCHAR(255),
    date VARCHAR(255),
    time_of_day VARCHAR(255),
    severity INT
  )
SQL

# Invoke above function
$db.execute(create_table_cmd)

# Adds a symptom to the database.
def add_symptom(db, symptom, date, time_of_day, severity)
  $db.execute("INSERT INTO symptoms (symptom, date, time_of_day, severity) VALUES (?, ?, ?, ?)", [symptom, date, time_of_day, severity])
end

# Displays all symptoms in database.
def view_all_symptoms
  symptoms = $db.execute("SELECT * FROM symptoms;")
    symptoms.each do | symptom |
      puts "#{symptom['id']}. #{symptom['symptom']}, Severity: #{symptom['severity']}, #{symptom['date']} in the #{symptom['time_of_day']}"
      puts " "
    end
end

# Takes user input from driver code, and displays info on symptoms that are occurred at a specified time of day.
def view_symptoms_time_of_day(time)
  time_symptoms = $db.execute( <<-SQL
    SELECT symptom FROM symptoms
    WHERE time_of_day="#{time}";
    SQL
    )
  puts "_____________________________"
  puts "Symptoms that occur in the #{time}:"
  time_symptoms.each do | symptom |
      puts "#{symptom['symptom']}"
  end
  puts "_____________________________"
end

# Takes user input from driver code, and displays info on symptoms that are of a specified severity level.
def view_severity_based_symptoms(severity, number, number2)
  severity_symptoms = $db.execute( <<-SQL
    SELECT * FROM symptoms
    WHERE severity >= "#{number}"
    AND severity <= "#{number2}";
    SQL
    )
  puts "_____________________________"
  puts "Here are the symptoms you've listed as #{severity}:"
      severity_symptoms.each do | symptom |
          puts "#{symptom['symptom']}: #{symptom['severity']}"
      end
end

# Takes user input from driver code, and displays info on symptoms that occurred on a specific date.
def view_symptoms_specific_date(day)
    day_symptoms = $db.execute( <<-SQL
    SELECT * FROM symptoms
    WHERE date="#{day}";
    SQL
    )
  puts "_____________________________"
  puts "Symptoms that occurred on #{day}:"
  day_symptoms.each do | symptom |
      puts "#{symptom['symptom']}"
  end
  puts "_____________________________"
end

# Takes user input from driver code, and displays info on symptoms with the same name.
def view_same_symptoms(name)
    same_symptoms = $db.execute( <<-SQL
    SELECT * FROM symptoms
    WHERE symptom="#{name}"
    ORDER BY severity;
    SQL
    )
  puts "____________________________________________"
  puts "Here's info regarding occurances of #{name}:"
  same_symptoms.each do | symptom |
      puts "Severity level: #{symptom['severity']}, occurred #{symptom['date']} #{symptom['time_of_day']}."
  end
  puts "____________________________________________"
end

# Takes user input from driver code, and changes the database based on id, substituting the user's new value.
def edit_symptom(db, id, category, value)
  $db.execute( <<-SQL
    UPDATE symptoms
    SET "#{category}"="#{value}"
    WHERE id="#{id}";
    SQL
    )
end

# Takes user input of id, and deletes entry with corresponding primary key in database:
def delete_symptom(db, id)
    $db.execute( <<-SQL
    DELETE FROM symptoms
    WHERE id="#{id}";
    SQL
    )
end

#***********************************************************
# DRIVER CODE BELOW:
#***********************************************************
# GENERAL ACTION SECTION, TAKING MORE USER INPUT

# Add symptom:
def add
  puts "Please type 'new' to enter a new symptom, or type 'done' if you're done entering symptoms."
  input = gets.chomp

  while input != 'done'
    puts "Please enter a symptom."
    symptom = gets.chomp

    current_time = DateTime.now
    date = current_time.strftime "%m/%d/%Y"

    puts "Please enter time of day (morning/afternoon/evening):"
    time_of_day = gets.chomp

    puts "Please enter severity level (1-10):"
    severity = gets.chomp.to_i

    add_symptom($db, symptom, date, time_of_day, severity)

    puts "Please type 'new' to enter a new symptom, or type 'done' if you're done entering symptoms."
    input = gets.chomp
  end
end

# View symptoms:
def view
  puts "Do you want to:"
  puts "--> view ALL info on all symptoms (type 'all')"
  puts "--> view symptoms based on TIME of day (type 'time')"
  puts "--> view all symptoms from a certain DAY (type 'day')"
  puts "--> view symptoms based on SEVERITY (type 'severity')"
  puts "--> view info on all of the SAME symptoms (type 'same')"
  input = gets.chomp
  if input == 'all'
    view_all_symptoms
  elsif input == 'time'
    puts "Which time of day would you like to view symptoms for? (type 'morning', 'afternoon', or 'evening')"
    time = gets.chomp
    view_symptoms_time_of_day(time)
  elsif input == 'day'
    puts "For which day would you like information? (type a date in the format 'DD/MM/YYYY')"
    day = gets.chomp
    view_symptoms_specific_date(day)
  elsif input == 'severity'
    puts "Would you like to view symptoms you've listed as MILD, MODERATE, or SEVERE? (Type 'mild', 'moderate', or 'severe')"
    severity = gets.chomp
    if severity == 'mild'
      view_severity_based_symptoms(severity, 0, 3)
    elsif severity == 'moderate'
      view_severity_based_symptoms(severity, 4, 6)
    elsif severity == 'severe'
      view_severity_based_symptoms(severity, 7, 10)
    end
  elsif input == 'same'
    puts "Which symptom would you like to view info on? (type the symptom)"
    name = gets.chomp
    view_same_symptoms(name)
  end
end

# Update symptom
def edit
  puts "Here's a list of all the symptoms. Type the id number of the symptom you'd like to edit."
    symptoms = $db.execute("SELECT * FROM symptoms;")
    symptoms.each do | symptom |
      puts "ID #{symptom['id']}: #{symptom['symptom']}, #{symptom['date']}, #{symptom['time_of_day']}, Severity: #{symptom['severity']}"
    end
  edit_id = gets.chomp.to_i
  puts "Do you want to"
  puts "--> update the SYMPTOM (type 'symptom')"
  puts "--> update the TIME OF DAY (type 'time')"
  puts "--> update the SEVERITY (type 'severity')"
  update_category = gets.chomp
  puts "Please type in the new #{update_category}:"
  update_value = gets.chomp
  edit_symptom($db, edit_id, update_category, update_value)
end

# Delete Symptom
def delete
  puts "Here's a list of all the symptoms. Type the id number of the symptom you'd like to delete."
    symptoms = $db.execute("SELECT * FROM symptoms;")
    symptoms.each do | symptom |
      puts "ID #{symptom['id']}: #{symptom['symptom']}, #{symptom['date']}, #{symptom['time_of_day']}, Severity: #{symptom['severity']}"
    end
  delete_id = gets.chomp.to_i
  delete_symptom($db, delete_id)
end

#***********************************************************
#MAIN MENU SECTION

puts "Welcome to your Symptom Log!"

action = ''
until action == 'exit'
    puts "**************************************"
    puts "MAIN MENU:"
    puts "Would you like to:"
    puts "--> ADD symptoms (type 'add')"
    puts "--> VIEW symptoms (type 'view')"
    puts "--> EDIT symptoms (type 'edit')"
    puts "--> DELETE symptoms (type 'delete')"
    puts "--> EXIT program (type 'exit')"
    puts "**************************************"

    action = gets.chomp
    if action == 'add'
      add
    elsif action == 'view'
      view
    elsif action == 'edit'
      edit
    elsif action == 'delete'
      delete
    elsif action == 'exit'
      puts "Thank you for using Symptom Log. Goodbye!"
    else
      puts "I didn't understand that."
    end
end

#test print:
# test = $db.execute("SELECT * FROM symptoms;")
# puts test
# Prints all the data in hashes

# add a test symptom
# db.execute("INSERT INTO symptoms (symptom, date, time_of_day, severity) VALUES ('fatigue', '9-20-16', 'night', 7)")