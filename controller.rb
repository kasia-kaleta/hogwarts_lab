require('sinatra')
require('sinatra/reloader')
require('pry-byebug')
require_relative('./models/student.rb')
also_reload('./models/*')


#index
get '/students' do
@students = Student.all()
erb(:index)

end
