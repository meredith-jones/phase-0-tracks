
# require gem
require 'sqlite3'
require 'date'

# create SQLite3 database
db = SQLite3::Database.new("symptoms.db")
db.results_as_hash = true


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
db.execute(create_table_cmd)


# add a test symptom
db.execute("INSERT INTO symptoms (symptom, date, time_of_day, severity) VALUES ('fatigue', '9-20-16', 'night', 7)")




def add_symptom(db, symptom, date, time_of_day, severity)
  db.execute("INSERT INTO symptoms (symptom, date, time_of_day, severity) VALUES (?, ?, ?, ?)", [symptom, date, time_of_day, severity])
end

# DRIVER CODE:

puts "Please enter a symptom:"
symptom = gets.chomp

current_time = DateTime.now
date = current_time.strftime "%m/%d/%Y"

puts "Please enter time of day (morning/afternoon/evening):"
time_of_day = gets.chomp

puts "Please enter severity level (1-10):"
severity = gets.chomp.to_i

add_symptom(db, symptom, date, time_of_day, severity)

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