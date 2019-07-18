require_relative('./models/student')
require_relative('./models/house')
require_relative('./db/seeds')
require('pry')


house1 = House.new({
  'name' => 'Gryffindor',
  'image' =>
'https://vignette.wikia.nocookie.net/harrypotter/images/b/b1/Gryffindor_ClearBG.png'
  })

house2 = House.new({
  'name' => 'Ravenclaw',
  'image' => 'https://vignette.wikia.nocookie.net/harrypotter/images/4/4e/RavenclawCrest.png'
  })

house3 = House.new({
  'name' => 'Hufflepuff',
  'image' => 'https://vignette.wikia.nocookie.net/harrypotter/images/0/06/Hufflepuff_ClearBG.png'
  })

house4 = House.new({
  'name' => 'Slitherin',
  'image' => 'https://vignette.wikia.nocookie.net/harrypotter/images/0/00/Slytherin_ClearBG.png'
  })

  house1.save()
  house2.save()
  house3.save()
  house4.save()


student1 = Student.new({
  'first_name' => 'Harry',
  'last_name' => 'Potter',
  'house_id' => house1.id,
  'age' => 13
})

student1.save()

student2 = Student.new({
  'first_name' => 'Hermione',
  'last_name' => 'Granger',
  'house_id' => house1.id,
  'age' => 12
})
student2.save()

student3 = Student.new({
  'first_name' => 'Zsolt',
  'last_name' => 'Podoba-Szalai',
  'house_id' => house4.id,
  'age' => 13
})

student3.save()



binding.pry
null
