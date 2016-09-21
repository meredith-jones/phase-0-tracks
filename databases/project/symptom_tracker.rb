
# require gem
require 'sqlite3'

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












#Examples from kitten program:
# def create_kitten(db, name, age)
#   db.execute("INSERT INTO kittens (name, age) VALUES (?, ?)", [name, age])
# end

# 10.times do
#   create_kitten(db, Faker::Name.name, 0)
# end

# explore ORM by retrieving data

# kittens = db.execute("SELECT * FROM kittens;")
# puts kittens.class
# kittens.each do | kitten |
#   puts "#{kitten['name']} is #{kitten['age']}."
# end