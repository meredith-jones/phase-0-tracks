# OPERATION KITTEN EXPLOSION!

# talk about Object Relational Mapping (ORM) : how do we take relational data (like the data we've been working with) and use it in an object-oriented language? We want to work with the data from within a scripting program. Also known as object relational management.

# require gems
# a gem is prewritten ruby. Can be used after installed. The sqlite gem does the relational mapping for us. The faker gem lets you create fake data.
require 'sqlite3'
require 'faker'

# create SQLite3 database
# this can take a block if you want it to
db = SQLite3::Database.new("kittens.db")
db.results_as_hash = true

# learn about fancy string delimiters
# ruby has lots of ways to declare a string, without double or single quotes. This is a heredoc - uses <<-TXT for opening quote. The end quote is TXT
# all this prints as part of our string - this is not sql - it is just a string.
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS kittens(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    age INT
  )
SQL

# create a kittens table (if it's not there already)
db.execute(create_table_cmd)

# add a test kitten - this executes the addition of a kitten directly, but the function on line 41 will replace it:
# db.execute("INSERT INTO kittens (name, age) VALUES ('Bob', 10)")

# explore ORM by retrieving data

# kittens = db.execute("SELECT * FROM kittens;")
# puts kittens.class
# kittens.each do | kitten |
#   puts "#{kitten['name']} is #{kitten['age']}."
# end


# add LOOOOTS of kittens!
# so. many. kittens.
#KittenExplosion
def create_kitten(db, name, age)
  db.execute("INSERT INTO kittens (name, age) VALUES (?, ?)", [name, age])
end

10.times do
  create_kitten(db, Faker::Name.name, 0)
end

# explore ORM by retrieving data
# kittens = db.execute("SELECT * FROM kittens")
# kittens.each do |kitten|
#  puts "#{kitten['name']} is #{kitten['age']}"
# end

