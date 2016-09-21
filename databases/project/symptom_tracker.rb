
# require gem
require 'sqlite3'
require 'date'

# create SQLite3 database
$db = SQLite3::Database.new("symptoms.db")
$db.results_as_hash = true


create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS symptoms(
    id INTEGER PRIMARY KEY,
    symptom VARCHAR(255),
    date VARCHAR(255),
    time_of_day VARCHAR(255),
    severity INT
  )
SQL

# create a symptoms table (if it's not there already)
$db.execute(create_table_cmd)


# add a test symptom
# db.execute("INSERT INTO symptoms (symptom, date, time_of_day, severity) VALUES ('fatigue', '9-20-16', 'night', 7)")




def add_symptom(db, symptom, date, time_of_day, severity)
  $db.execute("INSERT INTO symptoms (symptom, date, time_of_day, severity) VALUES (?, ?, ?, ?)", [symptom, date, time_of_day, severity])
end

# def view_severity_based_symptoms(severity)
#   severity_symptoms = $db.execute('SELECT * FROM symptoms WHERE severity="#{severity}";')
#   puts "#{severity} symptoms:"
#   severity_symptoms.each do | symptom |
#     puts
#   end
# end

def view_all_symptoms
  symptoms = $db.execute("SELECT * FROM symptoms;")
    symptoms.each do | symptom |
      puts "#{symptom['id']}."
      puts "Symptom: #{symptom['symptom']}"
      puts "Date: #{symptom['date']}"
      puts "Time of day: #{symptom['time_of_day']}"
      puts "Severity: #{symptom['severity']}"
      puts "***********************************************"
    end
end

def view_symptoms_time_of_day(time)
  time_symptoms = $db.execute( <<-SQL
    SELECT * FROM symptoms
    WHERE time_of_day='time';
    SQL
    )
  puts "Symptoms that occur in the #{time}:"
  time_symptoms.each do | symptom |
      puts "#{symptoms['symptom']}"
  end
end

def view_symptoms_specific_date
end

def view_same_symptoms
end

# def update_last_symptom
# end

# def delete_last_entry
# end

# DRIVER CODE:

# Maybe I can wrap this driver code in a loop that lets users choose actions or exit (exit will stop the loop)

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
  puts "Do you want to view ALL symptoms, or view symptoms based on TIME of day (type 'all', or 'time'):"
  input = gets.chomp
  if input == 'all'
    view_all_symptoms
  elsif input == 'time'
    puts "Which time of day would you like to view symptoms for? (type 'morning', 'afternoon', or 'evening')"
    time = gets.chomp
    view_symptoms_time_of_day(time)
  end
end
# Different actions can be:
# Create: enter a symptom,
# Read: view all symptoms, view severe symptoms, view symptoms based on time of day, view all same symptoms, view symptoms from a certain date
# Update: an entry - change the last thing you just added,
# Delete: an entry - remove the most recent entry
puts "Welcome to your Symptom Log!"
puts "Would you like to:"
puts "--> ADD symptoms (type 'add')"
puts "--> VIEW symptoms (type 'view')"
puts "--> EXIT program (type 'exit')"

action = gets.chomp
if action == 'add'
  add
elsif action == 'view'
  view
elsif action == 'exit'
  puts "Thank you for using Symptom Log."
else
  puts "I didn't understand that."
end


# Update last symptom:

# Delete last symptom:

#Examples from kitten program:

# 10.times do
#   create_kitten(db, Faker::Name.name, 0)
# end

# explore ORM by retrieving data

# kittens = db.execute("SELECT * FROM kittens;")
# puts kittens.class
# kittens.each do | kitten |
#   puts "#{kitten['name']} is #{kitten['age']}."
# end