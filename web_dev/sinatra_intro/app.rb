# require gems
require 'sinatra'
require 'sqlite3'
require "sinatra/reloader"

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  students = []
  if params[:name]
    sutdents += db.execute("SELECT * FROM students WHERE name = ?", params[:name])
  end
  if params[:id]
    students += db.execute("SELECT * FROM students WHERE id = ?", params[:id])
  end
  if params[:age]
    students += db.execute("SELECT * FROM students WHERE age = ?", params[:age])
  end
  if params[:campus]
    students += db.execute("SELECT * FROM students WHERE campus = ?", params[:campus])
  end
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

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

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# GET route that displays contact address
get '/contact' do
  "Contact us at:<br><br>Fake Inc<br>5241 W. Farther St<br>Chicago, IL 60606"
end

# GET route that takes a name as a query paramater
# and congratulates them
get '/great_job' do
  if params[:name]
    "Good job, #{params[:name]}!"
  else
    "Good job!"
  end
end

# GET route that adds two route parameters
get '/:num1/plus/:num2' do
  result = params[:num1].to_i + params[:num2].to_i
  result.to_s
end
