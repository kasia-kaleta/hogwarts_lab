require_relative('../models/student.rb')

Student.delete_all()

student1 = Student.new({
  'first_name' => 'Harry',
  'last_name' => 'Potter',
  'house' => 'Gryffindor',
  'age' => 13
})

student1.save()

student2 = Student.new({
  'first_name' => 'Hermione',
  'last_name' => 'Granger',
  'house' => 'Gryffindor',
  'age' => 12
})
student2.save()

student3 = Student.new({
  'first_name' => 'Zsolt',
  'last_name' => 'Podoba-Szalai',
  'house' => 'Slitherin',
  'age' => 13
})

student3.save()
