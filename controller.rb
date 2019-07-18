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

#Create
post '/students' do
  @student = Student.new(params)
  @student.save()
  erb(:create)
end

#Show
get '/students/:id' do
  @student = Student.find(params[:id])
  erb(:show)
end
