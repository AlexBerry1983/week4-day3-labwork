require('pry-byebug')
require_relative('../models/Student.rb')
require_relative('../models/House.rb')

Student.delete_all()
House.delete_all()

house1 = House.new({'name' => 'Gryffindor'})
house2 = House.new({'name' => 'Ravenclaw'})
house3 = House.new({'name' => 'Hufflepuff'})
house4 = House.new({'name' => 'Slytherin'})

house1.save
house2.save
house3.save
house4.save

student1 = Student.new({
  'first_name' => "Hermione", 
  'last_name' => "Granger", 
  'age' => 13,
  'house_id' => house1.id
  })

student2 = Student.new({ 
  'first_name' => "Ron", 
  'last_name' => "Weasley", 
  'age' => 14,
  'house_id' => house2.id
  })

student3 = Student.new({
  'first_name' => "Harry", 
  'last_name' => "Potter",
  'age' => 12,
  'house_id' => house3.id
  })

student4 = Student.new({
  'first_name' => "Neville", 
  'last_name' => "Longbottom",
  'age' => 15,
  'house_id' => house4.id
  })

student1.save
student2.save
student3.save
student4.save


binding.pry
nil