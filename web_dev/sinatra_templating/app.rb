# require gems
require 'sinatra'
require 'sqlite3'

# this is to link the css sort of
set :public_folder, File.dirname(__FILE__) + '/sta tic'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  # puts data into our template:
  @students = db.execute("SELECT * FROM students")
  erb :home
end
# erb :home accesses html template (erb is a method)

get '/students/new' do
  erb :new_student
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
  # inserts student into database and redirects to home page
end
# All 3 methods of sending data to the server end up in params.
# add static resources
get '/campus' do
  erb :campus
end

get '/campusresults' do
  @campus = db.execute("SELECT * FROM students WHERE campus=(?)", [params['campus']])
  erb :campusresults
end
