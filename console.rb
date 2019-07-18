require_relative('./models/student')
require('pry')


Student.delete_all()

student1 = Student.new({
  'first_name' => 'Harry',
  'last_name' => 'Potter',
  'house' => 'Gryffindor',
  'age' => 13
  })
  student1.save()




binding.pry
null
