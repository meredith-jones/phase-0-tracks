# Sinatra gives you the ability to write a very simple & succinct code to create a web server
# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter (WAY Number 1)
# To reply to a get call on the / (or the home directory):
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
  # p params shows params
  # name = params[:name] #params name is how you get any data that was entered in the url.
  # if name
  #   "<h1>Hello, #{name}.</h1>"
  #   # http://localhost:9393/?name=Meredith would return Hello, Meredith.
  #   # if you want more than one query parameter (key value pair) you put an & in between them. For example: http://localhost:9393/?name=Meredith&age=31
  # else
  #   "<h1>Hello, you.</h1>"
  # end
end
# At this point, (having just run the hello world, we are having our own computer act as a web server that only we can get to. Opened port 4567, but we are the only ones who can access. Computer is talking to itself.)
# run file on shotgun
# type http://localhost:9393
# see page

# # write a GET route with
# # route parameters (WAY number 2)
get '/about/:person' do
  person = params[:person]
  "<h2>#{person} is a programmer, and #{person} is learning Sinatra.</h2>"
end
# for the above, if I typed http://localhost:9393/about/Meredith, person would be replaced by meredith. 'Meredith' becomes the argument.
# get '/about/:person' do
#   person = params[:person]
#   "#{person} is a programmer, and #{person} is learning Sinatra."
# end

# get '/:person_1/:person_2' do
#   "<h1>#{params[:person_1]} loves #{params[:person_2]} and #{params[:person_2]} loves #{params[:person_1]}</h1>"
# end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# # write a GET route that retrieves
# # a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# RELEASE 0: ADD ROUTES:

# 1. /contact route:
get '/contact/:address' do
  "<h2>Address: #{params[:address]} </h2>"
end

# 2. /great_job route
get '/great_job' do
  name = params[:name]
  if name
    "<h1>Good Job, #{name}!</h1>"
  else
    "<h1>Good Job.</h1>"
  end
end

# 3. /add/:num1/:num2
get '/add/:num1/:num2' do
  num1 = params[:num1]
  num2 = params[:num2]
  total = num1.to_i + num2.to_i
  "#{num1} + #{num2} = #{total}"
end

# 4. Search for and return students between a user-determined age range
get '/students/age/:agelower/:ageupper' do
  students = db.execute("SELECT * FROM students WHERE age>? AND age<?", [params[:agelower], params[:ageupper]])
  results = ""
    students.each do |student|
    results << "Name: #{student['name']}<br>"
    results << "Age: #{student['age']}<br><br>"
  end
  results
end

# RELEASE 1: RESEARCH ON YOUR OWN:

# # 1. Is Sinatra the only web app library in Ruby? What are some others?
#   * Rails: seems like it is the best known
#   * Hanami (formerly Lotus)
#   * Volt
#   * Remaze

# # 2. Are SQLite and the sqlite3 gem your only options for using a database with Sinatra? What are some others?
#   * PostgreSQL
#   * Active Record
#   * Datamapper

# 3. What is meant by the term 'web stack'? Stack is the software components that make up a web application, which typically are:
  # * Database
  # * Operating system
  # * Web server
  # * Programming language
