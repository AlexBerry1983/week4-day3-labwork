require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )

require_relative( 'models/Student.rb')

#index - read (THIS IS ROUTE 1!)
get '/students' do  #convention is to use a plural
  @students = Student.find_all()
  erb(:index)     #displays stuff to the user / calls the index view
end

#new - create (THIS IS ROUTE 3!)
get '/students/new' do
  erb(:new)
end

#this is route 4
post '/students' do
  @student = Student.new(params)
  @student.save
  redirect to '/students'
end

