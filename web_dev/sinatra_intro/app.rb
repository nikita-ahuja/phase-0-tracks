# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
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
# a particular student (:id was in the video as an example, the rest are part of the bonus that I came up with)

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# get '/students/:name' do
#   first_name = db.execute("SELECT * FROM students WHERE name=?" [params[:name].downcase.delete(" "))
#   p student.to_s
# end

#The above was an attempt to search students by name. Not successful.

get '/students' do #USE QUERY PARAMETER
  student = db.execute("SELECT * FROM students WHERE name=?" ["#{params[:firstname]} #{params[:lastname]}"])
  student.to_s
end

#localhost:9393/?firstname=Dandre&lastname=Wiegand

#The above was a another attempt to search students by name, but this time with a query parameter. Not successful.

# get '/students/:age' do
#   student = db.execute("SELECT * FROM students WHERE age=?", [params[:age]])
#   student.to_s
# end

# The above was intended approach to search by age did not fully work (particularly with students where there are multiple students per age like 103).

# get '/students/age/:age' do
#   student = db.execute("SELECT * FROM students WHERE age=?", [params[:age]])
#   student.to_s
# end

#the approach above totally worked and can't completely understand why...

get '/students/' do #BONUS using a query parameter for age
  student = db.execute("SELECT * FROM students WHERE age=?", [params[:age]])
  student.to_s
end

#approach above using a query param also completely works if you include /?age=(pick an age) in the URL & I understand why

get '/contact/' do #using Query parameter
  person = params[:person]
  "#{person}'s contact information is #{person}@gmail.com"
end

get '/great_job/' do #using Query parameter
  name = params[:person]
  if name
    "Good job, #{name}!"
  else
    "Good job!"
  end
end

get '/add_two/:num1/:num2' do #using Route parameter
  (params[:num1].to_i + params[:num2].to_i).to_s
end



#PSEUDOCODE...

#if the student is in the database
#select * from students where name =


# Release 1: Research on Your Own

# 1. Is sinatra the only web app library in Ruby? What are some others?

# No! There are many other web application libraries accessible in Ruby. Some others include:

# * Ruby on Rails
# * Merb
# * Nitro
# * Volt
# * Camping
# * Syro
# * Padrino
# * Hyperloop
# * Cuba
# * Hobbit
# * Hyperloop
# * Ramaze
# * Roda

# All of these web app libraries allow your computer to act as the browser (client) and server while you’re developing a web application.

# 1. Are SQLite and the sqlite3 gem your only options for using a database with Sinatra? What are some others?

# Other database options with Sinatra are
# * Datamapper
# * Active Record (maybe used more with rails?)
# * Sequel
# * Mongo?

# 2. What is meant by the term web stack?

# A web stack is the collection of software required for Web Development. Aka, everything you need while you are developing a web app. This will generally include:
# * an operating system (OS)
# * a programming language... obviously
# * a database software (sqlite3, data mapper, etc.)
# * a Web server/framework (sinatra, rails, etc.)

# Essentially, the webstack is your toolkit. It’s all the tools you will need to create your website/app. You can use a prepackaged web stack. LAMP is an example. It is actually called lamp bc of its contents:
# * operating system (OS): Linux
# * programming language: PHP
# * database software: MySQL
# * Web server: Apache

# Another example is MEAN (which according to codingdojo is emerging as one of the industry’s most popular web technology stacks due to its powerful combination of JS based technologues):
# * operating system (OS): ???
# * programming language: Javascript
# * database software: MongoDB
# * Frontend Framework: AngularJS ???
# * (Web???) server platform: Node.js
#     * Web framework: Express.js

